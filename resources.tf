resource "aws_security_group" "ssh_access" {
  name        = "ssh_access"
  description = "Allow SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "Coolify" {
  ami                    = var.ec2_image_id
  instance_type          = var.ec2_instance_type
  vpc_security_group_ids = [aws_security_group.ssh_access.id]
  key_name               = "coolifykey"
  tags = {
    Name = var.instance_name
  }
  # root_block_device {
  #   volume_size = 30 
  #   volume_type = "gp3" 
  # }
}