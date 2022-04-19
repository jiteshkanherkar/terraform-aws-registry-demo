variable "cidr" {
    description = "VPC cidr block. Example: 10.0.0.0/16"
}
variable "env" {
    description = "environment"
}
variable "access_key" {
    description = "AWS access key"
}
variable "secret_key" {
    description = "AWS secret key"
}
variable "aws_region" {
    description = "AWS region"
    default = "ap-south-1"
}
variable "availability_zone" {
    description = "AWS availability zone"
    default = "ap-south-1_1a"
}
