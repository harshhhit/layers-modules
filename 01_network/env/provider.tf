terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.68.0"
    }
  }

  backend "s3" {
    bucket         = "greenbluebucketblue-green" #bucket name 
    key            = "terraform.tfstate"  # is the location in the bucket where the tf files are stored
    region         = "us-east-1" # Change to your preferred region
    encrypt        = true
    dynamodb_table = "terraform_locks" # Optional, enables state locking
  }

  required_version = ">= 1.5.0"
}
