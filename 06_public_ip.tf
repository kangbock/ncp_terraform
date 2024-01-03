resource "ncloud_public_ip" "kblee_ubuntu01_pip" {
    server_instance_no = ncloud_server.kblee_ubuntu_server01.id
}