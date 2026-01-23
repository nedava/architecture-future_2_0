variable "environment" {
  description = "Окружение (dev, stage, prod)"
  type        = string
  default     = "dev"
}

variable "zone" {
  description = "Зона доступности Yandex Cloud"
  type        = string
  default     = "ru-central1-a"
}

variable "vm_1_name" {
  description = "Имя первой виртуальной машины"
  type        = string
  default     = "test-vm-1"
}

variable "vm_2_name" {
  description = "Имя второй виртуальной машины"
  type        = string
  default     = "test-vm-2"
}

variable "vm_1_resources" {
  description = "Ресурсы для VM-1 (cores, memory)"
  type = object({
    cores  = number
    memory = number
  })
  default = {
    cores  = 2
    memory = 2
  }
}

variable "vm_2_resources" {
  description = "Ресурсы для VM-2 (cores, memory)"
  type = object({
    cores  = number
    memory = number
  })
  default = {
    cores  = 4
    memory = 4
  }
}

variable "disk_size" {
  description = "Размер диска в ГБ"
  type        = number
  default     = 15
}

variable "disk_type" {
  description = "Тип диска"
  type        = string
  default     = "network-hdd"
}

variable "network_name" {
  description = "Имя сети"
  type        = string
  default     = "network1"
}

variable "subnet_name" {
  description = "Имя подсети"
  type        = string
  default     = "subnet1"
}

variable "subnet_cidr" {
  description = "CIDR блок для подсети"
  type        = string
  default     = "192.168.10.0/24"
}

variable "ubuntu_image_family" {
  description = "Семейство образов Ubuntu"
  type        = string
  default     = "ubuntu-2204-lts"
}

variable "meta_file_path" {
  description = "Путь к файлу с метаданными"
  type        = string
  default     = "meta.txt"
}