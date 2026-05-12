output "created_file" {
  value = local_file.hello.filename
  description = "the path of the created file"
}

output "project" {
  value = var.project_name
}