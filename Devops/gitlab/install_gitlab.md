* Instalação do GitLab com Docker

* a. Crie uma rede para o GitLab por meio de linha de comando.

sudo docker network create gitlab

* b. Agora, execute o contêiner do Docker para o GitLab. Este comando pode demorar alguns minutos para ser concluído.

```
sudo docker run --detach \
  --hostname 192.168.98.2 \
  --publish 80:80 \
  --publish 443:443 \
  --publish 9022:22 \
  --name gitlab \
  --restart always \
  --network gitlab \
  --volume /srv/gitlab/config:/etc/gitlab \
  --volume /srv/gitlab/logs:/var/log/gitlab \
  --volume /srv/gitlab/data:/var/opt/gitlab \
  gitlab/gitlab-ce:16.9.6-ce.0
```

 * Você será solicitado a inserir a senha do usuário root. para obter a senha, execute o seguinte comando na máquina virtual Linux para obter a senha inicial do GitLab:
```
sudo docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
```
* Você verá a senha associada ao usuário root do GitLab. No entanto, para facilitar o uso deste ambiente no treinamento, vamos trocar a senha inicial utilizando o seguinte comando:
```
sudo docker exec -it gitlab gitlab-rake "gitlab:password:reset"
```
* Este processo leva alguns instantes! Aguarde o processo terminar.

Você será solicitado a inserir o usuário e senha para para reset, sendo assim forneça os seguintes dados:

Enter username: root

Enter new password: RnpEsr123@

Enter new password again: RnpEsr123@