variable "ami_id" {
  type = string
}

variable "volume_size" {
  type = number
}

variable "delete_on_termination" {
  type = bool
}

variable "instance_types" {
  type = list(string)
}

variable "volume_types" {
  type = list(string)
}

variable "sg_map" {
  type = map(string)
}

variable "tags" {
  type = map(string)
}
