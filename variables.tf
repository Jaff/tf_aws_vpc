
provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "${var.aws_region}"
}

variable "name" { default = "rovi-test-vpc" }
variable "cidr" { default = "10.0.0.0/16" }
variable "public_subnets" { default = "10.0.101.0/24,10.0.102.0/24,10.0.103.0/24" }
variable "private_subnets" { default = "10.0.1.0/24,10.0.2.0/24,10.0.3.0/24" }
variable "azs" { default = "us-west-2a,us-west-2b,us-west-2c" }
variable "enable_dns_hostnames" {
  description = "should be true if you want to use private DNS within the VPC"
  default = false
}
variable "enable_dns_support" {
  description = "should be true if you want to use private DNS within the VPC"
  default = false
}
