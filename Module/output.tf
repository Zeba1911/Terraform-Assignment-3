output "ami" {
    value = module.EC2instance.op_ami
}

output "tags" {
    value = module.EC2instance.op_tags
}

output "name"{
    value = module.SecurityGroup.op-SecurityGroup
}

output "vpc-id"{
    value = module.SecurityGroup.op-vpc_id
}
  
output "Bucketname"{
    value = module.S3_bucket.op-Bucketname
}

output "tags1"{
    value = module.S3_bucket.op-tags
}
