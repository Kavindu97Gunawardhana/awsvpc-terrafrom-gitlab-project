variable "sg_id" {
  description = "SG id for EC2"
  type = string
}

variable "subnets" {
  description = "Subnets for EC2"
  type = list(string)
}

variable "ec2_names" {
  description = "Names for EC2 instances"
  type = list(string)
  default = ["webserver1", "webserver2"]
}