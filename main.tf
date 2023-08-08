terraform {
  backend "s3" {
    bucket         = "aws-terraform-ecs-tfstate"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "aws-terraform-ecs-tfstate-locking"
    encrypt        = true
  }
}