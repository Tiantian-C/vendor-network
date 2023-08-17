/*the entry point,describe what provider we are using 
and where we are getting our terraform state from
 and give terraform everything it needs to know to excute its code*/
/*WE USE TERRAFORM VODE TO CREATE AWS INFRASTRUCTURE*/
terraform {
    required_providers {
        aws = {
            source ="hashicorp/aws"
            version = "~> 4.0"
        }
    }
    backend "s3" {} //where our Terraform state is
}

provider "aws"{
    region = "${var.aws_region}"
}
