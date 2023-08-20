resource "google_service_account" "config_connector" {
  account_id   = "isidro-config-connector"
  display_name = "Isidro Config Connector"
}

resource "google_project_iam_member" "config_connector_editor" {
  project = var.project_id
  role    = "roles/editor"
  member  = "serviceAccount:${google_service_account.config_connector.email}"
}

resource "google_project_iam_member" "config_connector_workload_identity_user" {
  project = var.project_id
  role    = "roles/iam.workloadIdentityUser"
  member  = "serviceAccount:${var.project_id}.svc.id.goog[cnrm-system/cnrm-controller-manager]"
}

