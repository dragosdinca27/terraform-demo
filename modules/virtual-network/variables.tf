variable "vnet-address-space" {
  type = list(string)
}

variable "resource_group_name" {
  type = string
}

variable "vnet-name" {
  type    = string
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

variable "security_rules" {
  type = list(object({
    priority  = number
    name      = string
    direction = optional(string, "Inbound")
    access    = optional(string, "Allow")
    protocol  = optional(string, "Tcp")

    source_port_range = optional(string)

    destination_port_range     = optional(string)
    source_address_prefix      = optional(string)
    destination_address_prefix = optional(string)
  }))
  default = []
}
