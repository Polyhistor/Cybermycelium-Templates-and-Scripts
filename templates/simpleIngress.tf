provider "kubernetes" {
  # Configuration options
}

resource "kubernetes_ingress" "simple_ingress" {
  metadata {
    name = "simple-ingress"
    annotations = {
      "kubernetes.io/ingress.class"                   = "nginx"
      "nginx.ingress.kubernetes.io/rewrite-target"    = "/"
      "nginx.ingress.kubernetes.io/enable-access-log" = "true"
    }
  }
  spec {
    rule {
      host = "simple.example.com"
      http {
        path {
          backend {
            service_name = "simple-service"
            service_port = 80
          }
          path = "/"
        }
      }
    }
  }
}
