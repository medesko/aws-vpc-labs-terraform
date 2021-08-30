# Creating VPC here  
# Defining the CIDR block use 10.0.0.0/24 for demo
resource "aws_vpc" "Main" {                
  cidr_block       = var.main_vpc_cidr    
  instance_tenancy = "default"
}
# Creating Internet Gateway
# vpc_id will be generated after we create VPC
resource "aws_internet_gateway" "IGW" {    
  vpc_id =  aws_vpc.Main.id               
}
# Creating Public Subnets
# CIDR block of public subnets
resource "aws_subnet" "publicsubnets" {    
  vpc_id =  aws_vpc.Main.id
  cidr_block = "${var.public_subnets}"       
}
# CIDR block of private subnets
resource "aws_subnet" "privatesubnets" {
  vpc_id =  aws_vpc.Main.id
  cidr_block = "${var.private_subnets}"          
}