data "vra_blueprint" "cloud_template" {
    name = var.blueprint_name
}

data "vra_project" "project" {
  name = var.project_name
}
terraform {
  required_providers {
    vra = {
      source = "vmware/vra"
      version = "0.4.1"
    }

    aws = {
      version = "2.24"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "my-account-${terraform.workspace}"
}
provider "vra" {
  url           = var.url
  refresh_token = var.refresh_token
  insecure      = true
}

resource "vra_deployment" "linux-cloud-template" {
  name        = var.deployment_name
  description = "create a deployment using a cloud template"

  blueprint_id      = data.vra_blueprint.cloud_template.id
  blueprint_version = var.blueprint_version
  project_id        = data.vra_project.project.id

  timeouts {
    create = "30m"
    delete = "30m"
    update = "30m"
  }

}