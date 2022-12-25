ami_id = "ami-0cca134ec43cf708f"
instance_type ="t2.micro"
tags = {
    name = "Zeba"
    owner = "Zeba.Tomar@cloudeq.com"
    purpose = "traning"
}

Bucketname="Zeba"
tag_name={
    Name="zeba1"
    Owner="Zeba.Tomar@cloudeq.com"
    Purpose="Training"
}

sg_name  = "ZebaSG"
sg_description = "Security Group Created "
vpc_id   = "vpc-0db9b000905eaca0e"
portvalues  = [22, 443, 80]

protocol         = "tcp"
cidr_blocks      = ["0.0.0.0/0"]
ipv6_cidr_blocks = ["::/0"]

egress-from_port = 0
egress-to_port = 0
egress-protocol = "-1"