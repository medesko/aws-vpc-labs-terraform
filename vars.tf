variable "region" {
  type = string
  description = "aws region to deploy to"
  default = "eu-west-3"
}
variable "main_vpc_cidr" {}
variable "public_subnets" {}
variable "private_subnets" {}