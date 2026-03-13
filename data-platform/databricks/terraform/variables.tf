variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "data_lake_bucket_name" {
  type    = string
  default = "emersoft76-databricks-data-lake-dev"
}

variable "databricks_host" {
  type        = string
  description = "Databricks workspace URL"
}

variable "databricks_token" {
  type        = string
  description = "Databricks personal access token"
  sensitive   = true
}

variable "spark_version" {
  type    = string
  default = "13.3.x-scala2.12"
}

variable "node_type_id" {
  type    = string
  default = "i3.xlarge"
}
