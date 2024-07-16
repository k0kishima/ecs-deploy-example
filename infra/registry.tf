resource "aws_ecr_repository" "this" {
  name                 = "${var.project}-ecr-repo"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "${var.project}-ecr-repo"
  }
}
