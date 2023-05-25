variable "aws_region" {
  type    = string
  default = "eu-west-1"
}

# Define variable for instance types
variable "instance_types" {
  description = "Map of instance types for different environments"
  type        = list(map(string))
  default = [
    { "name" = "development",
    "instance_type" = "t2.micro" },
    { "name" = "training",
    "instance_type" = "p2.medium" },
    { "name" = "processing",
    "instance_type" = "m5.large" }
  ]
}


variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "default-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "vpc_private_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}