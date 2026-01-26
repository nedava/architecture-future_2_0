environment = "dev"
zone = "ru-central1-a"

vm_1_name = "test-vm-1"
vm_2_name = "test-vm-2"

vm_1_resources = {
  cores  = 2
  memory = 2
}

vm_2_resources = {
  cores  = 4
  memory = 4
}

disk_size = 15
disk_type = "network-hdd"

network_name = "network1"
subnet_name  = "subnet1"
subnet_cidr  = "192.168.10.0/24"

ubuntu_image_family = "ubuntu-2204-lts"
meta_file_path      = "meta.txt"