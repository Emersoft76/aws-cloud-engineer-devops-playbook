provider "aws" {
  region = var.aws_region
}

resource "aws_cloudfront_distribution" "cdn_distribution" {

  enabled = true

  origin {

    domain_name = var.origin_domain
    origin_id   = "origin-app"

    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "https-only"
    }

  }

  default_cache_behavior {

    target_origin_id       = "origin-app"
    viewer_protocol_policy = "redirect-to-https"

    allowed_methods = [
      "GET",
      "HEAD"
    ]

    cached_methods = [
      "GET",
      "HEAD"
    ]

    forwarded_values {

      query_string = false

      cookies {
        forward = "none"
      }

    }

  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

}
