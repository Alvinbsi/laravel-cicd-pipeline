provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "laravel" {
  name       = "laravel-app"
  chart      = "."
  namespace  = "default"

  values = [
    file("values.yaml")
  ]
}
