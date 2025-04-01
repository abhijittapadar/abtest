provider "aws" {
    region = "us-east-1"
  
}
resource "aws_security_group" "MySG2" {
  
}
resource "aws_security_group_rule" "ingress" {
  security_group_id = aws_security_group.MySG.id
  type              = "ingress"
  from_port         = 80          # Example port (e.g., HTTP)
  to_port           = 80          # Example port (e.g., HTTP)
  protocol          = "tcp"
  cidr_blocks       = ["10.0.0.0/24"]  # Source IP range
}
resource "aws_security_group_rule" "ingress" {
  security_group_id = aws_security_group.MySG.id
  type              = "ingress"
  from_port         = 8080          # Example port (e.g., HTTP)
  to_port           = 8080          # Example port (e.g., HTTP)
  protocol          = "tcp"
  cidr_blocks       = ["10.0.0.0/24"]  # Source IP range
}
