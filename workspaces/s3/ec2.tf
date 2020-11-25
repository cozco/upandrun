provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.ec2_ami.id
  instance_type = terraform.workspace == "default" ? "t2.medium" : "t2.micro"
}

data "aws_ami" "ec2_ami" {
    most_recent = true
    owners = ["amazon"]

    filter {
        name = "name"
        values = ["amzn-ami-hvm*"]
    }
}

#Partial Backend Config

terraform {
  backend "s3" {
    key = "workspace-example/terraform.tfstate"
  }
}