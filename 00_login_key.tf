resource "ncloud_login_key" "kblee_login_key" {
  key_name = "kblee-login-key"
}

resource "local_file" "ssh_key" {
  filename = "${ncloud_login_key.kblee_login_key.key_name}.pem"
  content = ncloud_login_key.kblee_login_key.private_key
}