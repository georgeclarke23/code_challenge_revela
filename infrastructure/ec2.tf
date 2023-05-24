

# Create EC2 instances
resource "aws_instance" "development_instance" {
  ami           = "ami-0123456789"  # Replace with the desired AMI ID for development
  instance_type = var.instance_types["development"]
  count         = 1  # Number of instances to create

  # Additional configuration for development instance (if needed)
  # ...
}

resource "aws_instance" "training_instance" {
  ami           = "ami-0123456789"  # Replace with the desired AMI ID for training
  instance_type = var.instance_types["training"]
  count         = 1  # Number of instances to create

  # Additional configuration for training instance (if needed)
  # ...
}

resource "aws_instance" "processing_instance" {
  ami           = "ami-0123456789"  # Replace with the desired AMI ID for processing
  instance_type = var.instance_types["processing"]
  count         = 1  # Number of instances to create

  # Additional configuration for processing instance (if needed)
  # ...
}