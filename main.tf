provider "aws" {
  region = "eu-central-1"
  profile = "winback"
}

resource "aws_instance" "example" {
  ami       = "ami-0dcc0ebde7b2e00db"
  instance_type = "t2.micro"
  
  tags = {
    Name = "terraform-example"
  }
}
