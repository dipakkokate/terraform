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
vpc_id = "vpc-0b2d60b5cd1c3c4e2"

subnet_ids = [
  "subnet-04d05dbc5249f3482",
  "subnet-0806e6c011d6ef0d8"
]
