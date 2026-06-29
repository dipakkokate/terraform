ami_id = "ami-0b6d9d3d33ba97d99"

instance_types = ["t3.micro"]

volume_size = 10

volume_types = ["gp3"]

delete_on_termination = true

sg_map = {
  default = "sg-0228cdd58be6dafc0"
}

tags = {
  dipak     = "MyEC2"
  webserver = "WebServer"
}

# Replace these with your own values
vpc_id = "vpc-xxxxxxxx"

subnet_ids = [
  "subnet-xxxxxxxx",
  "subnet-yyyyyyyy"
]
