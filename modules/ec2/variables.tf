variable "ami_id" {
  description = "AMI ID for Linux server"
  type = string
}

variable "instance_type" {
  description = "The instance type of EC2 machine"
  type = string
}

variable "subnet_id" {
  description = "The subnet ID for EC2"
  type = string
}

variable "security_group_id" {
  description = "The security group ID for the EC2 instance"
  type        = string
}
