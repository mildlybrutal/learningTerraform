variable "content" {}
variable "filename" {}

resource "local_file" "this" {
  content = var.content
  filename = var.filename
}

output "filepath" {
  value = local_file.this.filename
}