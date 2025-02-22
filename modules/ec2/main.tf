resource "aws_instance" "app" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [ var.security_group_id ]

  tags = {
    Name = "Terraform web server"
  }
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y nginx
              sudo systemctl start nginx
              echo "<h1>Hello from Terraform!</h1>" > /usr/share/nginx/html/index.html
              EOF
}

resource "aws_eip" "web_ip" {
  instance = aws_instance.app.id
  domain = "vpc"
}

