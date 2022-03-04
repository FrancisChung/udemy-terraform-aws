provider aws {
    region = "ap-southeast-2"
}

variable "VPCName" {
    type = string
    description = "Name of the VPC"
}

resource "aws_vpc" "TerraformVPC" {
    cidr_block = "192.168.0.0/24"
    tags = {
        name = var.VPCName
    }
}