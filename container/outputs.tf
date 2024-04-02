
output "container_id" {
  description = "ID of the created docker container"
  value = docker_container.container.id
}
