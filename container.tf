resource "docker_image" "taskmanager" {
  name         = "taskmanager"
  build {
    context    = "."
    dockerfile = "./Dockerfile"
  }
  keep_locally = false
}

# Criação do container para implantação
resource "docker_container" "taskmanager" {
  name         = "taskmanager"
  image        = docker_image.taskmanager.image_id
  ports {
    internal = 5000
    external = 8080
  }
  restart = "always"
}