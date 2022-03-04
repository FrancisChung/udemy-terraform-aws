variable "vpc" {
  type = string
  default = "myvpc"
}

variable "sshport" {
  type = number
  default = 22
}

variable "enabled" {
  default = true
}

variable "mylist" {
  type = list(string)
  default = ["Value1", "Value2", "Value3"]
}

variable "mymap" {
  type = map
  default = {
    key1 = "Value1"
    key2 = "Value2"
  }
}

variable "inputname" {
  type = string
  description = "Set the name of the VPC"
}

provider "aws" {
    region = "ap-southeast-2"
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = var.inputname
    }
}

output "vpc_id" {
  value = aws_vpc.myvpc.id
}

variable "mytuple" {
  type = tuple([string, number, string])
  default = ["cat", 1, "dog"]
}

variable "myobject" {
  type = object({name=string, port=lost(number)})
  default = {
    name = "Frank"
    port = [22,25,80]
  }
}