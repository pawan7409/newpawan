rg = {
  rg1 = {
    name     = "rg-pawan"
    location = "East us"
  }
}
virtualNetworks = {
  vnet01 = {
    name                = "vnet01"
    location            = "East us"
    resource_group_name = "rg-pawan"
    address_space       = ["10.0.0.0/16"]
  }
  vnet02 = {
    name                = "vnet02"
    location            = "East us"
    resource_group_name = "rg-pawan"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet01 = {
    subnet_name          = "subnet01"
    resource_group_name  = "rg-pawan"
    virtual_network_name = "vnet01"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet02 = {
    subnet_name          = "subnet02"
    resource_group_name  = "rg-pawan"
    virtual_network_name = "vnet02"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
publicip = {
  pip1 = {
    ipname              = "pip1"
    resource_group_name = "rg-pawan"
    location            = "East us"


  }
  pip2 = {
    ipname              = "pip2"
    resource_group_name = "rg-pawan"
    location            = "East us"


  }
}
nsg = {
  nsg = {
    name                 = "nsg34"
    location             = "East us"
    resource_group_name  = "rg-pawan"
    ipname               = "pip1"
    subnetname           = "subnet1"
    virtual_network_name = "vnet01"
    resource_group_name  = "pawan-rg"


  }

}
sg = {
  sg1 = {
    name                   = "first"
    priority               = "100"
    destination_port_range = "22"
  },
  sg2 = {
    name                   = "2nd"
    priority               = "101"
    destination_port_range = "80"
}, }

interface = {
  nic1 = {
    name                = "nic1"
    location            = "East US"
    resource_group_name = "rg-pawan"
    subnet_name         = "subnet01"
    vnetname            = "vnet01"
    publicip            = "pip1"
  }
  nic2 = {
    name                = "nic2"
    location            = "East US"
    resource_group_name = "rg-pawan"
    subnet_name         = "subnet02"
    vnetname            = "vnet02"
    publicip            = "pip2"
  }
}



