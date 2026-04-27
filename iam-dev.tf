# ============================
# PROJECT: project-dev-12345
# ============================

# Developers -> Deploy
resource "google_project_iam_member" "dev_dev_team" {
  project = "project-dev-12345"
  role    = "projects/project-dev-12345/roles/CustomDeveloperRole"
  member  = "group:${var.dev_group}"
}

# DevOps -> Full access
resource "google_project_iam_member" "dev_devops_team" {
  project = "project-dev-12345"
  role    = "projects/project-dev-12345/roles/CustomDevOpsRole"
  member  = "group:${var.devops_group}"
}

# QA -> Logs/Monitoring
resource "google_project_iam_member" "dev_qa_team" {
  project = "project-dev-12345"
  role    = "projects/project-dev-12345/roles/CustomQARole"
  member  = "group:${var.qa_group}"
}

# CI/CD -> Deploy
resource "google_project_iam_member" "dev_cicd" {
  project = "project-dev-12345"
  role    = "projects/project-dev-12345/roles/CustomDeveloperRole"
  member  = "serviceAccount:${var.cicd_sa}"
}