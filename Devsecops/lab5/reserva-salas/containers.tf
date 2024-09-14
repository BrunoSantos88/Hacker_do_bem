resource "docker_container" "prometheus" {
  name         = "prometheus"
  image        = "prom/prometheus"
  ports {
    internal = 9090
    external = 9090
  }

  volumes {
    host_path      = "/reserva-salas/prometheus"
    container_path = "/etc/prometheus"
  }

  volumes {
    host_path      = "/reserva-salas/prometheus/data"
    container_path = "/prometheus"
  }

  restart = "always"
}


resource "docker_container" "grafana" {
  name         = "grafana"
  image        = "grafana/grafana"
  ports {
    internal = 3000
    external = 3000
  }

  volumes {
    host_path      = "/reserva-salas/grafana/data"
    container_path = "/reserva-salas"
  }

  user = "1001:1001"

  env = ["GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource", " GF_SECURITY_ADMIN_USER=admin",
          "GF_SECURITY_ADMIN_PASSWORD=admin", "GF_USERS_ALLOW_SIGN_UP=false"]

  depends_on = [docker_container.prometheus]

  restart = "always"
}