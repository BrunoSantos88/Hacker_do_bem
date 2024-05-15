# Single sign-on (SSO)

- Um sistema de logon único (SSO) permite que o usuário se autentique uma vez em um dispositivo local e seja autenticado em servidores de aplicativos compatíveis sem precisar inserir credenciais novamente. É uma solução de autenticação que permite que um usuário acesse vários sistemas ou aplicativos com uma única autenticação. Em vez de exigir que o usuário faça login separadamente em cada serviço, o SSO autentica o usuário uma vez e concede acesso aos demais serviços sem a necessidade de autenticação adicional. Isso não apenas simplifica a experiência do usuário, mas também melhora a segurança, pois reduz o número de senhas que um usuário precisa gerenciar. O Single Sign-On é implementado em diferentes ambientes e sistemas usando diferentes padrões e protocolos, como OAuth, OpenID Connect e SAML (Security Assertion Markup Language), dependendo dos requisitos e das características do ambiente de implantação. No Windows, o SSO é fornecido pela estrutura Kerberos. As etapas do Processo de Single Sign-On podem incluir:

- Autenticação Inicial: O processo começa quando o usuário realiza a autenticação inicial em um dos serviços conectados ao sistema SSO. Normalmente, isso envolve o fornecimento de credenciais, como nome de usuário e senha.

- Emissão de Token de Sessão: Após a autenticação bem-sucedida, o sistema SSO emite um token de sessão para o usuário. Esse token é um identificador único que contém informações sobre a autenticação do usuário.

- Armazenamento Seguro do Token: O token de sessão é armazenado de forma segura no lado do cliente (geralmente em um cookie ou armazenamento local do navegador) e no lado do servidor. Esse armazenamento seguro permite que o sistema valide a identidade do usuário durante todo o processo de sessão.

- Acesso a Outros Serviços: Quando o usuário tenta acessar outros serviços ou aplicativos conectados ao sistema SSO, o token de sessão é apresentado. Em vez de exigir novas credenciais, o serviço utiliza o token para verificar a autenticidade do usuário.

- Renovação de Token: Periodicamente, o token pode ser renovado para garantir a segurança contínua. Isso geralmente é feito sem interrupção para o usuário, mantendo a experiência SSO sem a necessidade de reautenticação frequente.

- Logout Único (Single Logout): Quando o usuário decide encerrar a sessão, o SSO realiza um logout único, revogando o acesso a todos os serviços conectados simultaneamente. Isso garante que o usuário seja desconectado de todos os serviços associados ao SSO com apenas uma ação.