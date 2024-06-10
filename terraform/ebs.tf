resource "aws_ebs_volume" "jenkins_server_volume" {
  availability_zone =  "${var.aws-region}a"
  size              = 25
}

resource "aws_volume_attachment" "js_volume_attachment" {
  device_name = "/dev/xvda"
  volume_id   = aws_ebs_volume.jenkins_server_volume.id
  instance_id = aws_instance.jenkins-server.id
}
