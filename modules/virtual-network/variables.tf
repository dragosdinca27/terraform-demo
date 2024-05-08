variable "address_space" {
  type = list(string)
}

variable "resource_group_name" {
  type = string
}

variable "vnet-name" {
  type = string
  default = "vnet-clau"
}

variable "location" {
  type = string
}
