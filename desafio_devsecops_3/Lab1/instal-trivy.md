* Passo 1: Executar a Análise de Segurança com Trivy

Abra o terminal de comando em seu computador e verifique a versão do Trivy com o comando abaixo:
````
trivy -v
````
* Use o comando abaixo para listar a imagem Docker que criamos na aula 1.5:
````
docker images
````
* Procure a imagem 'reserva-salas' na lista.

* Use o comando abaixo para iniciar a análise de segurança da imagem Docker com o Trivy:

````
trivy image reserva-salas > resultado_trivy.txt
````
* Use um editor de texto para abrir o arquivo e marcar as vulnerabilidades listadas.
````
cat resultado_trivy.txt
````
* Use um navegador da web para visitar o site do National Vulnerability Database (https://nvd.nist.gov/) e pesquise cada vulnerabilidade marcada.

* Passo 2: Explorando o Trivy

* Use o comando abaixo para gerar relatórios das análises de segurança com o Trivy:
````
trivy image --output trivy_report.txt reserva-salas
````
* Para listar vulnerabilidades por severidade, use o comando abaixo:
````
trivy image --output trivy_severity_report.txt --severity HIGH,CRITICAL reserva-salas
````
* Isso lista apenas as vulnerabilidades de alta e crítica severidade.

* Para listar vulnerabilidades por pacote, use o comando abaixo:
````
trivy image --output trivy_package_report.txt --vuln-type os reserva-salas
````
* Para gerar um relatório com informações de licenças de software, use o comando abaixo:
````
trivy image --output trivy_license_report.txt --license-full reserva-salas
````
* Para gerar um relatório detalhado com informações análise de segurança em formato JSON, use o comando abaixo:
````
trivy image --format json reserva-salas > resultado.json
````
* Passo 3 - Reduzindo o Footprint da Aplicação

* Use o comando abaixo para listar todas as imagens Docker e encontre a imagem 'node-app' na lista.
````
docker images
````
* Incie o contêiner do docker-slim:
````
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/app -w /app dslim/docker-slim:1.39.1 bash
````
* Dentro do tela de comando do docker-slim, use o comando abaixo para criar uma versão "emagrecida" de sua imagem Docker:
````
build --http-probe-off reserva-salas
````
* Use o comando docker images para listar todas as imagens Docker:
````
docker images
````
* Você deve ver uma diferença significativa no tamanho das imagens, semelhante ao exemplo abaixo:
````
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
reserva-salas.slim  latest              0b3b3b3b3b3b        12 seconds ago       12.8MB
````
* Compare o tamanho da imagem original e reduzida.
* Passo 4: Acrescentando a Varredura de Segurança ao Pipeline de CI/CD
````
Agora que você já conhece como executar a varredura de segurança, vamos incluir essa etapa no nosso pipeline de CI/CD, permitindo que a cada commit essa análise seja realizada automaticamente. Vamos utilizar o Trivy para esta tarefa.
````
* Abra seu arquivo .gitlab-ci.yml em um editor de texto.

* Adicione um novo estágio ao pipeline chamado test3.
````
stages:
  - build
  - test1
  - test2
  - test3
  - deploy
  - notify
````
* Adicione o job de varredura de segurança no estágio security_scan.
````
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
````

* Esse job faz o seguinte: utilizando a imagem docker:stable e o serviço docker:dind (Docker-in-Docker), ele executa a varredura com Trivy na nossa imagem reserva-salas.

* Salve o arquivo .gitlab-ci.yml:

* Ctrl + X, Y, Enter

* Faça commit do arquivo .gitlab-ci.yml.
````
git add .
git commit -m "Adiciona varredura de segurança ao pipeline"
git push origin master
````
* Com essas modificações, agora seu pipeline CI/CD inclui uma etapa de varredura de segurança. Lembre-se, o objetivo não é apenas identificar as vulnerabilidades, mas corrigi-las para garantir a segurança da sua aplicação.
Passo 5: Executando o Pipeline de CI/CD com critérios de segurança

* Podemos também adicionar a instrução --exit-code 1 que faz com que o job falhe se qualquer vulnerabilidade de severidade ALTA ou CRÍTICA for encontrada, impedindo assim a conclusão bem sucedida do pipeline e evitando a implantação de código vulnerável.

* Abrir o arquivo .gitlab-ci.yml em um editor de texto.

* adicionar a instrução --exit-code 1 ao job de segurança. Confira o exemplo abaixo:
````
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
````
* Salve o arquivo .gitlab-ci.yml e faça commit das alterações.

* Execute o pipeline de CI/CD com as alterações feitas.

* Verifique no Pipeline se o job de segurança falha se uma vulnerabilidade de severidade ALTA ou CRÍTICA for encontrada.

* Remova a instrução --exit-code 1 do job de segurança e faça commit e push das alterações.