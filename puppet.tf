#resource "aws_vpc" "main" {
#  cidr_block = "10.0.0.0/16"
#}

variable "region" {}

provider "aws" {
  profile    = "default"
  region     = var.region
}

resource "aws_vpc" "pe_xl-vpc" {
  cidr_block = "10.0.0.0/16"
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

resource "aws_security_group" "pe_xl-sg" {
  description = "Puppet Network Flow"
  name        = "pe_xl-sg"
  vpc_id      = "pe_xl-vpc"

  # egress {
  #   from_port   = 0
  #   to_port     = 0
  #   protocol    = "-1"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }

  # ingress {
  #   from_port   = 1
  #   to_port     = 1
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }

  # ingress {
  #   from_port = 0
  #   to_port   = 0
  #   protocol  = "-1"
  #   self      = "True"
  # }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8140
    to_port     = 8140
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8170
    to_port     = 8170
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8123
    to_port     = 8123
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8142
    to_port     = 8142
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8143
    to_port     = 8143
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 4433
    to_port     = 4433
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#resource "aws_eip" "ip" {
#    vpc = false
#    instance = aws_instance.example.id
#}

