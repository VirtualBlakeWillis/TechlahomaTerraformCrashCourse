resource "github_repository" "example_repository" {
  name        = var.github_repository
  description = "Created during Terraform Crash Course"
  visibility  = "public"
  auto_init   = true
}

resource "github_repository_file" "readme_file" {
  repository = github_repository.example_repository.name
  branch     = "main"
  file       = "README.md"
  content    = data.github_repository_file.readme_file.content
}

resource "github_repository_file" "index_file" {
  count      = var.toggle_index ? 1 : 0
  repository = github_repository.example_repository.name
  branch     = "main"
  file       = "index.html"
  content    = data.github_repository_file.index_file[0].content
}

resource "github_repository_file" "other_files" {
  for_each   = toset(var.additional_files)
  repository = github_repository.example_repository.name
  branch     = "main"
  file       = each.key
  content    = data.github_repository_file.other_files[each.key].content

}