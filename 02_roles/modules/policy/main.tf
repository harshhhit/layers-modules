resource "aws_iam_role_policy" "codepipeline_policy" {
  name = "codepipeline_policy-${project_name}"
  role = aws_iam_role.codepipelinerole.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect":"Allow",
      "Action": [
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning",
        "s3:PutObject"
      ],
      "Resource": [
        "arn:aws:s3:::*/*"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codedeploy:*"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}

module "00_provide " {
  source = "../../00_provide"
  project_name = var.project_name
  
}