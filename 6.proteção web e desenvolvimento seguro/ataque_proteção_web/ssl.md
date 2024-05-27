# SSL Strip (Remoção de SSL)

* O SSL Strip é um tipo de ataque cibernético que visa interceptar o tráfego criptografado entre um usuário e um servidor, descriptografá-lo e redirecioná-lo para um servidor malicioso. O nome "SSL Strip" se origina do fato de que o ataque geralmente é direcionado a conexões SSL/TLS (Secure Sockets Layer/Transport Layer Security), que são usadas para proteger as comunicações online. O SSL Strip expõe as comunicações sensíveis dos usuários e para mitigar esse tipo de ataque, é fundamental implementar HTTPS rigoroso, usar políticas de segurança como HSTS e educar os usuários sobre como verificar a autenticidade dos certificados SSL/TLS. Essas medidas ajudam a proteger a privacidade e a segurança das comunicações online. O funcionamento do SSL Strip envolve as seguintes etapas:

- Interceptação: Um invasor posiciona-se entre o usuário e o servidor de destino, interceptando o tráfego entre eles. Isso pode ser realizado em redes Wi-Fi públicas não seguras, em redes comprometidas ou por meio de malware no dispositivo do usuário.

- Redirecionamento: O invasor redireciona as solicitações do usuário para um servidor malicioso, que atua como um intermediário entre o usuário e o servidor de destino legítimo.

- Descriptografia: O servidor malicioso descriptografa o tráfego que chega até ele, removendo a criptografia SSL/TLS. permite ao servidor malicioso acessar o conteúdo das comunicações, como senhas, informações de login ou dados confidenciais.

- Encaminhamento: Após a descriptografia, o servidor malicioso encaminha as solicitações para o servidor de destino real, mantendo o usuário inconsciente de que suas comunicações foram comprometidas. Em alguns casos, o servidor malicioso pode modificar o conteúdo das respostas do servidor de destino antes de enviá-las de volta ao usuário, possibilitando ataques de injeção de conteúdo.


# Mitigação de Ataques de Remoção de SSL

* A seguir estão algumas medidas de segurança que podem auxiliar na mitigação dos ataques de remoção de SSL.

- Implementação de HTTPS Estrito (Strict HTTPS): Os sites devem implementar HTTPS rigoroso, configurando seu servidor web para redirecionar automaticamente todas as solicitações HTTP para HTTPS. Isto garante que todas as páginas e recursos sejam carregados usando conexões seguras. Também deve implementar um certificado SSL/TLS confiável e configurá-lo corretamente no servidor. Isso evitará que os atacantes tenham a oportunidade de remover o SSL.

- HSTS (HTTP Strict Transport Security): A implementação da política HSTS ajuda a garantir que os navegadores sempre se conectem a um site por meio de HTTPS, mesmo que o usuário digite "http://" na barra de endereços. Isso reduz a exposição a ataques de remoção de SSL.

- Certificados de Segurança e Validação do Usuário: Os usuários devem ser educados sobre a importância de verificar a validade dos certificados SSL/TLS. Eles devem aprender a procurar sinais de segurança, como o ícone de cadeado e a conexão "https://" na barra de endereços. Além disso, devem ser incentivados a não ignorar avisos de certificado inválido em seus navegadores.

- Rede Segura: Evite o uso de redes Wi-Fi públicas não seguras para acessar informações confidenciais. Use uma conexão VPN (Virtual Private Network) em redes públicas para proteger suas comunicações.

- Segurança do Dispositivo: Mantenha dispositivos e navegadores atualizados com as últimas correções de segurança e use software antivírus e anti-malware confiáveis.


