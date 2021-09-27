variable "vpc_id" {
  type        = string
  description = "(Optional, Forces new resource) VPC ID."
}

variable "allowed_cidr_blocks" {
  default     = ["0.0.0.0/0"]
  description = "Allowed cidr block"
}

variable "target_group_arn" {
  type        = string
  description = "ARN of the Target Group to which to route traffic. Specify only if type is forward and you want to route to a single target group. To route to one or more target groups, use a forward block instead"
}

variable "subnets" {
  type        = list(string)
  description = "VPC Subnet ID to launch in."
}

variable "tags" {
  description = "A map of tags to add to key pair resource."
  type        = map(string)
  default     = {}
}
