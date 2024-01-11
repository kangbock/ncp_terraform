data "ncloud_root_password" "default" {
  server_instance_no = ncloud_server.kblee_ubuntu_server01.instance_no
  private_key = ncloud_login_key.kblee_login_key.private_key
}

output "server01-pw" {
  sensitive = true
  value = data.ncloud_root_password.default.root_password
  # Sensitive data output
  # >> terraform output server01-pw
}

output "server01-pip" {
  value = ncloud_public_ip.kblee_ubuntu01_pip.public_ip
}