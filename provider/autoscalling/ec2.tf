resource "aws_launch_template" "web" {
  name_prefix   = "web-template-"
  image_id      = var.ami_id
  instance_type = var.instance_types[0]

  vpc_security_group_ids = [
    var.sg_map["default"]
  ]

  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      volume_size           = var.volume_size
      volume_type           = var.volume_types[0]
      delete_on_termination = var.delete_on_termination
    }
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name    = var.tags["dipak"]
      Purpose = var.tags["webserver"]
    }
  }
}

resource "aws_lb" "alb" {
  name               = "terraform-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [var.sg_map["default"]]
  subnets          = var.subnet_ids
}

resource "aws_lb_target_group" "tg" {
  name     = "terraform-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}

resource "aws_autoscaling_group" "asg" {
  desired_capacity = 2
  min_size         = 2
  max_size         = 4

  vpc_zone_identifier = var.subnet_ids

  launch_template {
    id      = aws_launch_template.web.id
    version = "$Latest"
  }

  target_group_arns = [
    aws_lb_target_group.tg.arn
  ]
}
