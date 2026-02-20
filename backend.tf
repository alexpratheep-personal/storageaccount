terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "pratheep-jovan"

    workspaces {
      name = "storage-prod"
    }
  }
}
