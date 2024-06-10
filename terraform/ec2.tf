
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
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = "EKS Key_pair"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  
  ebs_block_device {
    device_name = "/dev/xvda"
    volume_size = 25
  }

  tags = {
    Name = "Jenkins_Server"
  }

}