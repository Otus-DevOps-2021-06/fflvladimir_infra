terraform {
  required_version = "~> 0.12.0"
  # required_providers {
  #   yandex = {
  #     source = "yandex-cloud/yandex"
  #   }
  # }

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
