variable "ami_id" {
  type = string
}

variable "instance_types" {
  type = list(string)
}

variable "volume_size" {
  type = number
}

variable "volume_types" {
  type = list(string)
}

variable "delete_on_termination" {
  type = bool
}

variable "sg_map" {
  type = map(string)
}

variable "tags" {
  type = map(string)
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}
