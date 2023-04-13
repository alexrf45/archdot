#!/bin/bash

mkdir remote-state && \
	 cd remote-state && \
	 touch state.tf backend.hcl vars.tf main.tf outputs.tf 

cat << EOF >> state.tf
provider "aws" {
	region = var.region
}

terraform {
	backend = "s3" {
		key = "global/s3/terraform.tfstate"
	}
}
EOF

cat << EOF >> backend.hcl
bucket				 = "tf-state-resume"
region				 = "us-east-1"
dynamodb_table = "terraform-up-and-running-locks"
encrypt        = true
EOF 

cat << EOF >> vars.tf
variable "region" {
	description = "AWS Region"
	type        = string
	default     = "us-east-2"
}

variable "bucket" {
	description = "bucket name"
	type        = string
	default     = "tf-state-resume"
}
EOF
