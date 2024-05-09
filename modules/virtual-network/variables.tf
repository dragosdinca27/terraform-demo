variable "vnet-address-space" {
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
variable "subnet-address" {
  type = list(string)
}

variable "subnet-name" {
  type = string
}

variable "priority-port" {
  type = map
  default = {
    100 : "80"
    101 : "90"
  }

}
