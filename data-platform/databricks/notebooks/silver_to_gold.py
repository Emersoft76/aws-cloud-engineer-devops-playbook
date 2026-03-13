# Databricks notebook source
from pyspark.sql import SparkSession
from pyspark.sql.functions import count

spark = SparkSession.builder.getOrCreate()

silver_path = "s3://emersoft76-databricks-data-lake-dev/silver/customers"
gold_path = "s3://emersoft76-databricks-data-lake-dev/gold/customer_summary"

df = spark.read.parquet(silver_path)

gold_df = (
    df.groupBy("customer_name")
      .agg(count("*").alias("record_count"))
)

gold_df.write.mode("overwrite").parquet(gold_path)
print("Silver to Gold pipeline completed successfully.")
