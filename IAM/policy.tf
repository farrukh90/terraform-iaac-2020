resource "aws_iam_policy" "policy" {
  name = "admins"
  path = "/"
  description = "admins"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}


resource "aws_iam_group_policy_attachment" "test-attach" {
  group      = aws_iam_group.billing.name
  policy_arn = aws_iam_policy.policy.arn
}