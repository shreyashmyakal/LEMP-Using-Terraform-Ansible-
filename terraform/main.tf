provider "aws" {
  region = var.region
}
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.mysg.id]
  tags = {
    Name = "TerraformAnsibleLEMP"
  }
  provisioner "local-exec" {
    command = "echo [webserver] > ../ansible/hosts.ini && echo ${self.private_ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/mygitkey.pem >> ../ansible/hosts.ini"
  }
}
resource "aws_security_group" "mysg" {
egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
output "private_ip" {
  value = aws_instance.web.private_ip
}
