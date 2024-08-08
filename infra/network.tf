resource "aws_vpc" "dev-vpc" {
  cidr_block = "10.0.0.0/16"
}


resource "aws_subnet" "dev-subnet1" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-central-1a"

}

resource "aws_subnet" "dev-subnet2" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-central-1b"

}

  