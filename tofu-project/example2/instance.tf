provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "ec2_vm" {
  ami                    = "ami-091138d0f0d41ff90"
  instance_type          = "t3.micro"
  availability_zone      = "us-east-1a"
  key_name               = "dip_aws_vm_key"
  vpc_security_group_ids = ["sg-055ebf380703ebd07"]
  tags = {
    name    = "hamaldivyashwor2057@gmail.com"
    project = "DevOps"
  }
}
output "publicIPAddr" {
  value = aws_instance.ec2_vm.public_ip
}
