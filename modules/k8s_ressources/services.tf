resource "kubernetes_service" "nginx-service" {
  metadata {
    name = "${var.metadata_name_serv}"
  }
  spec {
    selector = {
      app = "${var.label_pod}"
    }

    port {
      port        = 8080
      target_port = 80
    }

    type = "LoadBalancer"
  }
}
