provider "google" {
  credentials = "credentials.json"
  project     = "${var.project_id}"
  region      = "${var.region}"
  zone        = "${var.zone}"
}

module "kubernetes_cluster" {
    source = "./kubernetes"

    project_id = "${var.project_id}"
    region     = "${var.region}"
    zone       = "${var.zone}"

    username = "${var.cluter_master_username}"
    password = "${var.cluter_master_password}"
}

provider "kubernetes" {
  host     = "${module.kubernetes_cluster.host}"
  username = "${var.cluter_master_username}"
  password = "${var.cluter_master_password}"

  client_certificate     = "${base64decode(module.kubernetes_cluster.client_certificate)}"
  client_key             = "${base64decode(module.kubernetes_cluster.client_key)}"
  cluster_ca_certificate = "${base64decode(module.kubernetes_cluster.cluster_ca_certificate)}"
}
