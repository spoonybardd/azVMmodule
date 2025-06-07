# virtual machine variables
variable "vm_name" { type = string }
variable "location" { type = string }
variable "resource_group_name" { type = string }
variable "vm_size" { type = string }
variable "admin_username" { type = string }
variable "admin_password" { type = string }
variable "subnet_id" { type = string }

# operating system variables
variable "os_offer" { type = string }
variable "os_sku" { type = string }
variable "os_version" { type = string }

# resource tags
variable "tags" {
  type    = map(string)
  default = {}
}
