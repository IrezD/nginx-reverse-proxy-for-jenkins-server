resource "aws_security_group" "allow_ssh" {
  name        = "allow ssh"
  description = "exposing port 22 to allow remote connection to instance"
  vpc_id      = var.vpc_id

  tags = {
    Name = "allow ssh"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_port_22" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22

}

resource "aws_vpc_security_group_ingress_rule" "allow_port_80" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" 
}
