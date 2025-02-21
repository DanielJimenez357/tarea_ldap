variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami" {
  description = "AMI ID"
  default     = "ami-064519b8c76274859"
}

variable "tipo_instancia" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

