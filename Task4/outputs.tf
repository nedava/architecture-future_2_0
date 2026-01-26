output "internal_ip_address_vm_1" {
  description = "Внутренний IP адрес первой виртуальной машины"
  value       = yandex_compute_instance.vm-1.network_interface.0.ip_address
}

output "internal_ip_address_vm_2" {
  description = "Внутренний IP адрес второй виртуальной машины"
  value       = yandex_compute_instance.vm-2.network_interface.0.ip_address
}

output "external_ip_address_vm_1" {
  description = "Внешний IP адрес первой виртуальной машины"
  value       = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}

output "external_ip_address_vm_2" {
  description = "Внешний IP адрес второй виртуальной машины"
  value       = yandex_compute_instance.vm-2.network_interface.0.nat_ip_address
}

output "vm_1_id" {
  description = "ID первой виртуальной машины"
  value       = yandex_compute_instance.vm-1.id
}

output "vm_2_id" {
  description = "ID второй виртуальной машины"
  value       = yandex_compute_instance.vm-2.id
}

output "network_id" {
  description = "ID созданной сети"
  value       = yandex_vpc_network.network-1.id
}

output "subnet_id" {
  description = "ID созданной подсети"
  value       = yandex_vpc_subnet.subnet-1.id
}

output "disk_ids" {
  description = "ID созданных дисков"
  value = {
    disk_1 = yandex_compute_disk.boot-disk-1.id
    disk_2 = yandex_compute_disk.boot-disk-2.id
  }
}