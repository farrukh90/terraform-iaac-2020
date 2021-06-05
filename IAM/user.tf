provider "aws" {
  region = "us-east-1"
}


resource "aws_iam_user" "bob" {
  name = "bob"
}


resource "aws_iam_user" "sam" {
  name = "sam"
}


resource "aws_iam_group" "billing" {
  name = "billing"
}

resource "aws_iam_group_membership" "team" {
  name = "billing-membership"
  users = [
    aws_iam_user.bob.name,
    aws_iam_user.sam.name,
  ]
  group = aws_iam_group.billing.name
}
