# Cross-Site Request Forgery (CSRF)

O Cross-Site Request Forgery (CSRF) é um tipo de ataque cibernético que explora a confiança que um site ou aplicativo tem em um usuário autenticado. Nesse tipo de ataque, um invasor engana um usuário legítimo para que execute ações não intencionais em um site ou aplicativo no qual o usuário já está autenticado. O ataque ocorre quando o invasor convence o usuário a fazer uma solicitação HTTP maliciosa, sem o conhecimento ou consentimento do usuário, que é então processada pela aplicação web como uma ação legítima do usuário autenticado. Para entender como um ataque CSRF funciona, considere o seguinte:

* Um Cenário Hipotético
```
Um usuário autentica-se em um aplicativo bancário online e obtém um cookie de sessão.

O usuário visita um site malicioso enquanto ainda está autenticado no aplicativo bancário.

O site malicioso incorpora um código HTML ou JavaScript que faz uma solicitação HTTP para transferir fundos da conta do usuário no aplicativo bancário para a conta do invasor, sem que o usuário perceba.

Como o navegador do usuário está enviando automaticamente o cookie de sessão ao aplicativo bancário, a solicitação maliciosa é tratada como se fosse do usuáriolegítimo, e os fundos são transferidos sem o consentimento do usuário.
```

# Prevenção e Mitigação de Ataques CSRF

Para prevenir e mitigar os ataques CSRF, é fundamental implementar medidas de segurança que garantam que as solicitações sejam legítimas e originárias de fontes confiáveis. As seguintes medidas que podem ser implementadas:


- Token Anti-CSRF (CSRF Token): Uma das técnicas mais eficazes para mitigar ataques CSRF é o uso de tokens anti-CSRF. Um token CSRF é um valor único gerado pelo servidor e associado a uma sessão de usuário. Esse token é incluído em formulários ou em solicitações HTTP e é verificado pelo servidor para garantir que a solicitação seja legítima. Esses tokens são eficazes porque um atacante não pode prever ou obter o valor correto do token CSRF de um usuário legítimo, mesmo que consiga enganar o usuário para que ele faça uma solicitação maliciosa.

- Origens de Referência (Same-Site): Configurar cookies com a política Same-Site ajuda a impedir que cookies sejam enviados em solicitações CSRF. Isso limita a origem das solicitações que podem ser consideradas autênticas.

- Verificação de Origem (Origin): Os navegadores modernos suportam o cabeçalho HTTP Origin, que pode ser usado para verificar se uma solicitação é originada de um domínio legítimo. O servidor pode verificar o cabeçalho Origin para garantir que as solicitações venham de fontes confiáveis.

- Requerer Confirmação de Ações Críticas: Para ações críticas, como transferências de fundos ou alterações de senha, os aplicativos podem exigir que os usuários confirmem a ação, mesmo que já estejam autenticados.

- Tempo de Expiração de Sessão: Implementar um tempo de expiração de sessão curto pode reduzir o risco de ataques CSRF, pois os tokens CSRF têm uma janela de oportunidade limitada para serem usados.

# Clickjacking

- O Clickjacking é um tipo de ataque cibernético em que um invasor engana um usuário para que clique em algo diferente do que ele percebe. Isso geralmente é feito ocultando ou mascarando elementos de uma página web real por trás de elementos de outra página. Quando o usuário clica em algo que ele acredita ser inofensivo ou legítimo, na verdade, ele está clicando em algo malicioso ou executando uma ação indesejada sem o seu conhecimento ou consentimento.

- Os ataques de clickjacking são executados por meio de várias técnicas. Aqui está um exemplo simplificado de como um ataque de clickjacking pode ocorre


# Etapas de um ataque de clickjacking

- O invasor cria uma página web maliciosa que contém um elemento oculto, como um botão ou um campo de entrada, que executa uma ação indesejada, como transferir fundos de uma conta.

- O invasor posiciona essa página maliciosa sobre uma página legítima que o usuário deseja interagir, como uma página de login de um banco.

- A página maliciosa é ajustada de forma que o elemento oculto coincida visualmente com um elemento legítimo da página subjacente, como um botão de "Login" ou "Transferência de Fundos."

- Quando o usuário clica no que parece ser o botão de login, na verdade, ele está clicando no elemento oculto da página maliciosa, que executa a ação indesejada, como transferir fundos, sem o conhecimento do usuário.


# Prevenção de Clickjacking


- Uso de Cabeçalhos HTTP como X-Frame-Options: Os cabeçalhos HTTP, como o X-Frame-Options, podem ser configurados para controlar como as páginas web podem ser incorporadas em iframes. Configurar o cabeçalho X-Frame-Options com a opção "DENY" ou "SAMEORIGIN" ajuda a evitar que uma página seja incorporada em iframes não autorizados, reduzindo o risco de clickjacking.

- Frame-Busting JavaScript: O uso de JavaScript na página web pode ajudar a detectar se a página está sendo exibida em um iframe e, em seguida, redirecionar o navegador para a página original, interrompendo a tentativa de clickjacking.

- Políticas de Segurança de Conteúdo: As políticas de segurança de conteúdo (Content Security Policy - CSP) podem ser configuradas para controlar quais origens são permitidas para incorporar conteúdo na página. Isso ajuda a impedir a incorporação maliciosa de páginas em iframes.

- Validação Visual: Os desenvolvedores podem adicionar validação visual à página para verificar se elementos ocultos não estão sendo sobrepostos ou mascarados por elementos maliciosos. Essa validação pode ser feita por meio de técnicas como verificação de visibilidade de elementos.