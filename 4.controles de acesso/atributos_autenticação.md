# Atributos de autenticação

- Comparado aos três principais fatores de autenticação, um atributo de autenticação é uma propriedade ou fator não exclusivo, ou seja, que não pode ser usado independentemente.

- Autenticação baseada no Local: A autenticação baseada no local valida a identidade do usuário com base em sua localização física. Isso pode envolver o uso de dispositivos de geolocalização, como GPS, para confirmar se o usuário está em uma área específica. A autenticação pode também medir algumas estatísticas sobre onde você está. Pode ser uma localização geográfica medida através do serviço de localização de um dispositivo, ou pode ser por endereço IP. O endereço IP de um dispositivo pode ser usado para se referir a um segmento de rede ou pode ser vinculado a uma localização geográfica usando um serviço de geolocalização. Entre as possibilidades dentro de uma rede, a localização física por porta, LAN virtual (VLAN) ou rede Wi-Fi também pode ser o meio para a autenticação baseada no local.

- Em todos os casos, a autenticação baseada em localização não é usada como fator de autenticação primário, mas pode ser usada como mecanismo de autenticação contínua ou como recurso de controle de acesso. Por exemplo, se um usuário inserir as credenciais corretas em um gateway VPN, mas seu endereço IP mostrar que ele/ela está em um país diferente do esperado, controles de acesso poderão ser aplicados para restringir os privilégios concedidos ou recusar completamente o acesso. Outro exemplo é quando um usuário parece fazer login em locais geográficos diferentes que o tempo de viagem tornaria fisicamente impossível.

- Exemplos de uso:

- Acesso a Redes Corporativas: Garantir que o acesso a redes corporativas sensíveis seja concedido apenas quando o usuário estiver em locais predefinidos.

- Transações Financeiras: Reforçar a segurança ao autorizar transações apenas se o usuário estiver fisicamente próximo ao ponto de compra.

- Autenticação baseada em comportamento (algo que você pode fazer): Este tipo de autenticação leva em consideração os padrões de comportamento do usuário, como a velocidade de digitação, a forma como segura um dispositivo ou a maneira como navega em uma página. Características comportamentais, como a maneira como você anda ou segura o smartphone, podem identificá-lo de maneira única em um número considerável de atividade. Embora esse fator seja impraticável para autenticação primária, ele pode ser usado para autenticação contextual e contínua para garantir que um dispositivo continue a ser operado pelo proprietário.

- Exemplos de uso:

- Verificação Contínua: Sistemas que monitoram constantemente o comportamento do usuário, exigindo reautenticação se houver desvios significativos.

- Prevenção contra Ameaças Internas: Identificar comportamentos suspeitos que podem indicar atividades maliciosas dentro da organização.

- Autenticação baseada em algo que você exibe (comportamental): A autenticação comportamental considera como um usuário interage com interfaces digitais, analisando padrões como movimentos do mouse, velocidade de cliques e até mesmo a maneira como digita. Algo que você exibe também se refere à autenticação e autenticação baseada em comportamento, com ênfase específica em traços de personalidade. Por exemplo, a maneira como você usa aplicativos para smartphones ou mecanismos de pesquisa na web pode estar de acordo com um padrão de comportamento que pode ser capturado pela análise de aprendizado de máquina como um modelo estatístico. Se outra pessoa usar o dispositivo, seu comportamento será diferente e esse padrão anômalo poderá ser usado para bloquear o dispositivo e exigir nova autenticação.

- Exemplos de uso:

- Prevenção de Fraudes: Identificação de possíveis atividades fraudulentas com base em variações no comportamento do usuário.

- Identificação Contínua: Sistemas que adaptam a autenticação com base no comportamento observado ao longo do tempo.

- Autenticação baseada em alguém que você conhece: Este conceito envolve a autenticação com base no conhecimento de relações pessoais ou redes sociais. Pode incluir perguntas sobre pessoas conhecidas ou a validação por meio de contatos de confiança. Um esquema de autenticação de alguém que você conhece usa um modelo de rede de confiança, onde novos usuários são garantidos por usuários existentes. À medida que o usuário participa da rede, sua identidade fica mais estabelecida. Um exemplo é o modelo descentralizado de web de confiança, usado pela Pretty Good Privacy (PGP) Corp. como alternativa à PKI. O PGP é um software de criptografia de chave pública altamente seguro, originalmente escrito por Philip Zimmermann. Tornou-se um padrão de fato para a criptografia de correio eletrônico (e-mail) na internet.

- Exemplos de uso:

- Recuperação de Conta: Verificação de identidade por meio de informações sobre pessoas conhecidas durante processos de recuperação de conta.

- Acesso a Informações Sensíveis: Utilização de conhecidos como uma camada adicional de autenticação em sistemas sensíveis.