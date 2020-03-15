provider "aws" {
  region             = "us-east-1"
}

module "SETUP_WEB_SERVER" {
  source = "./module"
}


output "WEB_ADDRESS" {
  value = "http://${module.SETUP_WEB_SERVER.PUBLIC_IP_OF_INSTANCE}"
}