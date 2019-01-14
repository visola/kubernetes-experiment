resource "google_container_cluster" "primary" {
    name               = "primary-cluster"
    zone               = "${var.zone}"
    initial_node_count = 1

    master_auth {
        username = "${var.username}"
        password = "${var.password}"
    }

    node_config {
        oauth_scopes = [
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
        ]
    }
}