variable "sg_id" {
  description = "SG ID for Applicaion load balancer"
  type = string
}

variable "subnets" {
  description = "Subnetns for Application load balancer"
  type = string
}

variable "vpc_id" {
  description = "vpc_id for ALB"
  type = string
}

variable "instances" {
  description = "Instance Ids for Target Group Attachment"
  type = list(string)
  
}