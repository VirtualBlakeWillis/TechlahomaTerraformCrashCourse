variable "token" {
  type        = string
  description = "The Github URL Token"
}

variable "github_organization" {
  type        = string
  description = "The name of the organization you want to make the Github Pages for"
}

variable "github_repository" {
  type        = string
  description = "Name of the Repository"
}

variable "forked_repository" {
  type        = string
  description = "The name of the repository that we're forking files from"
  default     = "EternalLuxury/basic-html-website"
}

variable "toggle_index" {
  type        = bool
  description = "Conditionally include the index file"
  default     = true
}

variable "additional_files" {
  type        = list(string)
  description = "A list of files to include in repository"
  default = [
    "assets/css/bulma.min.css",
    "assets/css/style.css",
    "assets/js/jquery-3.6.0.js",
    "assets/js/script.js"
  ]
}