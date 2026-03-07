# DevSecOps — Documentação Completa

Este módulo cobre práticas de **segurança integrada ao pipeline DevOps**, com foco em análise de vulnerabilidades com **Trivy**, monitoramento com **Prometheus + Grafana**, e provisionamento de infraestrutura com **Terraform**.

---

## Sumário

1. [Estrutura de Pastas](#estrutura-de-pastas)
2. [Lab 1 — Análise de Segurança com Trivy](#lab-1--análise-de-segurança-com-trivy)
3. [Lab 4 — Aplicação com Monitoramento (Docker Compose)](#lab-4--aplicação-com-monitoramento-docker-compose)
4. [Lab 5 — Infraestrutura como Código com Terraform](#lab-5--infraestrutura-como-código-com-terraform)

---

## Estrutura de Pastas

```
Devsecops/
├── README.md                          # Esta documentação
├── Lab1/
│   └── instal-trivy.md                # Guia de análise de segurança com Trivy
├── lab4/
│   └── reserva-salas/
│       ├── reservas.go                # Aplicação Go com métricas Prometheus
│       ├── Dockerfile                 # Imagem Docker da aplicação
│       ├── docker-compose.yml         # Stack completa: App + Prometheus + Grafana
│       └── prometheus/
│           └── prometheus.yml         # Configuração de scraping do Prometheus
└── lab5/
    └── reserva-salas/
        ├── reservas.go                # Aplicação Go (igual ao lab4)
        ├── Dockerfile                 # Imagem Docker da aplicação
        ├── go.mod                     # Módulo Go
        ├── provider.tf                # Provider Terraform (Docker)
        ├── imagen.tf                  # Recurso de build da imagem Docker
        ├── container.tf               # Container da aplicação reserva-salas
        ├── containers.tf              # Containers Prometheus e Grafana
        └── prometheus/
            └── prometheus.yml         # Configuração do Prometheus
```

---

## Lab 1 — Análise de Segurança com Trivy

O **Trivy** é uma ferramenta open-source de análise de vulnerabilidades em imagens Docker, sistemas de arquivos e repositórios.

### Passo 1 — Verificar instalação do Trivy

```bash
trivy -v
```

### Passo 2 — Listar imagens Docker disponíveis

```bash
docker images
```

Localize a imagem `reserva-salas` na lista.

### Passo 3 — Executar análise de segurança

```bash
trivy image reserva-salas > resultado_trivy.txt
```

Visualize o resultado:

```bash
cat resultado_trivy.txt
```

> Acesse o [National Vulnerability Database (NVD)](https://nvd.nist.gov/) para pesquisar cada CVE encontrado.

### Passo 4 — Tipos de relatórios

**Relatório geral:**
```bash
trivy image --output trivy_report.txt reserva-salas
```

**Apenas vulnerabilidades ALTA e CRITICA:**
```bash
trivy image --output trivy_severity_report.txt --severity HIGH,CRITICAL reserva-salas
```

**Por tipo de pacote (SO):**
```bash
trivy image --output trivy_package_report.txt --vuln-type os reserva-salas
```

**Com informacoes de licencas:**
```bash
trivy image --output trivy_license_report.txt --license-full reserva-salas
```

**Em formato JSON:**
```bash
trivy image --format json reserva-salas > resultado.json
```

### Passo 5 — Reduzindo o footprint com docker-slim

```bash
# Iniciar o container do docker-slim
docker run -it --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(pwd):/app -w /app \
  dslim/docker-slim:1.39.1 bash

# Dentro do docker-slim, criar versão reduzida da imagem
build --http-probe-off reserva-salas
```

Compare o tamanho antes e depois:

```bash
docker images
# Exemplo de resultado:
# REPOSITORY           TAG      IMAGE ID       SIZE
# reserva-salas        latest   abc123         200MB
# reserva-salas.slim   latest   0b3b3b3b       12.8MB
```

### Passo 6 — Integrando Trivy ao Pipeline CI/CD

Adicione o estágio `test3` ao `.gitlab-ci.yml`:

```yaml
stages:
  - build
  - test1
  - test2
  - test3
  - deploy
  - notify
```

Adicione o job de varredura de segurança:

```yaml
security_scan:
  stage: test3
  image: docker:stable
  services:
    - docker:dind
  variables:
    DOCKER_DRIVER: overlay2
  before_script:
    - apk add --no-cache curl
    - curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin
  script:
    - trivy image --severity HIGH,CRITICAL reserva-salas
  cache:
    key: ${CI_COMMIT_REF_SLUG}
    paths:
      - /root/.cache/trivy
  only:
    - master
```

Salve e envie ao repositório:

```bash
git add .
git commit -m "Adiciona varredura de segurança ao pipeline"
git push origin master
```

### Passo 7 — Pipeline com critério de bloqueio

Use `--exit-code 1` para **bloquear o pipeline** se vulnerabilidades ALTA ou CRITICA forem encontradas:

```yaml
security_scan:
  stage: test3
  image: docker:stable
  services:
    - docker:dind
  variables:
    DOCKER_DRIVER: overlay2
  before_script:
    - apk add --no-cache curl
    - curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin
  script:
    - trivy image --exit-code 1 --severity HIGH,CRITICAL reserva-salas
  cache:
    key: ${CI_COMMIT_REF_SLUG}
    paths:
      - /root/.cache/trivy
  only:
    - master
```

> Com `--exit-code 1`, o pipeline falha automaticamente se qualquer vulnerabilidade grave for detectada, impedindo o deploy de código inseguro.

---

## Lab 4 — Aplicação com Monitoramento (Docker Compose)

### Aplicação: reservas.go

Servidor HTTP em Go com exposicao de métricas para o Prometheus.

```go
package main

import (
    "fmt"
    "net/http"
    "os"

    "github.com/prometheus/client_golang/prometheus"
    "github.com/prometheus/client_golang/prometheus/promhttp"
)

var (
    requestsTotal = prometheus.NewCounterVec(
        prometheus.CounterOpts{
            Name: "myapp_requests_total",
            Help: "Total number of requests",
        },
        []string{"method", "path"},
    )
)

func init() {
    prometheus.MustRegister(requestsTotal)
}

func main() {
    greeting := os.Getenv("MESSAGE")
    if greeting == "" {
        greeting = "Hello, World!"
    }

    http.HandleFunc("/", handler(greeting))
    http.Handle("/metrics", promhttp.Handler())

    port := os.Getenv("PORT")
    if port == "" {
        port = "8080"
    }

    fmt.Printf("Listening on port %s...\n", port)
    http.ListenAndServe(":"+port, nil)
}

func handler(greeting string) http.HandlerFunc {
    return func(w http.ResponseWriter, r *http.Request) {
        requestsTotal.WithLabelValues(r.Method, r.URL.Path).Inc()
        fmt.Fprintf(w, "%s\n", greeting)
    }
}
```

**Endpoints disponíveis:**
| Endpoint   | Descricao                          |
|------------|-------------------------------------|
| `/`        | Retorna a mensagem de saudacao      |
| `/metrics` | Expoe métricas no formato Prometheus|

**Variaveis de ambiente:**
| Variavel  | Padrao         | Descricao              |
|-----------|----------------|------------------------|
| `MESSAGE` | `Hello, World!`| Mensagem de saudacao   |
| `PORT`    | `8080`         | Porta da aplicacao     |

### Dockerfile (lab4)

```dockerfile
FROM golang:latest
WORKDIR /app
COPY . /app
RUN go mod init example.com/m/v2
RUN go mod tidy
RUN go get github.com/prometheus/client_golang/prometheus
RUN go build -o reserva-salas
EXPOSE 8080
CMD ["./reserva-salas"]
```

### Construir a imagem

```bash
cd lab4/reserva-salas
docker build -t reserva-salas .
```

### Docker Compose — Stack completa

`lab4/reserva-salas/docker-compose.yml`:

```yaml
version: '3'
services:
  web:
    image: reserva-salas
    container_name: reserva-salas
    ports:
      - 8080:8080
    volumes:
      - /home/aluno/reserva-salas/dados:/app/dados

  prometheus:
    image: prom/prometheus
    restart: always
    volumes:
      - ./prometheus:/etc/prometheus/
      - ./prometheus/data:/prometheus.yml
    ports:
      - 9090:9090

  grafana:
    image: grafana/grafana
    user: "1001:1001"
    environment:
      GF_INSTALL_PLUGINS: 'grafana-clock-panel,grafana-simple-json-datasource'
      GF_SECURITY_ADMIN_USER: 'admin'
      GF_SECURITY_ADMIN_PASSWORD: 'admin'
      GF_USERS_ALLOW_SIGN_UP: 'false'
    volumes:
      - grafana_data:/var/lib/grafana
    ports:
      - 3000:3000
    depends_on:
      - prometheus

volumes:
  grafana_data:
  prometheus_data:
```

### Configuração do Prometheus

`lab4/reserva-salas/prometheus/prometheus.yml`:

```yaml
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: 'sistema-de-reserva-de-salas'
    static_configs:
      - targets: ['192.168.98.10:8080']
```

### Subir a stack

```bash
cd lab4/reserva-salas
docker-compose up -d
```

### Acessos

| Servico    | URL                       | Usuario | Senha |
|------------|---------------------------|---------|-------|
| Aplicacao  | http://localhost:8080     | —       | —     |
| Prometheus | http://localhost:9090     | —       | —     |
| Grafana    | http://localhost:3000     | admin   | admin |

---

## Lab 5 — Infraestrutura como Código com Terraform

O Lab 5 replica o Lab 4, porém usando **Terraform** para provisionar todos os containers Docker como infraestrutura declarativa.

### Aplicação: reservas.go

Mesmo código do Lab 4 com métricas Prometheus. Modulo Go (`go.mod`):

```
module reserva-salas

go 1.19
```

### Dockerfile (lab5)

```dockerfile
FROM golang:latest
WORKDIR /app
COPY . /app
RUN go mod tidy
RUN go get github.com/prometheus/client_golang/prometheus
RUN go build -o reserva-salas
CMD ["./reserva-salas"]
```

### Arquivos Terraform

#### provider.tf — Provider Docker

```hcl
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}
```

#### imagen.tf — Build da imagem Docker

```hcl
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "reserva" {
  name = "reserva"
  build {
    context    = "."
    dockerfile = "./Dockerfile"
  }
  keep_locally = false
}
```

#### container.tf — Container da aplicacao

```hcl
resource "docker_container" "reserva" {
  name  = "reserva"
  image = docker_image.reserva.image_id
  ports {
    internal = 8080
    external = 8080
  }

  volumes {
    host_path      = "/home/aluno/reserva-salas/dados"
    container_path = "/app/dados"
  }

  restart = "always"
}
```

#### containers.tf — Prometheus e Grafana

```hcl
resource "docker_container" "prometheus" {
  name  = "prometheus"
  image = "prom/prometheus"
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
  name  = "grafana"
  image = "grafana/grafana"
  ports {
    internal = 3000
    external = 3000
  }

  volumes {
    host_path      = "/reserva-salas/grafana/data"
    container_path = "/reserva-salas"
  }

  user = "1001:1001"

  env = [
    "GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource",
    "GF_SECURITY_ADMIN_USER=admin",
    "GF_SECURITY_ADMIN_PASSWORD=admin",
    "GF_USERS_ALLOW_SIGN_UP=false"
  ]

  depends_on = [docker_container.prometheus]
  restart    = "always"
}
```

### Como provisionar com Terraform

```bash
cd lab5/reserva-salas

# Inicializar o Terraform e baixar o provider
terraform init

# Verificar o plano de execucao
terraform plan

# Aplicar e provisionar a infraestrutura
terraform apply
```

Para destruir a infraestrutura:

```bash
terraform destroy
```

### Acessos (Lab 5)

| Servico    | URL                       | Usuario | Senha |
|------------|---------------------------|---------|-------|
| Aplicacao  | http://localhost:8080     | —       | —     |
| Prometheus | http://localhost:9090     | —       | —     |
| Grafana    | http://localhost:3000     | admin   | admin |

---

## Visao Geral da Arquitetura

```
+-------------------------------------------------------+
|                   Pipeline CI/CD (GitLab)             |
|                                                       |
|  [build] --> [test1] --> [test2] --> [test3: Trivy]   |
|           --> [deploy] --> [notify]                   |
+-------------------------------------------------------+
                          |
                          v
+-------------------------------------------------------+
|              Infraestrutura (Docker / Terraform)      |
|                                                       |
|  +----------------+    +-------------+  +---------+  |
|  | reserva-salas  |--->| Prometheus  |->| Grafana |  |
|  | :8080          |    | :9090       |  | :3000   |  |
|  | /metrics       |    |             |  |         |  |
|  +----------------+    +-------------+  +---------+  |
+-------------------------------------------------------+
```

---

## Diferença entre Lab 4 e Lab 5

| Aspecto            | Lab 4 (Docker Compose)       | Lab 5 (Terraform)                  |
|--------------------|------------------------------|------------------------------------|
| Provisionamento    | `docker-compose up -d`       | `terraform apply`                  |
| Declaracao         | `docker-compose.yml`         | `.tf` files                        |
| Estado             | Nao gerenciado               | `terraform.tfstate`                |
| Reproducibilidade  | Manual                       | Automatizada e versionada          |
| Rollback           | Manual                       | `terraform destroy` + `apply`      |

---

## Referencias

- [Trivy — Aqua Security](https://aquasecurity.github.io/trivy/)
- [Prometheus](https://prometheus.io/docs/)
- [Grafana](https://grafana.com/docs/)
- [Terraform Docker Provider](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs)
- [NVD — National Vulnerability Database](https://nvd.nist.gov/)
