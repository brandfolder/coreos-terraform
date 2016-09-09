variable "write_files" {
  default = ""
}

data "template_file" "write_files" {
  template = "${file("${path.module}/templates/write_files.yml")}"

  vars {
    write_files = "${var.write_files}"
  }
}
