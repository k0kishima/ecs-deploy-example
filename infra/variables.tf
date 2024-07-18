variable "project" {
  type        = string
  description = "The project name"
  default     = "ecs-deploy-example"
}

variable "github_repository" {
  type        = string
  description = "The GitHub repository in the format 'owner/repo', e.g., 'k0kishima/ecs-deploy-example'"
  default     = "k0kishima/ecs-deploy-example"
}
