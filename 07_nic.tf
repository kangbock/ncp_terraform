resource "ncloud_network_interface" "kblee_ubuntu01_nic" {
    name                  = "kblee-ubuntu01-nic"
    subnet_no             = ncloud_subnet.kblee_public_subnet01.id
    private_ip            = "10.0.240.6"
    access_control_groups = [ncloud_vpc.vpc.default_access_control_group_no]
}