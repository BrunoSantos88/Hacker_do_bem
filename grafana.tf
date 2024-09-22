resource "docker_container" "grafana" {
  name         = "grafana"
  image        = "grafana/grafana"
  ports {
    internal = 3000
    external = 3000
  }

  volumes {
    host_path      = "/task-manager/grafana/data"
    container_path = "/task-manager"
  }

  user = "1001:1001"

  env = ["GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource", " GF_SECURITY_ADMIN_USER=admin",
          "GF_SECURITY_ADMIN_PASSWORD=admin", "GF_USERS_ALLOW_SIGN_UP=false"]

  restart = "always"
}