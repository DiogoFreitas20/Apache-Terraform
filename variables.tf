variable "key_name" {
  default = "GRSI-KEY"
}

variable "tags" {
  type = map(string)
  default = {
    Ano = "2020"
    Curso = "TIIGR"
    Name = "TIIGR"
  }
}

variable "volume_tags" {
  type = map(string)
  default = {
    Ano = "2020"
    Curso = "TIIGR"
  }
}

variable "sec_group_name" {
  default = "Webapp Security Group"
}

variable "sec_group_description" {
  default = "Webapp Security Group - allow 22, 80 and 8080"
}
variable "user_data" {
  default = "./cloud-config.sh"
}

variable "volume_size" {
  default = 30
}

variable "ip_list" {
  description = "Allowed IPs"
  type = list(string)
  default = [
    "78.29.170.44/32",
  ]
}

variable "port_list" {
  description = "Allowed ports"
  type = list(number)
  default = [
    22,
    80,
    8080,
  ]
}
