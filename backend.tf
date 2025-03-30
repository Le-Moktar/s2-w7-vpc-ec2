terraform {
  backend "s3" {
    bucket = "wm-w7-terraformstate-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}