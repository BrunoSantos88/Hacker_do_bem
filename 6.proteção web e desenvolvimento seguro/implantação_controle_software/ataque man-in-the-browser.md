# Ataque Man-in-the-Browser

- Criptografia: Utilize comunicações seguras por meio de criptografia para proteger os dados em trânsito.

- Autenticação Multi-fator: Exija autenticação adicional, como senhas de uso único ou reconhecimento biométrico, para garantir a identidade do usuário.

- Monitoramento de Atividade Suspeita: Detecte comportamentos incomuns durante a interação do usuário com o aplicativo, como tentativas de acesso a áreas restritas ou mudanças não autorizadas nas configurações.


# Ambientes de Desenvolvimento

* Desenvolvimento: o código será hospedado em um servidor seguro. Cada desenvolvedor verificará uma parte do código para edição em sua máquina local. A máquina local normalmente será configurada com uma sandbox para testes locais. Uma sandbox é um ambiente isolado e controlado no qual programas, aplicativos ou processos podem ser executados. O objetivo principal de uma sandbox é isolar e restringir o acesso de um programa a recursos do sistema, dados sensíveis ou outros aplicativos, a fim de proteger o ambiente de computação contra comportamentos maliciosos ou indesejados. Isso garante que quaisquer outros processos que estejam sendo executados localmente não interfiram ou comprometam o aplicativo que está sendo desenvolvido.

- Em outras palavras, o ambiente de desenvolvimento é onde os desenvolvedores escrevem e testam o código-fonte do aplicativo. É um ambiente isolado onde os desenvolvedores podem trabalhar em suas tarefas de programação sem afetar diretamente o ambiente de produção. Principais características incluem:

- Ferramentas de Desenvolvimento: Os desenvolvedores usam IDEs (Ambientes de Desenvolvimento Integrados) e outras ferramentas para escrever, depurar e testar o código.

- Base de Dados Simulada: Em muitos casos, uma base de dados simulada ou de desenvolvimento é usada para testar a funcionalidade do aplicativo sem afetar a base de dados de produção.

- Acesso Restrito: O acesso ao ambiente de desenvolvimento é geralmente restrito à equipe de desenvolvimento para evitar interferências externas.

- Teste/integração: neste ambiente, o código de vários desenvolvedores é mesclado em uma única cópia mestre e submetido a testes unitários e funcionais básicos (automatizados ou por testadores humanos). O ambiente de teste/integração é onde o aplicativo é testado quanto à sua funcionalidade, compatibilidade e integração com outros componentes do sistema. Esses testes visam garantir que o código seja construído corretamente e cumpra as funções exigidas pelo design. Características-chave incluem:

- Testes de Integração: Neste ambiente, os módulos individuais ou componentes do aplicativo são integrados e testados para garantir que funcionem juntos sem problemas.

- Testes Funcionais: Os testes funcionais são realizados para verificar se o aplicativo atende aos requisitos funcionais especificados.

- Ambiente de Espelho: O ambiente de teste/integração é frequentemente uma réplica do ambiente de produção, permitindo que os testes sejam realizados em um ambiente semelhante ao real.

- Preparação: é um espelho do ambiente de produção, mas pode usar dados de teste ou de amostra e terá controles de acesso adicionais para que seja acessível apenas aos usuários de teste. Os testes nesta fase se concentrarão mais na usabilidade e no desempenho. O ambiente de preparação é também conhecido como ambiente de homologação ou pré-produção ou ambiente de aceitação. Ele é usado para preparar o aplicativo antes de ser implantado em produção. Características importantes incluem:

- Testes de Aceitação do Cliente: Os testes de aceitação são realizados com a participação do cliente para garantir que o aplicativo atenda aos requisitos do cliente antes da implantação em produção.

- Ajustes Finais: Qualquer correção de bugs ou ajustes finais são implementados neste ambiente antes do lançamento.

- Simulação de Carga: Os testes de carga podem ser realizados para avaliar o desempenho do aplicativo sob carga simulada.

- Produção: o aplicativo é liberado para uso. O ambiente de produção é onde o aplicativo é executado e disponibilizado para uso pelos usuários finais. É o ambiente real onde o aplicativo atende às necessidades dos clientes. Características incluem:

- Disponibilidade 24/7: O aplicativo deve estar disponível 24 horas por dia, 7 dias por semana, para atender às necessidades dos usuários.

- Monitoramento em Tempo Real: O ambiente de produção é monitorado continuamente para detectar problemas de desempenho, segurança ou disponibilidade.

- Backup e Recuperação: Políticas rigorosas de backup e planos de recuperação de desastres são essenciais para garantir a continuidade dos negócios em caso de falhas.

# Provisionamento, Desprovisionamento e Controle de Versão

- Alocação de Hardware e Infraestrutura: Garantir que os servidores, máquinas virtuais, bancos de dados e outros recursos de hardware e infraestrutura estejam disponíveis e configurados conforme as necessidades do projeto.

- Instalação de Software e Dependências: Certificar-se de que todas as ferramentas, bibliotecas e software necessários estejam instalados e configurados corretamente no ambiente de desenvolvimento.

- Configuração de Ambientes de Teste e Produção: Criar ambientes de teste e produção que espelhem o ambiente real onde o aplicativo será implantado.

- Provisionamento de Dados: Garantir que os dados necessários, como bancos de dados de amostra, estejam disponíveis para desenvolvimento e teste.


# Desprovisionamento

- Liberação de Hardware e Infraestrutura: Quando um projeto é concluído ou um recurso não é mais necessário, o hardware e a infraestrutura associados podem ser liberados ou realocados para outros projetos.

- Desinstalação de Software e Dependências: Remover software e bibliotecas não utilizados ou obsoletos para manter o ambiente limpo e seguro.

- Limpeza de Dados Sensíveis: Garantir que dados sensíveis sejam adequadamente removidos ou destruídos quando não forem mais necessários, de acordo com as regulamentações de privacidade.