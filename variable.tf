variable "project_name" {
  type = string
}

variable "location" {
  type    = string
  default = "Central India"
}

variable "project_name" {
  type = string
}

variable "location" {
  type    = string
  default = "Central India"
}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "private_endpoint_subnet_address" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}

variable "key_vault_sku" {
  type    = string
  default = "standard"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "enable_public_network_access" {
  type    = bool
  default = false
}