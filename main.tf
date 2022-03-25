provider "aws" {
  region = "eu-central-1"
  profile = "winback"
}

resource "aws_instance" "example" {
  ami       = "ami-0dcc0ebde7b2e00db"
  instance_type = "t2.micro"

  user_data = <<-EOF
                 #!/bin/bash
                 echo "Hello, World" > index.html
                 nohup busybox httpd -f -p 8080 &
                 EOF

  tags = {
    Name = "terraform-example"
  }
}
