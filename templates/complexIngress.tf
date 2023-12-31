provider "kubernetes" {
  # Configuration options
}

resource "kubernetes_ingress" "advanced_ingress" {
  metadata {
    name = "advanced-ingress"
    annotations = {
      "kubernetes.io/ingress.class"                        = "nginx"
      "nginx.ingress.kubernetes.io/rewrite-target"         = "/"
      "nginx.ingress.kubernetes.io/ssl-redirect"           = "true"
      "nginx.ingress.kubernetes.io/use-regex"              = "true"
      "nginx.ingress.kubernetes.io/limit-rps"              = "5"
      "nginx.ingress.kubernetes.io/limit-connections"      = "20"
      "nginx.ingress.kubernetes.io/enable-access-log"      = "true"
      "nginx.ingress.kubernetes.io/secure-backends"        = "true"
      "nginx.ingress.kubernetes.io/backend-protocol"       = "HTTPS"
    }
  }

  spec {
    tls {
      hosts = ["advanced.example.com"]
      secret_name = "example-tls"  # Ensure the TLS secret is created and correctly configured
    }

    rule {
      host = "advanced.example.com"

      http {
        path {
          backend {
            service_name = "advanced-service"
            service_port = 80
          }
          path = "/foo/bar"
        }

        path {
          backend {
            service_name = "another-service"
            service_port = 80
          }
          path = "/foo/baz"
        }
      }
    }
  }
}
