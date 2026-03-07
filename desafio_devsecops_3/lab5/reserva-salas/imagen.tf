provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "reserva" {
  name         = "reserva"
  build {
    context    = "."
    dockerfile = "./Dockerfile"
  }
  keep_locally = false
}