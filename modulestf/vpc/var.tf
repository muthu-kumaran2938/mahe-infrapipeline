variable "env" {
  description = "environment name"
  type        = string
  
}
variable "vpc_cidr" {
    description = "cidr values"
    type        = string
  
}

variable "subnet_cidr" {
    description = "subnet cidr values"
    type        = string
  
}

variable "azone" {
    description = "availability zone"
    type        = string
  
}