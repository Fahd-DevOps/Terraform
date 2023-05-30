resource "kubernetes_service" "jenkins" {
  metadata {
    name      = "jenkins"
    namespace = "jenkins"
  }

  spec {
    selector = {
      app = "jenkins"
    }

    type = "LoadBalancer"

    port {
      port        = 8080
      target_port = 8080
    }
  }

  depends_on = [
    kubernetes_deployment.jenkins
  ]
}