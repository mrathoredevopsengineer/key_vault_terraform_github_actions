variable "project_name" {
  type = string
}

variable "location" {
  type    = string
  default = "Central India"
}


variable "sql_admin_username" {
  type = string
  sensitive = true
}

variable "sql_admin_password" {
  type = string
  sensitive = true
}