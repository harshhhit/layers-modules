resource "aws_iam_role" "codepipelinerole" {
  name                 = "codepipelinerole"
  assume_role_policy   = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}


module "00_provide " {
  source = "../../00_provide"
  project_name = var.project_name
  
}