variable "instance_type" {
  description = "Defined the EC2 instance type"
  default = "t2.micro"
}

variable "ami-os" {
  default = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  description = "This holds the variable for the EC2 Operating system"
}

variable "aws-region" {
  default = "eu-central-1"
  description = "Selected AWS region"
}