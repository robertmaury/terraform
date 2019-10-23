 resource "aws_route53_record" "pe-xl-core-0" {
  zone_id = "ZKNUL8K5DZ7SD"
  name    = "pe-xl-core-0.rmaurydemo.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.pe-xl-core-0.public_ip}"]
}

 resource "aws_route53_record" "pe-xl-core-1" {
  zone_id = "ZKNUL8K5DZ7SD"
  name    = "pe-xl-core-1.rmaurydemo.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.pe-xl-core-1.public_ip}"]
}

 resource "aws_route53_record" "pe-xl-core-2" {
  zone_id = "ZKNUL8K5DZ7SD"
  name    = "pe-xl-core-2.rmaurydemo.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.pe-xl-core-2.public_ip}"]
}

 resource "aws_route53_record" "pe-xl-core-3" {
  zone_id = "ZKNUL8K5DZ7SD"
  name    = "pe-xl-core-3.rmaurydemo.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.pe-xl-core-3.public_ip}"]
}

 resource "aws_route53_record" "pe-xl-compiler-0" {
  zone_id = "ZKNUL8K5DZ7SD"
  name    = "pe-xl-compiler-0.rmaurydemo.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.pe-xl-compiler-0.public_ip}"]
}

 resource "aws_route53_record" "pe-xl-compiler-1" {
  zone_id = "ZKNUL8K5DZ7SD"
  name    = "pe-xl-compiler-1.rmaurydemo.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.pe-xl-compiler-1.public_ip}"]
}