terraform {
    required_providers {
        local = {
            source = "hashicorp/local"
        }
    }
}

resource "local_file" "hello" {
    content = "hello, terraform!"
    filename = "${path.module}/hello.txt"
}


resource "local_file" "Akash" {
    content = "Hello, I am Akash"
    filename = "${path.module}/name.txt"
}

resource "local_file" "config" {
  content = "this is the config file"
  filename = "${path.module}/config.txt"
}

resource "local_file" "abc" {
  content = var.file_content
  filename = "${path.module}/abc.txt"
}

module "readme" {
  source = "./modules/file-creator"
  content = "this is the readme file"
  filename = "${path.module}/README.txt"
}

module "notes" {
  source = "./modules/file-creator"
  content = "these are the project notes"
  filename = "${path.module}/NOTES.txt"
}

