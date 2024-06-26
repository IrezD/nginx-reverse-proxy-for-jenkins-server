data "aws_route53_zone" "hosted_zone" {
  name         = "dennisowie.com."
}

resource "aws_route53_record" "jenkins_record" {
  zone_id = data.aws_route53_zone.hosted_zone.id
  name    = "${var.jenkins_domain}.${data.aws_route53_zone.hosted_zone.name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.server.public_ip]
}

resource "aws_route53_record" "gitlab_record" {
  zone_id = data.aws_route53_zone.hosted_zone.id
  name    = "${var.gitlab_domain}.${data.aws_route53_zone.hosted_zone.name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.server.public_ip]
}