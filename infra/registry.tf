resource "aws_ecr_repository" "this" {
  name                 = "${var.project}-ecr-repo"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
  # NOTE: force_delete が効かないバグがある
  # ref: https://github.com/hashicorp/terraform-provider-aws/issues/33523
  # force_delete = true

  tags = {
    Name = "${var.project}-ecr-repo"
  }
}
