module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rg
}
module "vnet" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_virtual_network"
  vnet       = var.vnet
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnet
}

module "public_ip" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_public_ip"
  public_ip  = var.public_ip
}

module "virtual_machine" {
  depends_on      = [module.subnet, module.public_ip]
  source          = "../../modules/azurerm_virtual_machine"
  virtual_machine = var.virtual_machine
}