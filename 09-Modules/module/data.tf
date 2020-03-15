data "aws_ami" "defaultami" {
  owners             = ["973714476881"]
  most_recent        = true
  filter {
    name             = "name"
    values           = ["Centos-7-DevOps-Practice"]
  }
}
