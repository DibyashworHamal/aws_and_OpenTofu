resource "aws_instance" "ec2_vm" {
  ami                    = var.AMI_ID
  instance_type          = "t3.micro"
  availability_zone      = "us-east-1a"
  key_name               = "dip_aws_vm_key"
  vpc_security_group_ids = ["sg-055ebf380703ebd07"]

  tags = {
    name    = "hamaldivyashwor2057@gmail.com"
    project = "DevOps"
  }

  connection {
    type        = "ssh"
    user        = var.USER
    private_key = file("dip_aws_vm_key.pem")
    host        = self.public_ip
  }

  provisioner "file" {
    source      = "deploy.sh"
    destination = "/tmp/deploy.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/deploy.sh",
      "sudo /tmp/deploy.sh"
    ]
  }
}
