ami_id = "ami-0b6d9d3d33ba97d99"

delete_on_termination = true

instance_types = ["t3.micro"]

sg_map = {
  default = "sg-0228cdd58be6dafc0"
}

volume_size = 10

volume_types = ["gp3"]

tags = {
  dipak     = "MyEC2"
  webserver = "WebServer"
}
