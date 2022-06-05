
resource "aws_security_group" "reyeks-tftest" {
  name_prefix = var.name_prefix 
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.0.0/8",
    ]
  }
   ingress {
    description      = "web access"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks = [
      "10.0.0.0/8",
    ]
  }
}

