output "PUBLIC_IP_OF_INSTANCE" {
  value                   = "http://${aws_instance.web.public_ip}"
}