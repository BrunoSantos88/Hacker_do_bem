# Security Information and Event Management (SIEM)

* O Security Information and Event Management (SIEM) é uma solução de segurança cibernética que combina a funcionalidade de coleta, armazenamento, análise e correlação de eventos e informações de segurança em tempo real, provenientes de diversas fontes em uma rede. O objetivo principal do SIEM é oferecer uma visão abrangente e centralizada da postura de segurança da organização, permitindo identificar ameaças e responder a incidentes de forma mais eficiente. O funcionamento do SIEM pode ser dividido em etapas:

* Coleta de dados: O SIEM coleta dados de várias fontes, como logs de eventos de sistemas, aplicativos, dispositivos de rede, firewalls, IDS/IPS (Sistemas de Detecção e Prevenção de Intrusões), antivírus, entre outros. Esses dados são enviados para o SIEM por meio de agentes, sondas ou dispositivos de coleta.

* Armazenamento centralizado: Os dados coletados são armazenados em um repositório centralizado, o que facilita a busca, consulta e análise de informações relevantes. O armazenamento de longo prazo permite a análise histórica e a criação de relatórios de tendências.

* Normalização e correlação: O SIEM normaliza os dados recebidos para um formato comum, o que facilita a análise e correlação de eventos. A correlação é uma etapa importante em que o SIEM analisa os eventos coletados para identificar padrões e relacionamentos entre eles, permitindo detectar ameaças complexas que podem não ser evidentes em análises individuais.

* Detecção de anomalias e ameaças: O SIEM utiliza regras e algoritmos de detecção para identificar atividades suspeitas e potenciais ameaças à segurança. Ele pode disparar alertas em tempo real para que os analistas de segurança possam responder prontamente a incidentes.

* Notificação e resposta: Quando uma atividade maliciosa ou suspeita é detectada, o SIEM pode acionar notificações e alertas para a equipe de segurança. A resposta aos incidentes pode incluir ações como bloqueio de IPs, isolamento de máquinas comprometidas, análise forense, entre outras medidas de mitigação.

* Relatórios e conformidade: O SIEM gera relatórios detalhados sobre a atividade de segurança da organização, auxiliando na demonstração de conformidade com padrões regulatórios e políticas internas de segurança.

* Integração com outras ferramentas: O SIEM pode se integrar com outras ferramentas de segurança, como Sistemas de Gerenciamento de Vulnerabilidades e Sistemas de Gerenciamento de Incidentes, para proporcionar uma abordagem mais abrangente e colaborativa à segurança cibernética.

# Agregação de Logs (Log Aggregation)

* A Log Aggregation, ou agregação de logs, é um processo de coleta e centralização de logs de diferentes fontes em um único local. Essa técnica é utilizada para facilitar a análise, monitoramento e correlação de eventos de segurança e atividades em uma rede ou sistema e é normalmente realizado no SIEM. Veja como funciona:

* Coleta de Logs de diferentes fontes: O processo de Log Aggregation envolve a coleta de logs de diversas fontes, como sistemas operacionais, aplicativos, dispositivos de rede, bancos de dados, servidores, appliances de segurança, entre outros. Esses logs são originados de diferentes dispositivos e podem estar distribuídos por toda a infraestrutura.

* Centralização dos Logs: Os logs coletados são enviados para um único local centralizado, conhecido como servidor de agregação de logs ou repositório central. Esse servidor é responsável por armazenar todos os logs coletados e disponibilizá-los para análise e monitoramento.

* Normalização dos dados: Antes de armazenar os logs, o processo de agregação pode envolver a normalização dos dados para garantir que todos os logs sejam convertidos para um formato comum. Isso facilita a análise e correlação dos eventos, independentemente de sua origem e formato original.

* Análise e correlação de eventos: Com os logs centralizados e normalizados, é possível realizar análises abrangentes e correlacionar eventos de diferentes fontes. A correlação de eventos permite identificar padrões e relacionamentos entre os logs, o que auxilia na detecção de atividades suspeitas e ameaças.

* Alertas e notificações: A agregação de logs permite a configuração de regras e alertas para acionar notificações em tempo real quando eventos críticos ou suspeitos são identificados. Isso possibilita uma resposta rápida a incidentes de segurança.

* Armazenamento de longo prazo: Além de possibilitar análises em tempo real, a agregação de logs também permite o armazenamento de longo prazo dos registros. Isso é útil para auditorias, conformidade com regulamentos e investigações forenses.

* Relatórios e inteligência de segurança: A centralização e agregação de logs também possibilitam a geração de relatórios abrangentes e fornecem informações valiosas sobre a postura de segurança da organização. A análise dos logs agregados pode gerar inteligência de segurança que ajuda a melhorar a proteção da rede contra ameaças cibernéticas.


# User and Entity Behavior Analytics (UEBA)

* User and Entity Behavior Analytics (UEBA), ou Análise de Comportamento de Usuários e Entidades, é uma abordagem avançada de segurança cibernética que utiliza técnicas de inteligência artificial e aprendizado de máquina para detectar ameaças e atividades maliciosas com base no comportamento de usuários e entidades (como dispositivos, aplicativos e sistemas) em uma rede. Geralmente trabalha em conjunto com o SIEM. O funcionamento do UEBA pode ser detalhado da seguinte forma:

* Coleta de dados de comportamento: O UEBA coleta e analisa uma ampla variedade de dados de comportamento dos usuários e entidades na rede. Inclui atividades de login, padrões de acesso a recursos, horários e locais de acesso, atividades de usuários privilegiados, interações com aplicativos e dispositivos, entre outros. Esses dados são coletados de várias fontes, como logs de eventos, registros de autenticação e dados de sistemas de gerenciamento de identidades.

* Perfil de comportamento baseline: O UEBA cria um perfil de comportamento baseline para cada usuário e entidade na rede. Esse perfil representa o comportamento normal e esperado de cada entidade. Para isso, o UEBA analisa o histórico de atividades para identificar padrões regulares e comportamentos típicos.

* Detecção de anomalias: O UEBA utiliza algoritmos de aprendizado de máquina para identificar anomalias no comportamento das entidades. Essas anomalias são indicativas de atividades incomuns ou suspeitas que podem representar ameaças de segurança, como acesso a recursos não autorizados, tentativas de autenticação suspeitas, atividades fora do horário comercial, entre outras.

* Correlação de eventos: O UEBA também é capaz de correlacionar eventos aparentemente não relacionados para detectar comportamentos anômalos. Por exemplo, ele pode detectar se um usuário realiza uma ação de autenticação em um local geograficamente distante logo após ter se conectado localmente.

* Pontuação de risco: Com base nas detecções de anomalias e correlações de eventos, o UEBA atribui pontuações de risco a cada usuário e entidade. Quanto maior a pontuação, maior a probabilidade de comportamento malicioso ou suspeito.

* Alertas e notificações: Quando uma atividade suspeita é detectada e a pontuação de risco ultrapassa um limiar pré-definido, o UEBA dispara alertas e notificações para a equipe de segurança. Isso permite uma resposta rápida e pró-ativa a potenciais incidentes de segurança.

* Adaptação ao ambiente: O UEBA é capaz de aprender com o ambiente e se adaptar a mudanças no comportamento das entidades ao longo do tempo. Isso evita falsos positivos e aumenta a eficácia na detecção de ameaças em constante evolução.