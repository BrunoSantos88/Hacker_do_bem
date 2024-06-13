# Ferramentas de respostas a incidentes

* Plataformas de registro

Também conhecidas como logging platforms, são ferramentas essenciais na área de segurança da informação e gerenciamento de sistemas. Elas permitem a coleta, armazenamento e análise de registros ou logs gerados por dispositivos, aplicativos e sistemas em uma infraestrutura de TI. Cada plataforma tem suas características e recursos específicos:

Syslog: É um protocolo padrão amplamente utilizado para o envio e recebimento de mensagens de log em uma rede. Ele permite que dispositivos e aplicativos registrem eventos e informações relevantes, que podem ser enviados para um servidor de registro centralizado. Os registros do syslog geralmente incluem informações sobre eventos de segurança, atividades do sistema, erros e muito mais. O syslog pode ser configurado para armazenar diferentes níveis de gravidade, como informações, avisos, erros e críticos. Embora o syslog em si seja um protocolo, muitas vezes é referenciado como uma "plataforma" de registro devido à sua ampla adoção.

Rsyslog: É uma implementação aprimorada e avançada do protocolo Syslog, com recursos adicionais e capacidade de filtragem mais avançada. Ele permite que você colete logs de diversos dispositivos e sistemas, filtre registros com base em critérios específicos e encaminhe-os para locais específicos de armazenamento ou análise. O Rsyslog também suporta opções de criptografia e autenticação para garantir a integridade dos registros durante a transmissão.

Syslog-ng: Assim como o Rsyslog, o Syslog-ng é outra implementação avançada do protocolo Syslog, com recursos adicionais de filtragem, processamento e armazenamento. Ele também oferece suporte a recursos de segurança, como criptografia e autenticação. O Syslog-ng permite que você personalize a maneira como os registros são coletados, processados e encaminhados, oferecendo flexibilidade na configuração das políticas de log.

journalctl: É uma ferramenta de linha de comando usada em sistemas que utilizam o sistema de logs systemd. Ele fornece acesso aos registros gerados pelo systemd, que é um sistema de inicialização e gerenciamento de serviços comuns em muitas distribuições Linux modernas. O journalctl permite consultar e visualizar registros de maneira eficaz, filtrando por data, hora, origem e outras opções.

NXlog: É um agente de registro de código aberto que permite coletar, encaminhar e processar registros de várias fontes para sistemas de gerenciamento de logs centralizados. Ele é amplamente usado em ambientes heterogêneos, onde você precisa coletar logs de diferentes sistemas operacionais e aplicativos. O NXlog suporta vários formatos de registro e pode ser configurado para se integrar com plataformas de registro centralizado, como o Elasticsearch e o Graylog.

# Registros de aplicativos
Os registros de aplicativos (Application Log Files) são uma parte crucial da segurança da informação e do monitoramento de sistemas. Eles fornecem insights sobre o comportamento e a atividade de aplicativos, sistemas e serviços:

DNS Event Logs (Registros de Eventos DNS): Os registros de eventos DNS registram informações relacionadas ao sistema de Nomes de Domínio (DNS). O DNS é o protocolo que traduz nomes de domínio (como www.exemplo.com) em endereços IP que os computadores podem entender. Os registros de eventos DNS incluem informações sobre consultas DNS feitas pelos dispositivos na rede. Veja suas características:

Consulta de DNS (DNS Query): Quando um dispositivo (como um computador ou servidor) deseja acessar um site ou serviço usando seu nome de domínio, ele envia uma consulta DNS para resolver o nome em um endereço IP. A consulta é registrada nos logs de eventos DNS.

Registro de resposta (DNS Response): Quando o servidor DNS fornece a resposta com o endereço IP associado ao nome de domínio, essa resposta também é registrada nos logs de eventos DNS.

Análise de padrões e anomalias: Os registros de eventos DNS são frequentemente analisados para detectar padrões incomuns, atividades suspeitas ou possíveis ameaças. Isso pode incluir a identificação de consultas frequentes a domínios maliciosos ou tentativas de ataques de envenenamento DNS.

Web/HTTP Access Logs (Registros de Acesso a Sites e HTTP): Os registros de acesso a sites e HTTP registram informações sobre as solicitações e respostas de acesso a páginas da web e recursos usando o protocolo HTTP. Esses registros são gerados pelos servidores web e podem fornecer insights sobre atividades de usuários, tráfego, erros e possíveis ataques. Veja como funciona:

Solicitações de acesso: Quando um cliente (como um navegador web) solicita acessar uma página da web ou um recurso, uma solicitação HTTP é enviada para o servidor web. Essa solicitação é registrada nos logs de acesso.

Respostas do servidor: O servidor web responde à solicitação com o conteúdo da página ou recurso solicitado. Essa resposta também é registrada nos logs de acesso.

Detecção de atividades maliciosas: Os registros de acesso a sites e HTTP podem ajudar a identificar padrões de tráfego incomuns, como solicitações repetidas ou tentativas de acesso a URLs suspeitas. Isso ajuda a detectar ataques, como injeção de SQL, cross-site scripting (XSS) e tentativas de acesso não autorizado.

Monitoramento de desempenho: Além da segurança, esses logs também são usados para monitorar o desempenho do servidor web, identificar gargalos e problemas de carregamento de páginas.

# Metadados

São informações que descrevem outros dados. Eles fornecem contexto e detalhes sobre os dados subjacentes, ajudando a compreender e gerenciar melhor esses dados. Os metadados podem ser encontrados em várias formas:

Metadados de Arquivo: Fornecem informações sobre um arquivo em particular, como um documento de texto, uma imagem, um vídeo ou qualquer outro tipo de arquivo digital. Eles incluem detalhes como o nome do arquivo, o tamanho, o formato, a data de criação, a data de modificação e até mesmo informações sobre o autor ou criador do arquivo. Esses metadados são úteis para organizar, pesquisar e categorizar arquivos em sistemas de gerenciamento de conteúdo, sistemas operacionais e aplicativos.

Metadados da Web: São informações que acompanham uma página da web e ajudam os motores de busca e outros serviços a entender o conteúdo e o propósito da página. Eles são definidos usando tags especiais no código HTML da página. Exemplos de metadados da web incluem a descrição da página (meta description), palavras-chave relevantes (meta keywords), título da página e informações de autoria. Os motores de busca usam esses metadados para indexar e classificar as páginas da web nos resultados de pesquisa.

Metadados de Email: Incluem informações sobre as mensagens de email, como o remetente, o destinatário, a data e hora de envio, o assunto e até mesmo informações sobre encaminhamentos ou respostas anteriores. Esses metadados são armazenados nos cabeçalhos dos emails e são usados para rastrear a comunicação, organizar a caixa de entrada e garantir que as mensagens sejam entregues corretamente. Além disso, os metadados de email também podem ser usados em investigações legais e forenses para entender o histórico de comunicação.

Metadados móveis: São informações associadas a dispositivos móveis, como smartphones e tablets. Eles podem incluir detalhes como o modelo do dispositivo, o número de série, a versão do sistema operacional, informações de localização (se habilitadas), informações sobre aplicativos instalados e até mesmo dados de uso, como o tempo gasto em diferentes aplicativos. Esses metadados são úteis para fornecer suporte técnico, otimizar o desempenho do dispositivo e oferecer experiências personalizadas.

# Data Loss Prevention – DLP
A Prevenção de Perda de Dados (Data Loss Prevention - DLP) é uma estratégia e conjunto de tecnologias que visam proteger informações sensíveis e confidenciais, evitando sua divulgação não autorizada ou vazamento. O DLP é uma parte importante das medidas de segurança cibernética de uma organização, especialmente quando se trata de proteger dados confidenciais contra ameaças internas e externas. O DLP trabalha da seguinte maneira:

Identificação de dados sensíveis: O primeiro passo do DLP é identificar os tipos de dados sensíveis que precisam ser protegidos. Isso pode incluir informações financeiras, dados pessoais, propriedade intelectual, segredos comerciais, informações de saúde, entre outros. A organização deve mapear e classificar os dados sensíveis para saber quais dados precisam ser protegidos.

Monitoramento de tráfego e atividade: As soluções de DLP monitoram continuamente o tráfego de dados na rede, nos sistemas e nos dispositivos. Elas podem examinar o tráfego de emails, mensagens instantâneas, transferências de arquivos, atividades de navegação na web e outros tipos de comunicação digital. Permite que o DLP identifique padrões e comportamentos que possam indicar uma possível violação de dados.

Detecção de conteúdo sensível: As ferramentas de DLP empregam mecanismos avançados para identificar e detectar conteúdo sensível. Incluindo palavras-chave, frases, formatos de documentos (como números de cartão de crédito, CPF, CNPJ, etc.), padrões de dados e informações que se encaixam nos critérios definidos. Quando um conteúdo sensível é detectado, a solução de DLP toma medidas para impedir sua divulgação não autorizada.

Políticas de ação: Com base nas políticas definidas pela organização, as soluções de DLP podem tomar várias ações quando detectam dados sensíveis em trânsito ou em repouso. Isso pode incluir bloquear o envio de mensagens de email contendo informações confidenciais, impedir o upload de arquivos para serviços de armazenamento em nuvem não autorizados, alertar os administradores sobre atividades suspeitas, entre outras medidas.

Prevenção e correção: Além de alertar ou bloquear, algumas soluções de DLP podem automaticamente aplicar medidas de prevenção e correção. Isso pode incluir mascarar ou criptografar dados sensíveis, substituir informações sensíveis por placeholders ou até mesmo notificar o usuário sobre a política de DLP infringida, educando-os sobre as políticas de segurança.

Auditoria e relatórios: As soluções de DLP também fornecem recursos de auditoria e geração de relatórios. Isso permite que a organização acompanhe as atividades de DLP, identifique tendências de violações e tome medidas para melhorar as políticas de segurança

# Listas de permissão e de bloqueio

Listas de permissão (Allow Lists) e listas de bloqueio (Block Lists) são estratégias de segurança usadas para controlar quais aplicativos podem ser executados ou quais sites podem ser acessados em uma rede ou sistema. Essas listas ajudam a reduzir os riscos de segurança, impedindo a execução de aplicativos maliciosos ou o acesso a conteúdo potencialmente prejudicial.

Application Allow Lists: Uma lista de permissão de aplicativos contém uma seleção de aplicativos confiáveis e autorizados que os usuários podem executar em um sistema. A ideia é permitir apenas aplicativos pré-aprovados e conhecidos, bloqueando todos os outros. Veja funciona:

Criação da Lista: A equipe de segurança ou os administradores definem uma lista de aplicativos permitidos. Esses aplicativos são geralmente examinados e testados para garantir que sejam legítimos e seguros.

Bloqueio de Aplicativos Não Autorizados: Qualquer aplicativo que não esteja na lista de permissão é automaticamente bloqueado. Isso impede que os usuários executem aplicativos não autorizados que possam representar riscos à segurança.

Prevenção de Execução de Malware: Ao bloquear aplicativos não autorizados, a lista de permissão ajuda a prevenir a execução de malware e programas maliciosos que possam ser baixados da internet ou recebidos por meio de anexos de email.

Application Block Lists: Uma lista de bloqueio de aplicativos contém aplicativos considerados não confiáveis ou inseguros, e seu objetivo é impedir que esses aplicativos sejam executados em um sistema. Veja como funciona:

Criação da Lista: A equipe de segurança identifica aplicativos conhecidos por serem maliciosos, suspeitos ou que apresentam riscos de segurança. Esses aplicativos são adicionados à lista de bloqueio.

Impedindo a Execução de Aplicativos Bloqueados: Quando um usuário tenta executar um aplicativo listado na lista de bloqueio, o sistema impede a execução e exibe um aviso ao usuário.

Prevenção de Ameaças Conhecidas: A lista de bloqueio ajuda a prevenir a execução de aplicativos que são conhecidos por serem maliciosos, como ransomware, trojans e outros tipos de malware.