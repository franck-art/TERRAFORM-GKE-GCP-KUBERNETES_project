resource "google_container_cluster" "primary" {
  name               = "${var.name}"
  location           = "${var.location}"
  initial_node_count = "${var.initial_node_count}"

  master_auth {
    username = "${var.username}"
    password = "${var.password}"

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      foo = "bar"
    }

    tags = ["foo", "bar"]
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
}
