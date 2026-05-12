variable "file_content" {
  description = "content to write in the file"
  type=string
  default="hello from the variable"
}

variable "project_name" {
  description = "name of the project"
  type=string
  default = "terraform-workshop"
}