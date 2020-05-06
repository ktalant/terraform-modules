resource "kubernetes_namespace" "talant_namespace" {
  metadata {

    labels = {
      mylabel = "${var.namespace_label}"
    }

    name = "${var.namespace_name}"
  }
}

variable "namespace_label" {
  default = "talant-namespace-label"
}

variable "namespace_name" {
  default = "talant-dev"
}

