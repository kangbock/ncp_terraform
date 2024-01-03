resource "ncloud_server" "kblee_ubuntu_server01" {
  subnet_no                 = ncloud_subnet.kblee_public_subnet01.id
  name                      = "kblee-ubuntu-server01"
  server_product_code       = data.ncloud_server_product.product_2core_8mem.id
  server_image_product_code = data.ncloud_server_image.ubuntu_image.id
  login_key_name            = ncloud_login_key.kblee_login_key.key_name
  depends_on = [ 
    ncloud_network_interface.kblee_ubuntu01_nic 
  ]
}

data "ncloud_server_image" "ubuntu_image" {
  filter {
    name   = "os_information"
    values = ["Ubuntu Server 20.04 (64-bit)"]
  }
}

data "ncloud_server_product" "product_2core_8mem" {
  server_image_product_code = data.ncloud_server_image.ubuntu_image.id

  filter {
    name   = "product_code"
    values = ["SSD"]
    regex  = true
  }

  filter {
    name   = "cpu_count"
    values = ["2"]
  }

  filter {
    name   = "memory_size"
    values = ["8GB"]
  }

    filter {
    name   = "base_block_storage_size"
    values = ["50GB"]
  }
}