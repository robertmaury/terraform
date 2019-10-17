#resource "aws_vpc" "main" {
#  cidr_block = "10.0.0.0/16"
#}

variable "region" {}

provider "aws" {
  profile    = "default"
  region     = var.region
}

resource "aws_instance" "example" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m4.large"

  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }
}

#resource "aws_eip" "ip" {
#    vpc = false
#    instance = aws_instance.example.id
#}

