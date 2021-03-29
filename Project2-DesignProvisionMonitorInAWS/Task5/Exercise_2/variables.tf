# Define variables for aws_region, lambda_function_name, lambda_output_path
variable "aws_region" {
  type = string
  default = "us-west-1"
}

variable "lambda_function_name" {
  type = string
  default = "greet_lambda"
}

variable "lambda_output_path" {
  type = string
  default = "output.zip"
}

