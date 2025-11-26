variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  
}
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  
}
variable "subnet_id" {
  description = "The subnet ID where the EC2 instance will be launched"
  type        = string
  
}
variable "ec2_count" {
  description = "The number of EC2 instances to launch"
  type        = number
  default     = 1
}
variable "env" {
    description = "environment"
    type        = string
  
}


