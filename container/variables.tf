
variable "container_name" {
  description = "Name of the docker container"
}

variable "image" {
  description = "Docker image to use for the container"
}

variable "ports" {
  description = "Port mappings for the container"
  type = list(object({
    internal = number
    external = number
  }))
}
