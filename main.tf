terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "nsh-state-new"
    key            = "terraform/key/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-west-2" 

}

variable "environment" {
  description = "Environment for the infrastructure"
  default     = "dev"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-05d38da78ce859165"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "db_instance_class" {
  description = "RDS instance class"
  default     = "db.t3.micro"
}

variable "db_engine" {
  description = "Database engine"
  default     = "mysql"
}

variable "db_allocated_storage" {
  description = "Allocated storage for RDS instance"
  default     = 20
}

output "s3_bucket_name" {
  value = aws_s3_bucket.static_content_bucket.id
}
