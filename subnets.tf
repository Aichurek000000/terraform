resource "aws_subnet" "subnet1" {
  cidr_block = "192.168.1.0/27"
  vpc_id     = data.aws_vpc.vpc1.id
  availability_zone = "us-east-1a"
  tags = {
    owner = "Aichus"
  }
}
resource "aws_subnet" "subnet2" {
  cidr_block = "192.168.2.0/24"
  vpc_id     = data.aws_vpc.vpc2.id
  availability_zone = "us-east-1a"

  tags = {
    owner = "Aichus"
  }
  depends_on = [aws_vpc.vpc]
}





