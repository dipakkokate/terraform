resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_types[0]

  vpc_security_group_ids = [
    var.sg_map["default"]
  ]

  root_block_device {
    volume_size           = var.volume_size
    volume_type           = var.volume_types[0]
    delete_on_termination = var.delete_on_termination
  }

  tags = {
    Name    = var.tags["dipak"]
    Purpose = var.tags["webserver"]
  }
}
