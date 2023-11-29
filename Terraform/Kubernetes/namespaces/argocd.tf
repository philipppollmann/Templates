resource "kubernetes_namespace" "argocd_namespace" {
  metadata {
    annotations = {}
    name = "argocd"
    labels = {
      name = "argocd"
    }
  }
}