data "aws_ami" "amazon_linux_apche" {
 most_recent = true
}
resource "aws_instance" "amazon_linux_apche" {
  ami = data.aws_ami.amazon_linux_apche
  instance_type = "t2.micro"
  associate_public_ip_address = true

  tags = {
    owner = "Aichus"
    }
 }  

data "aws_ami" "ubuntu_aws" {
 most_recent = true
}


resource "aws_instance" "ubuntu_aws" {
  ami = data.aws_ami.ubuntu_aws
  instance_type = "t2.micro"
  associate_public_ip_address = true

  tags = {
    owner = "Aichus"
    }
 }  
