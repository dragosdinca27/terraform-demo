
variable "location" {
  type = string
}

variable "vnet-address-space" {
  type = list(string)
}

variable "subnet-name" {
  type = string
}

variable "subnet-address" {
  type = list(string)
}

variable "security_rules" {}