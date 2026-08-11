
rg = {
  rg1 = {
    name     = "rg-tanmoy"
    location = "Central India"
  }
}


vnet = {
  vnet1 = {
    virtual_network_name = "vnet-tanu"
    location             = "Central India"
    resource_group_name  = "rg-tanmoy"
    address_space        = ["10.0.0.0/16"]
  }
}


subnet = {
  subnet1 = {
    subnet_name          = "frontend-subnet"
    resource_group_name  = "rg-tanmoy"
    virtual_network_name = "vnet-tanu"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet_name          = "backend subnet"
    resource_group_name  = "rg-tanmoy"
    virtual_network_name = "vnet-tanu"
    address_prefixes     = ["10.0.2.0/24"]
  }

  subnet3 = {
    subnet_name          = "database-subnet"
    resource_group_name  = "rg-tanmoy"
    virtual_network_name = "vnet-tanu"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

public_ip = {
  pip1 = {
    pip_name            = "frontend-public_ip"
    resource_group_name = "rg-tanmoy"
    location            = "Central India"
    allocation_method   = "Static"
  }
  pip2 = {
    pip_name            = "backend-public_ip"
    resource_group_name = "rg-tanmoy"
    location            = "Central India"
    allocation_method   = "Static"
  }

  pip3 = {
    pip_name            = "database-public_ip"
    resource_group_name = "rg-tanmoy"
    location            = "Central India"
    allocation_method   = "Static"
  }
}

virtual_machine = {
  vm1 = {
    nic_name                      = "frontend_nic"
    location                      = "Central India"
    resource_group_name           = "rg-tanmoy"
    private_ip_address_allocation = "Dynamic"
    vm_name                       = "vm-krish"
    vm_size                       = "Standard_DS1_v2"
    admin_username                = "testadmin"
    admin_password                = "Password1234"
    subnet_name                   = "frontend_subnet"
    pip_name                      = "frontend-public_ip"
    virtual_network_name          = "vnet-tanu"
  }

  vm2 = {
    nic_name             = "backend_nic"
    location             = "Central India"
    resource_group_name  = "rg-tanmoy"
    vm_name              = "vm-lalla"
    vm_size              = "Standard_DS1_v3"
    admin_username       = "testadmin"
    admin_password       = "Password1234!"
    subnet_name          = "backend_subnet"
    pip_name             = "backend-public_ip"
    virtual_network_name = "vnet-tanu"
  }

  vm3 = {
    nic_name                      = "database_nic"
    location                      = "Central India"
    resource_group_name           = "rg-tanmoy"
    private_ip_address_allocation = "Dynamic"
    vm_name                       = "vm-database"
    vm_size                       = "Standard_DS1_v2"
    admin_username                = "testadmin"
    admin_password                = "Password1234"
    subnet_name                   = "database-subnet"
    pip_name                      = "database-public_ip"
    virtual_network_name          = "vnet-tanu"
  }
}