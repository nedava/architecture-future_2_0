# Получение образа Ubuntu
data "yandex_compute_image" "ubuntu" {
  family = var.ubuntu_image_family
}

# Создание дисков
resource "yandex_compute_disk" "boot-disk-1" {
  name     = "boot-disk-1"
  type     = var.disk_type
  zone     = var.zone
  size     = var.disk_size
  image_id = data.yandex_compute_image.ubuntu.image_id
}

resource "yandex_compute_disk" "boot-disk-2" {
  name     = "boot-disk-2"
  type     = var.disk_type
  zone     = var.zone
  size     = var.disk_size
  image_id = data.yandex_compute_image.ubuntu.image_id
}

# Создание сети и подсети
resource "yandex_vpc_network" "network-1" {
  name = var.network_name
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = var.subnet_name
  zone           = var.zone
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = [var.subnet_cidr]
}

# Создание виртуальных машин
resource "yandex_compute_instance" "vm-1" {
  name = var.vm_1_name

  resources {
    cores  = var.vm_1_resources.cores
    memory = var.vm_1_resources.memory
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk-1.id
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    user-data = file(var.meta_file_path)
  }
}

resource "yandex_compute_instance" "vm-2" {
  name = var.vm_2_name

  resources {
    cores  = var.vm_2_resources.cores
    memory = var.vm_2_resources.memory
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk-2.id
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    user-data = file(var.meta_file_path)
  }
}