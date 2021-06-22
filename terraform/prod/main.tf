terraform {
  # required_version = "~> 0.12.0"
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "fflvladimir-2"
    region     = "ru-central1"
    key        = "terraform.tfstate"
    # access_key = "key.json"
    # access_key = "ajen7la5i5naamdghj9g"
    # access_key = "hzyIbeJpdz6OGyeKM24d"
    # secret_key = "TOrKiaXf3WrmLJ_UfJLloNoCEyxCz9HYB6e0TG1Y"

    # access_key = "GeP8MYYQlUBf2fCA4IlC"
    access_key = "hzyIbeJpdz6OGyeKM24d"
    secret_key = "TOrKiaXf3WrmLJ_UfJLloNoCEyxCz9HYB6e0TG1Y"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  # version                  = "~> 0.35.0"
  # service_account_key_file = var.service_account_key_file


  service_account_key_file = file("fflvladimir-key.json")
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
