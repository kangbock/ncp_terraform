# resource "ncloud_vpc" "kblee-vpc" {
#  ipv4_cidr_block = "10.0.0.0/16"
# }

data "ncloud_vpc" "msp" {
  id = var.vpc_no
}