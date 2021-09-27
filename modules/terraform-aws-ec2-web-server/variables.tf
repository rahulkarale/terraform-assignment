variable "key_name" {
  description = "The name for the key pair."
  type        = string
  default     = null
}

variable "instance_type" {
  default     = "t2.micro"
  type        = string
  description = "The instance type to use for the instance. Updates to this field will trigger a stop/start of the EC2 instance"
}

variable "subnet_id" {
  type        = string
  description = "VPC Subnet ID to launch in."
}

variable "vpc_id" {
  type        = string
  description = "(Optional, Forces new resource) VPC ID."
}

variable "tags" {
  description = "A map of tags to add to key pair resource."
  type        = map(string)
  default     = {}
}
