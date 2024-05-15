# Gerenciamento de identidade e acesso

- O gerenciamento de identidade e acesso (IAM, do inglês Identity and Access Management) é uma disciplina de segurança da informação que se concentra em garantir a segurança, a eficiência e a conformidade nas interações de usuários com sistemas digitais. Este processo abrange desde a criação e manutenção de identidades digitais até o controle dos privilégios de acesso associados a essas identidades.

- Um sistema de controle de acesso é o conjunto de controles técnicos que governam como os sujeitos podem interagir com os objetos. Os sujeitos, neste sentido, são usuários, dispositivos ou processos de software ou qualquer outra coisa que possa solicitar e ter acesso a um recurso. Os objetos são os recursos. Podem ser redes, servidores, bancos de dados, arquivos e assim por diante. Um sistema de gerenciamento de identidade e acesso (IAM) pode ser descrito em termos de quatro processos principais:

- Identificação: A identificação refere-se ao processo de estabelecer a presença digital única de um usuário em um sistema. Significa atribuir uma identidade única, geralmente por meio de um nome de usuário ou ID exclusivo. Envolve a criação de uma conta ou ID que represente o usuário, dispositivo ou processo na rede.

- Importância: A identificação é o primeiro passo para a construção de perfis digitais, permitindo que o sistema reconheça e diferencie usuários individuais.

- Autenticação: A autenticação é o processo de verificar se a identidade apresentada é legítima. Isso geralmente é realizado por meio de credenciais, como senhas, tokens ou métodos biométricos. É a prova de que um sujeito é quem afirma ser quando tenta acessar o recurso.

- Importância: A autenticação assegura que apenas usuários autorizados tenham acesso aos recursos do sistema, fortalecendo a segurança.

- Autorização: A autorização determina as permissões e privilégios concedidos a um usuário autenticado. Ela estabelece quais direitos os sujeitos devem ter sobre cada recurso e fazer cumprir esses direitos. Baseia-se nas políticas de segurança e no perfil do usuário.

- Importância: A autorização garante que os usuários tenham acesso apenas aos recursos e informações relevantes às suas funções e responsabilidades.

- Contabilidade: Accounting, ou contabilidade, refere-se ao registro e monitoramento das atividades do usuário. Rastrear o uso autorizado de um recurso ou o uso de direitos por um sujeito e alertar quando o uso não autorizado for detectado ou tentado. Isso cria uma trilha de auditoria que pode ser usada para análise de segurança e conformidade.

- Importância: O accounting reforça a responsabilidade e fornece uma visão abrangente das ações realizadas no sistema, contribuindo para a detecção precoce de atividades suspeitas.

- O IAM permite definir os atributos que compõem a identidade de uma entidade, como finalidade, função, habilitação de segurança e muito mais. Posteriormente, esses atributos permitem que os sistemas de gerenciamento de acesso tomem decisões informadas sobre conceder ou negar acesso a uma entidade e, se concedido, decidir o que a entidade tem autorização para fazer. Por exemplo, um funcionário individual pode ter sua identidade em um sistema IAM. A função do funcionário na empresa influencia sua identidade, como em que departamento o funcionário está e se ele é o gerente.

- Os servidores e protocolos que implementam essas funções são chamados de autenticação, autorização e contabilidade (AAA). O uso do IAM para descrever processos e fluxos de trabalho empresariais está se tornando cada vez mais predominante à medida que a importância da fase de identificação é mais reconhecida.

# Fatores de autenticação

- Os fatores de autenticação referem-se aos métodos e elementos utilizados para verificar a identidade de um usuário antes de conceder acesso a sistemas, dispositivos ou informações sensíveis. Esses fatores oferecem diferentes abordagens para assegurar que a pessoa ou entidade que está se autenticando é realmente quem afirma ser. Cada um deles desempenha um papel essencial na criação de sistemas de autenticação robustos, e muitas implementações bem-sucedidas combinam vários desses elementos para criar uma defesa multicamadas contra acessos não autorizados. Existem muitas tecnologias para definir credenciais e podem ser categorizadas como fatores, como mostrado a seguir:

- Autenticação baseada no que você conhece (Knowledge Factor): A autenticação baseada no Knowledge Factor envolve o uso de informações que o usuário conhece para validar sua identidade. Isso comumente inclui senhas, personal identification numbers (PIN) ou respostas a perguntas específicas. Uma passphrase é uma senha mais longa composta por várias palavras. Ela tem a vantagem de ser mais segura e fácil de lembrar. No entanto, desafios incluem a necessidade de criar senhas robustas e a gestão adequada para evitar vulnerabilidades.

- Exemplos: Senhas de contas online, códigos PIN de cartões bancários ou respostas a perguntas de segurança, como o nome do primeiro animal de estimação.

- Autenticação baseada em algo que você tem (Ownership Factor): A autenticação baseada no Ownership Factor requer que o usuário possua um objeto específico para confirmar sua identidade. Isso pode incluir cartões inteligentes, tokens de segurança ou dispositivos físicos. O Ownership Factor acrescenta uma camada extra de segurança, uma vez que um invasor teria que possuir fisicamente o objeto para obter acesso. Isso é comum em ambientes corporativos, onde cartões de acesso ou tokens geram códigos temporários para autenticação.

- Exemplos: Cartões de acesso magnético, tokens de autenticação por tempo limitado ou chaves de hardware.

- Autenticação baseada no que você é ou faz (Biometric Factor): A autenticação baseada no Biometric Factor utiliza características únicas do corpo ou comportamentos individuais para confirmar a identidade. Isso engloba impressões digitais, reconhecimento facial, íris, voz e até mesmo padrões de digitação. O Biometric Factor oferece uma abordagem altamente personalizada, uma vez que cada indivíduo possui características únicas. No entanto, desafios incluem a necessidade de sistemas robustos para lidar com avarias ou falsificações biométricas.

- Exemplos: Desbloqueio de smartphones por reconhecimento facial, leitores de impressões digitais para acesso a edifícios ou autenticação por voz em sistemas de segurança.