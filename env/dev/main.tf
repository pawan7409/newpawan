module "rg" {
  source = "../../module/rg"
  rg     = var.rg

}
module "vnet" {
  source          = "../../module/vnet"
  depends_on      = [var.rg]
  virtualNetworks = var.virtualNetworks

}
module "subnet" {
  source     = "../../module/subnet"
  depends_on = [var.virtualNetworks]
  subnet     = var.subnet

}
module "ipconfig" {
  source     = "../../module/ipconfig"
  depends_on = [var.subnet]
  publicip   = var.publicip

}
module "nsg" {
  source     = "../../module/nsg"
  depends_on = [var.rg]
  nsg        = var.nsg
  sg = var.sg
}
module "interface" {
  source = "../../module/interface"
  depends_on = [var.rg , var.nsg , var.virtualNetworks]
  interface = var.interface
  
}