# Monitoramento de redes

- Network Monitor

* O Network Monitor, também conhecido como analisador de rede ou sniffer, é uma ferramenta utilizada para monitorar e analisar o tráfego de rede. Ele permite capturar pacotes de dados que circulam pela rede, tornando possível examinar em detalhes as comunicações entre dispositivos e os diferentes protocolos que estão sendo utilizados. O funcionamento do Network Monitor ocorre nas seguintes etapas:

* Captura de pacotes: O Network Monitor captura os pacotes de dados que trafegam na rede. Isso é realizado através de interfaces de rede dedicadas, como placas de rede ou adaptadores, que permitem ao analisador acessar o fluxo de informações que passa por elas.

* Análise de pacotes: Após a captura, os pacotes são analisados para extrair informações importantes. O Network Monitor pode decodificar os dados presentes nos pacotes, exibindo detalhes dos cabeçalhos dos protocolos utilizados, endereços IP, portas, informações de controle e carga útil dos pacotes.

* Filtragem de dados: Para tornar a análise mais eficiente, o Network Monitor permite aplicar filtros para selecionar pacotes específicos para visualização. Isso é especialmente útil em redes movimentadas, onde a quantidade de dados pode ser significativa. Filtros podem ser baseados em endereços IP, portas, protocolos, entre outros critérios.

* Visualização e análise de tráfego: Os pacotes capturados são apresentados ao usuário em uma interface gráfica ou em formato de lista. O Network Monitor possibilita observar o tráfego em tempo real ou examinar capturas prévias. Essa visualização detalhada é fundamental para identificar padrões, detectar problemas e analisar o comportamento da rede.

* Diagnóstico de problemas: O Network Monitor é amplamente utilizado por administradores de rede e profissionais de segurança para diagnosticar problemas e investigar atividades suspeitas. Com ele, é possível identificar tráfego não autorizado, anomalias de rede, gargalos de desempenho e outros problemas que podem afetar a operação da rede.

* Registro e exportação de dados: O Network Monitor permite gravar as capturas em arquivos de registro para análises futuras. Além disso, os dados capturados podem ser exportados em diferentes formatos para compartilhamento com outros profissionais ou para análises posteriores em outras ferramentas.

# Logs

* Logs são registros detalhados de eventos, atividades ou mensagens geradas por sistemas, aplicativos ou dispositivos. Eles têm o propósito de registrar informações relevantes para análise, monitoramento, solução de problemas, auditoria e segurança. O funcionamento dos logs geralmente envolve os seguintes aspectos:

* Geração de Logs: Os sistemas e aplicativos geram logs automaticamente conforme eventos ocorrem. Isso pode incluir ações do usuário, erros, atividades de rede, processos iniciados ou encerrados, entre outros eventos importantes.

* Formato e estrutura: Os logs geralmente possuem um formato estruturado, com informações específicas sobre cada evento registrado. Essas informações podem incluir data e hora, nível de severidade (como informação, aviso ou erro), origem do evento, descrição do evento e outros detalhes relevantes.

* Armazenamento e gerenciamento: Os logs são armazenados em arquivos ou em um sistema centralizado de gerenciamento de logs. É importante que os logs sejam protegidos e devidamente gerenciados, especialmente para fins de auditoria e conformidade.

* Análise e monitoramento: Os logs são analisados regularmente para identificar possíveis problemas, anomalias ou tendências. O monitoramento contínuo dos logs ajuda a detectar atividades suspeitas ou comportamentos incomuns na rede ou nos sistemas.

* Ferramentas de análise: Existem ferramentas específicas, como SIEM (Security Information and Event Management) e sistemas de gerenciamento de logs, que auxiliam na análise, agregação e correlação dos logs de diferentes fontes. Essas ferramentas ajudam a simplificar o processo de identificação de eventos relevantes e a resposta a incidentes.

# SysLog

* SysLog é um protocolo padronizado amplamente utilizado para a geração, envio e recebimento de mensagens de registro de eventos em sistemas de computadores e dispositivos de rede. Criado originalmente em ambientes Unix-like, o SysLog tornou-se um dos métodos mais comuns para coletar informações sobre atividades e eventos relevantes que ocorrem nos sistemas e aplicativos.

* O funcionamento do SysLog envolve a geração de mensagens de eventos pelos sistemas e sua posterior transmissão para um servidor SysLog centralizado ou outros dispositivos que estejam escutando em uma determinada porta. As mensagens SysLog são categorizadas em "facilities" (instalações) e "severidades", permitindo classificar a origem do evento e sua gravidade. O servidor SysLog centralizado consolida as mensagens de vários dispositivos em um único local, facilitando a análise, monitoramento e resposta a incidentes em toda a infraestrutura.

* Além de ser uma ferramenta essencial para a manutenção e solução de problemas, o SysLog desempenha um papel fundamental na segurança da rede e dos sistemas, pois permite identificar atividades suspeitas, rastrear acessos não autorizados, detectar falhas de segurança e analisar tendências de eventos. Ele é frequentemente utilizado em conjunto com ferramentas de análise e gerenciamento de logs, como SIEM (Security Information and Event Management), para proporcionar uma visão abrangente do ambiente de TI e auxiliar na proteção contra ameaças cibernéticas.

# Coleta de Logs

* A coleta de logs (Log Collection) é uma etapa essencial no processo de monitoramento e análise de eventos de segurança e atividades em uma rede ou sistema. Existem diferentes abordagens para a coleta de logs, cada uma com suas características específicas. As três principais abordagens são: Agent-based (baseada em agente), Collector e Sensor. Vamos detalhar cada uma delas:

* Agent-based (Baseada em Agente): Na abordagem Agent-based, são instalados agentes (ou agentes de coleta de logs) nos dispositivos e sistemas que se deseja monitorar. Esses agentes são pequenos programas ou módulos que coletam e encaminham os logs relevantes para um servidor centralizado ou outro sistema de gerenciamento de logs. Cada agente é responsável por coletar os logs locais do dispositivo onde está instalado e pode ser configurado para filtrar ou selecionar os logs específicos que serão enviados para a centralização.

* Coletor (Collector): Na abordagem do Collector, um dispositivo centralizado, conhecido como coletor de logs, é responsável por conectar-se a outros dispositivos, sistemas ou agentes de coleta de logs distribuídos na rede. O coletor recebe os logs enviados por esses dispositivos remotos e os armazena em um repositório central. Essa abordagem é especialmente útil em redes complexas, onde há uma grande quantidade de dispositivos e sistemas a serem monitorados. O Coletor ajuda a centralizar os logs e facilita a análise e correlação de eventos.

* Sensor: A abordagem do Sensor é comumente usada em ambientes de rede, especialmente em sistemas de prevenção de intrusões (IPS) e firewalls. Os sensores são dispositivos dedicados que monitoram o tráfego de rede em busca de atividades suspeitas e eventos de segurança. Eles coletam logs de eventos específicos, como tentativas de intrusão, tráfego bloqueado, conexões de rede, entre outros, e os enviam para um sistema centralizado para análise e resposta a incidentes. Os sensores desempenham um papel importante na detecção proativa de ameaças e na proteção da rede contra ataques.


