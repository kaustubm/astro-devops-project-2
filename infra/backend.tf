terraform {
  backend "s3" {
    bucket = "astro-devops-project-2"
    key    = "EKS/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
