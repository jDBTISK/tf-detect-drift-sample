variable "aws_profile" {
  description = "terraform を実行する AWS ユーザーの profile 指定"
  type        = string
  default     = "default"
}

variable "assume_role_arn" {
  description = "terraform 実行時に AssumeRole させたいロールの ARN"
  type        = string
  default     = null
}

locals {
  region = "ap-northeast-1"
}
