
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = var.ami-os
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "jenkins-server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = data.aws_key_pair.key_pair.key_pair_id

  tags = {
    Name = "Jenkins_Server"
  }
  
}

data "aws_key_pair" "key_pair" {
  key_pair_id = "key-039e87af1b3a3f3dc"

}