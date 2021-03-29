# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
	region = "us-west-1"
	shared_credentials_file = "/Users/mludd/.aws/credentials" 
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-t2" {
  count = 4
  ami = "ami-005c06c6de69aee84"
  instance_type = "t2.micro"
  subnet_id = "subnet-0104f2671f08d9f4f"
  tags = {
    Name = "Udacity T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
# Commented following so only delete m4 instances
resource "aws_instance" "Udacity-m4" {
  count = 2
  ami = "ami-005c06c6de69aee84"
  instance_type = "m4.large"
  subnet_id = "subnet-0104f2671f08d9f4f"
  tags = {
    Name = "Udacity M4"
  }
}




