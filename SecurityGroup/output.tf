output "op-SecurityGroup"{
    value=aws_security_group.SecurityGroup.name
}

output "op-vpc_id"{
    value=aws_security_group.SecurityGroup.vpc_id
}