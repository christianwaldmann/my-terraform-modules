
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

resource "docker_image" "whoami" {
  name = "traefik/whoami:latest"
}

resource "docker_container" "foo" {
  image = docker_image.whoami.image_id
  name  = var.name
}
