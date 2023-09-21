variable "project_name" {
  type = string
  description = "The name of your project."
  default     = "blue-green"  # Replace with your project name or provide a default
}


variable "aws_region" {
  type = string
  description = "The AWS region in which to create the resources."
  default     = "us-east-1"
}