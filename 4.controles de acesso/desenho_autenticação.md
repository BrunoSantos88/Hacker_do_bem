# Desenho de autenticação

- O desenho de autenticação refere-se à criação e implementação de estratégias, políticas, processos e sistemas que verificam e validam a identidade de usuários antes de conceder acesso a meios ou informações. Este design abrange uma variedade de métodos e tecnologias para assegurar que apenas usuários autorizados possam interagir com recursos específicos. São várias as tecnologias disponíveis, mas o design de autenticação deve utilizar a mais adequada para cada caso de uso. A seleção de uma tecnologia precisa atender aos requisitos de confidencialidade, integridade e disponibilidade:

- Confidencialidade: Em termos de autenticação, é crítica porque, se as credenciais da conta vazarem, os agentes de ameaça podem se passar pelo titular da conta e agir no sistema com quaisquer direitos que possuam.

- Integridade: Significa que o mecanismo de autenticação é confiável e não é fácil para os agentes de ameaça contornarem ou enganarem com credenciais falsas.

- Disponibilidade: Significa que o tempo necessário para autenticação não impede os fluxos de trabalho e é bastante fácil para os usuários operarem.

# Aplicação Prática:

- Políticas de Senhas e Senhas Fortes: A implementação de senhas robustas, combinada com políticas efetivas de gerenciamento de senhas, é uma prática comum no design de autenticação. Senhas complexas, autenticação em dois fatores e expiração regular de senhas são elementos-chave.

- Biometria: Sistemas que utilizam características únicas do corpo, como impressões digitais, reconhecimento facial ou voz, exemplificam o design de autenticação avançado. Esses métodos oferecem uma camada adicional de segurança, pois são baseados em atributos únicos de cada indivíduo.

- Tokenização: A geração de códigos temporários por meio de tokens físicos ou aplicativos autenticadores representa uma abordagem eficaz no design de autenticação. Esses códigos dinâmicos garantem que apenas quem possui o dispositivo específico possa realizar a autenticação.