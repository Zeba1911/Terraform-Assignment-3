# EC2 Instance

resource "aws_instance" "EC2instnace" {
    ami    = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
}
