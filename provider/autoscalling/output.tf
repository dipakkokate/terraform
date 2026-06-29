output "load_balancer_dns" {
  value = aws_lb.alb.dns_name
}

output "autoscaling_group_name" {
  value = aws_autoscaling_group.asg.name
}
