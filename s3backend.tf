 terraform {
   backend "s3" {
    bucket         = "aichus-bucket"
    key            = "homework-tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "dynamodb"
   }
 }