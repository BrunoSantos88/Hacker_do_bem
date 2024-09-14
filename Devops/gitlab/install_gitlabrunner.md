* Crie um diretório gitlab-runner no caminho /home/aluno:
```
mkdir /home/aluno/gitlab-runner
```

* Agora navegue até esse diretório criado e vamos criar o arquivo docker-compose.yml para implantar o gitlab-runner:

* Crie o arquivo docker-compose.yml:
```
nano docker-compose.yml
```
* Adicione o seguinte conteúdo ao arquivo:
```
version: '3.8'

services:
  gitlab-runner1:
    image: gitlab/gitlab-runner:alpine
    restart: always
    container_name: gitlab-runner1
    hostname: gitlab-runner1
    volumes:
      - ./config/gitlab-runner:/etc/gitlab-runner
      - /var/run/docker.sock:/var/run/docker.sock
    networks:
      gitlab-network: 
        aliases:
          - gitlab-runner1

networks:
  gitlab-network:
    external: 
      name: gitlab
```
* Salve as alterações no arquivo e saia do editor:

* Execute o comando abaixo para subir o container do gitlab-runner:
```
docker-compose up -d
```
* Para o próximo passo, você precisará do token de registro do Runner no GitLab. Para obter o token de registro, siga as etapas conforme tela abaixo:

* Acesse o GitLab e vá para o seu projeto.

* No menu à esquerda, clique em "Settings" e depois em "CI/CD".

* Role para baixo até a seção "Runners" e copie o token de registro.

* O token de registro será necessário para registrar o runner no GitLab.

* Anote o token de registro para uso posterior.

* A imagem abaixo ilustra o local onde você pode encontrar o token de registro do GitLab Runner


    Uma vez implantado o gitlab-runner, vamos criar um script para registrar o runner no GitLab:

    a. Crie o arquivo gitlab-runner-register.sh:
```
   nano gitlab-runner-register.sh
```
* Adicione o seguinte conteúdo ao arquivo:
```
#!/bin/sh
# Token e Registro
registration_token="<Insira o token criado no Passo 1.2.e>"
url="http://192.168.98.10"

sudo docker exec -it gitlab-runner1 \
gitlab-runner register \
    --non-interactive \
    --registration-token ${registration_token} \
    --locked=false \
    --description docker-stable \
    --url ${url} \
    --executor docker \
    --docker-image docker:stable \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
    --docker-network-mode gitlab
```
* Salve as alterações no arquivo e saia do editor:
* Ctrl+X, Y, Enter
* Execute o script para registrar o runner no GitLab:
```
bash gitlab-runner-register.sh
```