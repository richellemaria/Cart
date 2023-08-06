module "cart" {
  source                 = "./vendor/modules/app"
  ENV                    = var.ENV
  COMPONENT              = var.COMPONENT
}
