variable "users" {
  default = ""
}

data "template_file" "users" {
  template = "${file("${path.module}/templates/users.yml")}"

  vars {
    users = "${var.users}"
  }
}
