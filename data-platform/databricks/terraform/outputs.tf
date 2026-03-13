output "data_lake_bucket_name" {
  value = aws_s3_bucket.data_lake.bucket
}

output "cluster_name" {
  value = databricks_cluster.shared_cluster.cluster_name
}

output "bronze_notebook_path" {
  value = databricks_notebook.bronze_to_silver.path
}

output "silver_notebook_path" {
  value = databricks_notebook.silver_to_gold.path
}
