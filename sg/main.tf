provider "aws" {
    region = "ap-southeast-2"
}

resource "aws_instance" "ec2" {
    ami = "ami-089e8a52c00cede0b"
    instance_type = "t2.micro"
}