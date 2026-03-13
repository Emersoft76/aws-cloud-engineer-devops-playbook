# Databricks notebook source
from pyspark.sql import SparkSession
from pyspark.sql.functions import col, trim, current_timestamp

spark = SparkSession.builder.getOrCreate()

bronze_path = "s3://emersoft76-databricks-data-lake-dev/bronze/customers.csv"
silver_path = "s3://emersoft76-databricks-data-lake-dev/silver/customers"

df = (
    spark.read.option("header", "true")
    .csv(bronze_path)
)

cleaned_df = (
    df.withColumn("customer_id", trim(col("customer_id")))
      .withColumn("customer_name", trim(col("customer_name")))
      .withColumn("email", trim(col("email")))
      .withColumn("processed_at", current_timestamp())
)

cleaned_df.write.mode("overwrite").parquet(silver_path)
print("Bronze to Silver pipeline completed successfully.")
