module "vpc" {

  source = "../../modules/vpc"

}

module "eks" {

  source = "../../modules/eks"

}

module "cloudfront" {

  source = "../../modules/cloudfront"

}
