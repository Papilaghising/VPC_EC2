variable "instance_name" {
  description = "Name of the instance to be created"
  default     = "papila"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {
  description = "The VPC subnet the instance(s) will be created in"
  default     = "subnet-id"
}

variable "ami_id" {
  description = "The AMI to use"
  default     = "ami-id"
}

variable "number_of_instances" {
  description = "number of instances to be created"
  default     = 1
}

