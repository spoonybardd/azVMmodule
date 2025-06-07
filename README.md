# azVMmodule

Resusable Terraform module to deploy and Azure Windows virtual machine

## Usage

```hcl
module "vm" {
  source = "git::ssh://git@your-org/terraform-modules-vm.git?ref=v1.0.0"

  vm_name                = "vm-demo-01"
  location               = "eastus"
  resource_group_name    = azurerm_resource_group.main.name
  vm_size                = "Standard_DS2_v2"
  admin_username         = "adminuser"
  admin_password         = "**********"
  subnet_id              = azurerm_subnet.main.id
  os_offer               = "WindowsServer"
  os_sku                 = "2022-Datacenter"
  os_version             = "latest"

  tags = {
    environment = "dev"
    owner       = "terraform"
  }
}
