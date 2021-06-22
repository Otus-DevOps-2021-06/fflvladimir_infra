terraform {
  # https://cloud.yandex.com/en-ru/docs/solutions/infrastructure-management/terraform-state-storage
  # required_providers {
  #   yandex = {
  #     source = "yandex-cloud/yandex"
  #   }
  # }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "fflvladimir"
    region     = "us-east-1"
    key        = "terraform.tfstate"
    # access_key = "<static key identifier>"
    # secret_key = "<secret key>"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
