provider "aws" {
    region = "ap-east-1"
}

resource "aws_instance" "ec2_frontend" {
    ami = "ami-008834de6141fb49b"
    instance_type = "t4g.nano"

    tags = {
        Name = "terraform-example"
    }
}
