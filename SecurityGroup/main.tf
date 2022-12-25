# EC2 Instance
resource "aws_instance" "Ec2" {
    ami    = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
# Attach Security Group to EC2 instance
    vpc_security_group_ids = [aws_security_group.SecurityGroup.id]
}

#Security Group
resource "aws_security_group" "SecurityGroup" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id
  dynamic "ingress" {
    for_each = var.portvalues
    iterator = port
    content {
      protocol = var.protocol
      from_port=port.value
      to_port=port.value
      cidr_blocks=var.cidr_blocks
    }    
  }
  egress {
    from_port        = var.egress-from_port
    to_port          = var.egress-to_port
    protocol         = var.egress-protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }
  tags = var.tags
}