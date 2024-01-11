resource "ncloud_init_script" "server01_script" {
  name    = "server01-script"
  content = "${file("server01_script.sh")}"
}