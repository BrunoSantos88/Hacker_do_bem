# Autenticação baseada em conhecimento

- Ao longo desta aula, veremos tecnologias como a do Single Sign-On (SSO) e dos protocolos PAP, CHAP, MS-Chap authentication, entendendo como esses recursos contribuem para a segurança dos dados. Além disso, abordaremos os desafios enfrentados, examinando ataques de senha, tais como força bruta e de dicionário, e discutiremos estratégias robustas de gerenciamento de autenticação.


# Implementando Autenticação Baseada em Conhecimento

- A autenticação baseada em conhecimento refere-se principalmente à criação de credenciais de usuários com mecanismos de acesso à conta baseados em senha. Configurar protocolos de autenticação baseados em senha e fornecer suporte a usuários com problemas de autenticação é uma parte importante da função de segurança da informação. Neste tópico, você aprenderá como funcionam alguns protocolos de autenticação comuns e como eles podem ser configurados por meio de técnicas de quebra de senha.

- Autenticação Local, de Rede e Remota
Um dos recursos mais importantes de um sistema operacional é o provedor de autenticação, que é a arquitetura de software e o código que sustenta o mecanismo pelo qual o usuário é autenticado antes de iniciar um shell. Isso geralmente é descrito como login (Linux) ou logon ou sign-in (Microsoft). A autenticação baseada em conhecimento, usando uma senha ou número de identificação pessoal (PIN), é o provedor de autenticação padrão para a maioria dos sistemas operacionais.

- O processo de login: É uma sequência de passos pelos quais um usuário fornece suas credenciais para acessar um sistema, aplicativo ou recurso protegido. Essas credenciais geralmente consistem em um nome de usuário (ou identificador) e uma senha ou PIN, mas também podem incluir outros fatores, como autenticação biométrica (impressão digital, reconhecimento facial) ou tokens de segurança.

- A autenticação baseada em conhecimento depende de hashes criptográficos. Uma senha em texto simples geralmente não é transmitida ou armazenada em um banco de dados de credenciais devido ao risco de comprometimento. Em vez disso, a senha é armazenada como um hash criptográfico. Quando um usuário insere uma senha para efetuar login, um autenticador converte o que é digitado em um hash e o transmite para uma autoridade. A autoridade compara o hash enviado com o do banco de dados e autentica somente se eles corresponderem. Aqui estão os passos típicos envolvidos no processo de login:

- Identificação do Usuário: O usuário fornece um identificador exclusivo, como um nome de usuário, endereço de e-mail ou número de identificação.

- Fornecimento de Credenciais: O usuário informa a senha associada ao identificador fornecido. Em alguns casos, podem ser necessários passos adicionais, como a inserção de um código de autenticação ou o uso de métodos biométricos.

- Envio das Credenciais ao Sistema: As informações de identificação e credenciais são enviadas ao sistema de autenticação, seja localmente no dispositivo ou em um servidor remoto.

- Validação das Credenciais: O sistema verifica a correspondência entre as credenciais fornecidas e aquelas armazenadas em sua base de dados. Se as credenciais são válidas, o usuário é autenticado.

- Concessão de Acesso: Uma vez autenticado com sucesso, o sistema concede ao usuário acesso aos recursos, serviços ou informações autorizados.

- Geração de Sessão: Uma sessão é estabelecida para o usuário, permitindo a interação contínua com o sistema sem a necessidade de autenticação repetida durante um período específico.

- Autenticação Local: A autenticação local refere-se ao processo de verificar a identidade de um usuário em um dispositivo específico. Neste cenário, o usuário interage diretamente com o sistema, como um computador pessoal ou um dispositivo móvel, para ganhar acesso aos recursos locais.

- Implementação Prática: Exemplo comum é a utilização de senhas ou PINs para acessar um computador pessoal. Além disso, em dispositivos mais avançados, a autenticação biométrica, como leitores de impressões digitais em smartphones, exemplifica a segurança local.

- Autenticação de Rede: A autenticação de rede expande o escopo para incluir o acesso a recursos compartilhados em uma rede corporativa. Nesse caso, a verificação de identidade não ocorre no dispositivo local, mas sim em um servidor central, como o Active Directory no ecossistema Windows.

- Implementação Prática: Em ambientes corporativos, um exemplo seria o uso do protocolo LDAP (Protocolo de Acesso a Diretório Leve) para autenticar usuários em um servidor centralizado. Outro exemplo é em um ambiente corporativo que utiliza o Active Directory (AD), os usuários autenticam suas credenciais em um servidor central ao ingressar na rede. Em ambos os casos permite que os recursos compartilhados, como servidores de arquivos, impressoras e aplicativos sejam acessados, garantindo a integridade e a segurança dos dados.

- Autenticação Remota: A autenticação remota permite a validação da identidade de usuários que buscam acessar recursos a partir de locais geograficamente distintos. Isso é essencial para organizações com equipes distribuídas globalmente ou que permitem o trabalho remoto.

- Implementação Prática: A utilização de VPNs (Redes Privadas Virtuais) é um exemplo notável. Usuários remotos se conectam à rede corporativa através de uma conexão segura, estabelecendo um túnel criptografado que permite a autenticação remota como se estivessem fisicamente na sede da empresa.