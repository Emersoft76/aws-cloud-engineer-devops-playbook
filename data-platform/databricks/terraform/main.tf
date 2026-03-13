terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

provider "databricks" {
  host  = var.databricks_host
  token = var.databricks_token
}

resource "aws_s3_bucket" "data_lake" {
  bucket = var.data_lake_bucket_name

  tags = {
    Name        = "databricks-data-lake"
    Environment = var.environment
    Project     = "aws-cloud-engineer-devops-playbook"
  }
}

resource "aws_s3_object" "bronze_prefix" {
  bucket  = aws_s3_bucket.data_lake.id
  key     = "bronze/"
  content = ""
}

resource "aws_s3_object" "silver_prefix" {
  bucket  = aws_s3_bucket.data_lake.id
  key     = "silver/"
  content = ""
}

resource "aws_s3_object" "gold_prefix" {
  bucket  = aws_s3_bucket.data_lake.id
  key     = "gold/"
  content = ""
}

resource "databricks_cluster" "shared_cluster" {
  cluster_name            = "shared-analytics-cluster"
  spark_version           = var.spark_version
  node_type_id            = var.node_type_id
  autotermination_minutes = 30
  num_workers             = 2

  custom_tags = {
    Environment = var.environment
    Project     = "aws-cloud-engineer-devops-playbook"
  }
}

resource "databricks_notebook" "bronze_to_silver" {
  path     = "/Shared/bronze_to_silver"
  language = "PYTHON"
  source   = "${path.module}/../notebooks/bronze_to_silver.py"
}

resource "databricks_notebook" "silver_to_gold" {
  path     = "/Shared/silver_to_gold"
  language = "PYTHON"
  source   = "${path.module}/../notebooks/silver_to_gold.py"
}
