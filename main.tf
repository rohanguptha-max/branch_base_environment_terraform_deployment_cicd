provider "null" {}

variable "instance_name" {
  description = "Base name for local instance simulation"
  default     = "branch-env-instance"
}

resource "null_resource" "demo" {
  provisioner "local-exec" {
    command = "echo 'Instance for ${var.instance_name}-${terraform.workspace}' >> deployment.log"
  }
}
