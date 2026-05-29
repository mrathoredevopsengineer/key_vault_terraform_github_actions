variable "project_name" {
  type = string
}

variable "location" {
  type    = string
  default = "Central India"
}

variable "resource_type" {
  type = string
}

variable "sql_admin_username" {
  type = string
  sensitive = true
}

variable "sql_admin_password" {
  type = string
  sensitive = true
}