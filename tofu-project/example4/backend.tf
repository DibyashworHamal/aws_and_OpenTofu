terraform {
    backend "s3" {
        bucket = "dip-tofu-bucket"
        key = "terrform/backend"
        region = "us-east-1"
    }
}
