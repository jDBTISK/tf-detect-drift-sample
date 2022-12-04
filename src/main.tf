data "aws_iam_policy_document" "main" {
  statement {
    actions = [
      "s3:ListBucket",
    ]
    # tfsec:ignore:aws-iam-no-policy-wildcards
    resources = ["*"]
  }
}

resource "aws_iam_policy" "main" {
  name   = "DriftDetectSamplePolicy"
  policy = data.aws_iam_policy_document.main.json
}
