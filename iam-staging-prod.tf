

# ============================
# PROJECT: project-staging-12345
# ============================

# Developers -> Read-only
resource "google_project_iam_member" "staging_dev_team" {
  project = "project-staging-12345"
  role    = "projects/project-staging-12345/roles/CustomReadOnlyRole"
  member  = "group:${var.dev_group}"
}

# DevOps -> Full
resource "google_project_iam_member" "staging_devops_team" {
  project = "project-staging-12345"
  role    = "projects/project-staging-12345/roles/CustomDevOpsRole"
  member  = "group:${var.devops_group}"
}

# QA -> Logs
resource "google_project_iam_member" "staging_qa_team" {
  project = "project-staging-12345"
  role    = "projects/project-staging-12345/roles/CustomQARole"
  member  = "group:${var.qa_group}"
}

# CI/CD -> Deploy
resource "google_project_iam_member" "staging_cicd" {
  project = "project-staging-12345"
  role    = "projects/project-staging-12345/roles/CustomDeveloperRole"
  member  = "serviceAccount:${var.cicd_sa}"
}

# ============================
# PROJECT: project-prod-12345
# ============================

# Developers -> Read-only
resource "google_project_iam_member" "prod_dev_team" {
  project = "project-prod-12345"
  role    = "projects/project-prod-12345/roles/CustomReadOnlyRole"
  member  = "group:${var.dev_group}"
}

# DevOps -> Full
resource "google_project_iam_member" "prod_devops_team" {
  project = "project-prod-12345"
  role    = "projects/project-prod-12345/roles/CustomDevOpsRole"
  member  = "group:${var.devops_group}"
}

# QA -> Logs
resource "google_project_iam_member" "prod_qa_team" {
  project = "project-prod-12345"
  role    = "projects/project-prod-12345/roles/CustomQARole"
  member  = "group:${var.qa_group}"
}

# CI/CD -> Deploy
resource "google_project_iam_member" "prod_cicd" {
  project = "project-prod-12345"
  role    = "projects/project-prod-12345/roles/CustomDeveloperRole"
  member  = "serviceAccount:${var.cicd_sa}"
}