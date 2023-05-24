variable "aws_region" {
  type    = string
  default = "eu-west-1"
}

# Define variable for instance types
variable "instance_types" {
  description = "Map of instance types for different environments"
  type        = map(string)
  default = {
    "development" = "t2.micro"
    "training"    = "p2.medium"
    "processing"  = "m5.large"
  }
}