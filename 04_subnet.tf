resource "ncloud_subnet" "kblee_public_subnet01" {
  name = "kblee-public-subnet01"
  vpc_no         = data.ncloud_vpc.msp.id
  subnet         = "10.0.240.0/24"
  zone           = "KR-2"
  network_acl_no = ncloud_network_acl.kblee_nacl.id
  subnet_type    = "PUBLIC"
}