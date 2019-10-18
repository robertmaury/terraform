variable "region" {}

provider "aws" {
  profile    = "default"
  region     = var.region
}

resource "aws_instance" "pe-xl-core-0" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m5.large"
}

resource "aws_instance" "pe-xl-core-1" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m5.large"
}

resource "aws_instance" "pe-xl-core-2" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m5.large"
}

resource "aws_instance" "pe-xl-core-4" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m5.large"
}

resource "aws_instance" "pe-xl-compiler-0" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m5.large"
}

resource "aws_instance" "pe-xl-compiler-1" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m5.large"
}