variable "region" {}
variable "domain" {}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "pe-xl-core-0" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m4.large"
  # availability_zone = "us-west-2c"
  # subnet_id = "${aws_subnet.pe_xl-subnet.id}"
  # user_data = "hostnamectl set-hostname --static pe-xl-core-0${var.domain}"
  security_groups = ["${aws_security_group.pe_xl-sg.name}"]
  key_name        = "puppet"
  user_data       = <<EOT
  #cloud-config
  preserve_hostname: false
  hostname: pe-xl-core-0
  fqdn: pe-xl-core-0${var.domain}
  manage_etc_hosts: true
  EOT
}

resource "aws_instance" "pe-xl-core-1" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m4.large"
  # availability_zone = "us-west-2c"
  # subnet_id = "${aws_subnet.pe_xl-subnet.id}"
  # user_data = "hostnamectl set-hostname --static pe-xl-core-1${var.domain}"
  security_groups = ["${aws_security_group.pe_xl-sg.name}"]
  key_name        = "puppet"
  user_data       = <<EOT
  #cloud-config
  preserve_hostname: false
  hostname: pe-xl-core-1
  fqdn: pe-xl-core-1${var.domain}
  manage_etc_hosts: true
  EOT
}

resource "aws_instance" "pe-xl-core-2" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m4.large"
  # availability_zone = "us-west-2c"
  # subnet_id = "${aws_subnet.pe_xl-subnet.id}"
  # user_data = "hostnamectl set-hostname --static pe-xl-core-2${var.domain}"
  security_groups = ["${aws_security_group.pe_xl-sg.name}"]
  key_name        = "puppet"
  user_data       = <<EOT
  #cloud-config
  preserve_hostname: false
  hostname: pe-xl-core-2
  fqdn: pe-xl-core-2${var.domain}
  manage_etc_hosts: true
  EOT
}

resource "aws_instance" "pe-xl-core-3" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m4.large"
  # availability_zone = "us-west-2c"
  # subnet_id = "${aws_subnet.pe_xl-subnet.id}"
  # user_data = "hostnamectl set-hostname --static pe-xl-core-3${var.domain}"
  security_groups = ["${aws_security_group.pe_xl-sg.name}"]
  key_name        = "puppet"
  user_data       = <<EOT
  #cloud-config
  preserve_hostname: false
  hostname: pe-xl-core-3
  fqdn: pe-xl-core-3${var.domain}
  manage_etc_hosts: true
  EOT
}

# resource "aws_instance" "pe-xl-core-4" {
#   ami           = "ami-01ed306a12b7d1c96"
#   instance_type = "m4.large"
#   # availability_zone = "us-west-2c"
#   # subnet_id = "${aws_subnet.pe_xl-subnet.id}"
#   # user_data = "hostnamectl set-hostname --static pe-xl-core-4${var.domain}"
#   security_groups = ["${aws_security_group.pe_xl-sg.name}"]
#   key_name = "puppet"
#   user_data = <<EOT
#   #cloud-config
#   preserve_hostname: false
#   hostname: pe-xl-core-3
#   fqdn: pe-xl-core-3${var.domain}
#   manage_etc_hosts: true
#   EOT
# }

resource "aws_instance" "pe-xl-compiler-0" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m4.large"
  # availability_zone = "us-west-2c"
  # subnet_id = "${aws_subnet.pe_xl-subnet.id}"
  # user_data = "hostnamectl set-hostname --static pe-xl-compiler-0${var.domain}"
  security_groups = ["${aws_security_group.pe_xl-sg.name}"]
  key_name        = "puppet"
  user_data       = <<EOT
  #cloud-config
  preserve_hostname: false
  hostname: pe-xl-compiler-0
  fqdn: pe-xl-compiler-0${var.domain}
  manage_etc_hosts: true
  EOT
}

resource "aws_instance" "pe-xl-compiler-1" {
  ami           = "ami-01ed306a12b7d1c96"
  instance_type = "m4.large"
  # availability_zone = "us-west-2c"
  # subnet_id = "${aws_subnet.pe_xl-subnet.id}"
  # user_data = "hostnamectl set-hostname --static  pe-xl-compiler-1${var.domain}"
  security_groups = ["${aws_security_group.pe_xl-sg.name}"]
  key_name        = "puppet"
  user_data       = <<EOT
  #cloud-config
  preserve_hostname: false
  hostname: pe-xl-compiler-1
  fqdn: pe-xl-compiler-1${var.domain}
  manage_etc_hosts: true
  EOT
}