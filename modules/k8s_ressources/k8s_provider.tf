/* ------ variables  declaration --------------*/

variable "username" {
  default = "username"
  description = "username for user"
}
variable "password" {description = "password for user"}
variable "host" {description = "host connection to cluster"}
variable client_certificate {description = "client certificate"}
variable client_key {description = "private client key"}
variable cluster_ca_certificate {description = "certification authority"}


provider "kubernetes" {
  host     = "${var.host}"
  username = "${var.username}"
  password = "${var.password}"

  client_certificate     = "${base64decode(var.client_certificate)}"
  client_key             = "${base64decode(var.client_key)}"
  cluster_ca_certificate = "${base64decode(var.cluster_ca_certificate)}"
}
