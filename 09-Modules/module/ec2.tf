resource "aws_instance" "web" {
  ami                     = data.aws_ami.defaultami.id
  instance_type           = "t2.micro"
  key_name                = "devops"
  vpc_security_group_ids  = [aws_security_group.allow_web_and_ssh.id]

  tags = {
    Name                   = "HelloWorld"
  }

  provisioner "remote-exec" {
    connection {
      host                 = self.public_ip
      user                 = "root"
      password             = "DevOps321"
    }
    inline = [
      "yum install nginx -y",
      "systemctl start nginx"
    ]
  }
}
