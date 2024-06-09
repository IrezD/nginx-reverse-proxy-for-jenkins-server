data "aws_route53_zone" "hosted_zone" {
  name         = "dennisowie.com"
  private_zone = true
}

resource "aws_route53_record" "jenkins_record" {
  zone_id = data.aws_route53_zone.hosted_zone.id
  name    = "${var.jenkins_domain}.${data.aws_route53_zone.hosted_zone.name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.jenkins-server.public_ip]
}