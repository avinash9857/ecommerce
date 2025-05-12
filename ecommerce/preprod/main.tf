module "resource_group" {
  source = "../../Modules/resource_group"
  rg1    = var.rg2
}

module "storage_account" {
  source     = "../../Modules/storage_account"
  depends_on = [module.resource_group]
}