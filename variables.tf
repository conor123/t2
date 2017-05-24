variable "access_key" {}

variable "secret_key" {}
 
variable "region" {
  default = "eu-west-1"
}

output "ip" {
  value = "${aws_instance.example.public_ip}"
}
