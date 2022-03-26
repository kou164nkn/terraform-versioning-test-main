provider "aws" {
  region = "ap-northeast-1"
}

module "example-vpc-v010" {
  source = "./modules/vpc/v0.1.0/"

  vpc_name = "test-vpc-1"
  vpc_cidr = "10.0.0.0/16"
}

module "example-vpc-v020" {
  source = "./modules/vpc/v0.2.0/"

  vpc_name = "test-vpc-2"
  vpc_cidr = "20.0.0.0/16"
}

module "remote-example-vpc-v060-manual" {
  source = "git@github.com:kou164nkn/terraform-versioning-test-modules.git//test-module2?ref=v0.6.0"

  manual_setting_flag = true
  vpc_name            = "test-vpc-1-remote"
  vpc_cidr            = "30.0.0.0/16"
  enable_dns_support  = true
}

module "remote-example-vpc-v060-IaC" {
  source = "git@github.com:kou164nkn/terraform-versioning-test-modules.git//test-module2?ref=v0.6.0"

  manual_setting_flag = false
  vpc_name            = "test-vpc-1-remote"
  vpc_cidr            = "30.0.0.0/16"
  enable_dns_support  = true
}
