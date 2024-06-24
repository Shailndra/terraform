variable "aws_region" {
  description = "Region for AWS resources"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "type of ec2 instances"
  type        = string
  default     = "t3a.medium"
}

variable "instance-keypair" {
  description = "value"
  type        = string
  default     = "terraform-key"
}