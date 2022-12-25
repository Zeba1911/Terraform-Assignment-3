variable "ami_id" {
    type = string
}

variable "instance_type" {
    type = string
}

variable "tags" {
    type = map(any)
}

variable "sg_name" {
  type=string
}

variable "sg_description" {
  type=string
}

variable "vpc_id" {
  type=string
}

variable "portvalues" {
  type = list(number)
}

variable "protocol" {
  type = string
}

variable "cidr_blocks" {
  type=list(string)
}

variable "ipv6_cidr_blocks" {
    type=list(string)
}

variable "egress-protocol" {
  type = string
}
variable "egress-from_port"{
    type = number
}

variable "egress-to_port"{
    type = number
}