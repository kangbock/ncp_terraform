resource "ncloud_network_acl" "kblee_nacl" {
   vpc_no      = data.ncloud_vpc.msp.id
   name        = "kblee-public-nacl"
   description = "for test"
 }

resource "ncloud_network_acl_rule" "kblee_nacl_rule" {
  network_acl_no    = ncloud_network_acl.kblee_nacl.id

  inbound {
    priority    = 100
    protocol    = "TCP"
    rule_action = "ALLOW"
    ip_block    = var.myip
    port_range  = "22"
  }

  inbound {
    priority    = 198
    protocol    = "TCP"
    rule_action = "ALLOW"
    ip_block    = "0.0.0.0/0"
    port_range  = "443"
  }

  outbound {
    priority    = 199
    protocol    = "TCP"
    rule_action = "ALLOW"
    ip_block    = "0.0.0.0/0"
    port_range  = "80"
  }
}