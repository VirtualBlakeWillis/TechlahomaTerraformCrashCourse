data "github_repository_file" "readme_file" {
  repository = var.forked_repository
  branch     = "main"
  file       = "README.md"
}

data "github_repository_file" "index_file" {
  count      = var.toggle_index ? 1 : 0
  repository = var.forked_repository
  branch     = "main"
  file       = "index.html"
}

data "github_repository_file" "other_files" {
  for_each   = toset(var.additional_files)
  repository = var.forked_repository
  branch     = "main"
  file       = each.key
}