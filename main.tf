#####################################################################
# Variables
#####################################################################

variable "username" { default = "username" }
variable "password" { default = "password0123456789" }

#####################################################################
# Modules
#####################################################################
module "gke_cluster" {
  source = "./modules/gke_cluster"
  //project  = "${var.project}"
  //region   = "${var.region}"

  /* --------- variables surchargées -------*/
  name               = "gke-franck"
  username           = "username"
  password           = "password0123456789"
  initial_node_count = 3
  location           = "us-central1-a"
}

module "k8s" {
  source = "./modules/k8s_ressources"
  //depends_on = ["${module.gke_cluster}"]
  /* ---------- variables peuvent etre egalement surchargées -------*/

  host     = "${module.gke_cluster.host}"
  username = "${var.username}"
  password = "${var.password}"

  client_certificate     = "${module.gke_cluster.client_certificate}"
  client_key             = "${module.gke_cluster.client_key}"
  cluster_ca_certificate = "${module.gke_cluster.cluster_ca_certificate}"


}
