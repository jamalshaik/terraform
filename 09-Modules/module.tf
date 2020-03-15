provider "aws" {
  region             = "us-east-1"
}

module "SETUP_WEB_SERVER" {
  source = "./module"
}


output "PUBLIC_URL" {
  value = module.SETUP_WEB_SERVER.PUBLIC_URL
}