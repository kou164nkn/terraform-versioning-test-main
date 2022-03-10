provider "aws" {
  region = "ap-northeast-1"
}

module "example-vpc-v010" {
  source = "./modules/vpc/v0.1.0/"

  vpc_name = "test-vpc-1"
  vpc_cidr = "10.0.0.0/16"
}