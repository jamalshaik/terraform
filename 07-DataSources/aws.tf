provider            "aws" {
  region            = "us-east-1"
}

data                "aws_ami" "defaultami" {
  owners            = [973714476881]
  most_recent       = true
  filter {
    name            = "name"
    values          = ["Centos-7-DevOps-Practice"]
  }
}

resource          "aws_instance" "web" {
  ami             = data.aws_ami.defaultami.id
  instance_type   = "t2.micro"
  key_name        = "devops"

  tags            = {
    Name          = "HelloWorld"
  }
  owners = []
}

output            "PUBLIC_IP_OF_INSTANCE" {
  value           = aws_instance.web.public_ip
}