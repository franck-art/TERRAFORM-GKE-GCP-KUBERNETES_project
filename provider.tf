/* ------ variables  declaration --------------*/

variable "path" {
  type    = string
  default = "/home/franck/Bureau/TP/gke_project"
}

/* ------ provider  declaration --------------*/

provider "google" {
  credentials = "${file("${var.path}/account.json")}" // put the path to your service account file
  project     = "phonic-command-291302"
  region      = "europe-west2-a"
}
