data "aws_vpc" "vpc1" {
  default = true
}
resource  "aws_internet_gateway" "igw"{
  vpc_id = data.aws_vpc.vpc1.id

  tags = {
    "owner" = "Aichus"
  }
  }
  data "aws_vpc" "vpc2" {
  default = true
}
  resource "aws_internet_gateway" "igw1" {
  vpc_id = data.aws_vpc.vpc2.id

  tags = {
    Name = "Aichus"
  }
  depends_on = [aws_vpc.vpc]
}


