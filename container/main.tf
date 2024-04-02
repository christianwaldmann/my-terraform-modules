
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

resource "docker_image" "image" {
  name = var.image
}

resource "docker_container" "container" {
  image = docker_image.image.image_id
  name  = var.container_name

  dynamic "ports" {
    for_each = var.ports
    content {
      internal = var.ports.internal
      external = var.ports.external
    }
  }
}
