# EC2 Instance
module "EC2instance" {
  source        = "../EC2instance"
  ami_id       = var.ami_id
  instance_type = var.instance_type
  tags         = var.tags
}

# S3 Bucket
module "S3_bucket"{
    source="../S3_Bucket"
    Bucketname=var.Bucketname
    tag_name=var.tag_name
}

# Securtiy Group

module "SecurityGroup" {
  source        = "../SecurityGroup"
  ami_id       = var.ami_id
  instance_type = var.instance_type
  tags          = var.tags

  sg_name  = var.sg_name
  sg_description = var.sg_description
  vpc_id   = var.vpc_id
  
  portvalues = var.portvalues
  protocol         = var.protocol
  cidr_blocks      = var.cidr_blocks
  ipv6_cidr_blocks = var.ipv6_cidr_blocks

  egress-from_port = var.egress-from_port
  egress-to_port   = var.egress-to_port
  egress-protocol = var.egress-protocol

}