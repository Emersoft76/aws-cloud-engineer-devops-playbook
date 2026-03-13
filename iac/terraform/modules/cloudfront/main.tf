resource "aws_cloudfront_distribution" "cdn" {

  enabled = true

  origin {

    domain_name = var.origin_domain

    origin_id = "origin1"

  }

  default_cache_behavior {

    target_origin_id = "origin1"

    viewer_protocol_policy = "redirect-to-https"

  }

}
