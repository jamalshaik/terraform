provider "aws" {
  region             = "us-east-1"
}

module "SETUP_WEB_SERVER" {
  source = "./module"
}