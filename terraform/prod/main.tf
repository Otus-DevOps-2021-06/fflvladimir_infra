# terraform {
#   # required_version = "~> 0.12.0"
#   required_providers {
#     yandex = {
#       source = "yandex-cloud/yandex"
#     }
#   }
# }

provider "yandex" {
  # version                  = "~> 0.35.0"
  # service_account_key_file = var.service_account_key_file


  # service_account_key_file = file("fflvladimir-key.json")
  service_account_key_file = file("key.json")
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}
module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
  subnet_id       = var.subnet_id
}
module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = var.subnet_id
}
module "vpc" {
  source          = "../modules/vpc"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = var.subnet_id
}
