output "op_ami" {
    value = aws_instance.EC2instnace.ami
}

output "op_tags" {
    value = aws_instance.EC2instnace.tags
}