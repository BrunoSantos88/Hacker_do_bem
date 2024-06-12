# Ataques Man-in-the-Middle de camada 2

* Os ataques Man-in-the-Middle, também conhecidos como MITM, são uma classe de ameaças em que um invasor se posiciona entre a comunicação entre dois dispositivos, agindo como intermediário. Para ilustrar, imagine uma conversa entre Alice e Bob, que estão trocando informações pela rede. O invasor, chamado de atacante, se insere no meio dessa comunicação e intercepta as mensagens enviadas por Alice, depois as reenvia para Bob, e vice-versa, fazendo com que pareça que a comunicação está ocorrendo normalmente, mas, na verdade, o atacante está controlando todo o fluxo.

# Clonagem de MAC

1. O MAC Cloning, também conhecido como clonagem de endereço MAC, é uma técnica utilizada em ataques de segurança de redes para falsificar o endereço físico (MAC) de um dispositivo de rede. O objetivo desse ataque é enganar o sistema de autenticação da rede e se passar por um dispositivo legítimo, permitindo ao atacante acessar recursos e informações restritas da rede. Veja como é implementado:

2. Observação do Alvo: O atacante começa observando o tráfego de rede para identificar os dispositivos ativos na rede, especialmente aqueles com permissões e acesso privilegiado. Isso pode ser feito por meio de ferramentas de análise de rede ou sniffers, que permitem ao atacante visualizar os pacotes de dados enviados e recebidos pelos dispositivos na rede.

3. Identificação do Alvo: Com base nas informações obtidas no passo anterior, o atacante seleciona o dispositivo legítimo que deseja se passar. Isso pode ser um roteador, um computador ou qualquer outro dispositivo com acesso restrito que o atacante queira imitar.

4. Coleta do Endereço MAC do Alvo: O atacante coleta o endereço MAC do dispositivo legítimo escolhido. O endereço MAC é uma sequência única de 48 bits atribuída à placa de rede de cada dispositivo, e é utilizado para identificá-lo de forma exclusiva em uma rede.

5. Configuração do Endereço MAC Clonado: Com o endereço MAC do dispositivo legítimo em mãos, o atacante configura seu próprio dispositivo para usar esse endereço MAC clonado. Essa etapa é crucial, pois é aqui que o atacante engana a rede fazendo-a acreditar que seu dispositivo é o dispositivo legítimo escolhido no passo 2.

6. Conexão à Rede:: Após configurar o endereço MAC clonado em seu dispositivo, o atacante se conecta à rede. A rede, ao receber o pacote de dados do atacante, reconhece o endereço MAC clonado como sendo do dispositivo legítimo e, assim, concede acesso aos recursos e informações restritas destinadas ao dispositivo original.

# Inundação de MAC

* O MAC Flooding, ou inundação de MAC, é uma técnica de ataque em redes locais (LANs) que visa sobrecarregar a tabela de endereços MAC de um switch. Esse tipo de ataque aproveita uma vulnerabilidade comum em switches que usam uma tabela limitada para armazenar os endereços MAC dos dispositivos conectados à rede. Ao inundar essa tabela com informações falsas de endereços MAC, o atacante pode causar uma falha no funcionamento do switch, resultando em uma situação conhecida como "flooding" (inundação) de tráfego. Veja como funciona:

1.  Identificação do Switch e Porta: O atacante começa identificando o switch e a porta a serem atacados. Geralmente, o atacante realiza uma varredura na rede para detectar switches e dispositivos conectados a eles, buscando vulnerabilidades para explorar. 2. Criação de Pacotes Falsos: Em seguida, o atacante gera uma grande quantidade de pacotes falsificados com endereços MAC aleatórios, geralmente, com o objetivo de esgotar a capacidade da tabela de endereços MAC do switch. 3. Envio dos Pacotes Falsos: O atacante envia os pacotes falsos para o switch através da porta selecionada, fazendo com que o switch adicione cada endereço MAC falso à sua tabela. Como a tabela do switch tem um tamanho limitado, ela eventualmente fica cheia, resultando em uma situação de "flooding" de tráfego. 4. Comportamento Anômalo do Switch: À medida que a tabela de endereços MAC fica cheia, o switch entra em um estado chamado "modo de falha aberto", onde ele não consegue mais associar endereços MAC aos respectivos dispositivos físicos corretos. Como resultado, o switch passa a enviar todo o tráfego de rede para todas as portas, em vez de direcioná-lo apenas para o destino correto, causando uma sobrecarga da rede e interrompendo sua operação normal.

2. O MAC Flooding pode ser um ataque eficaz em redes que utilizam switches com tabelas de endereços MAC pequenas e não possuem proteções adequadas contra esse tipo de ataque. Para mitigar esse tipo de ameaça, é recomendável implementar medidas de segurança, como limitar o número de endereços MAC aprendidos por porta, utilizar switches com capacidade de detecção de ataques de flooding e, em algumas situações, a utilização de VLANs (Redes Locais Virtuais) para segmentar o tráfego de rede.

# Spanning Tree Protocol (STP)

É um protocolo de rede utilizado em redes Ethernet para evitar loops de caminho em topologias comutadas. A presença de loops em uma rede pode causar problemas, como tempestades de broadcast e congestionamentos, afetando negativamente o desempenho e a estabilidade da rede. O STP trabalha eliminando esses loops, mantendo caminhos redundantes, mas bloqueando-os de forma inteligente para garantir a convergência da rede em uma topologia sem loops. Vejamos como funciona:

1. Eleição do Bridge Raiz (Root Bridge): O primeiro passo do STP é a eleição do Bridge Raiz. Todos os switches na rede disputam essa posição, e o switch com o menor valor de prioridade (Bridge ID) se torna o Bridge Raiz. Caso haja empate na prioridade, o switch com o menor endereço MAC assume a posição de Bridge Raiz. O Bridge Raiz é o ponto de referência para a construção da árvore de expansão.

2. Cálculo dos Caminhos Mais Curtos: Após a eleição do Bridge Raiz, cada switch determina os caminhos mais curtos até o Bridge Raiz. Para isso, os switches trocam informações entre si por meio de mensagens BPDU (Bridge Protocol Data Unit). As BPDU contêm informações sobre o Bridge Raiz, o custo do caminho e o identificador do switch que as envia. Com base nas informações das BPDU, cada switch calcula o caminho mais curto até o Bridge Raiz.

3. Escolha das Portas Designadas e Bloqueadas: Uma vez que os caminhos mais curtos são calculados, cada switch seleciona as portas designadas e bloqueadas para evitar loops. A porta designada é a que oferece o caminho mais curto para o Bridge Raiz, enquanto as portas bloqueadas são aquelas que formam loops e são desativadas para prevenir problemas na rede.

4. Atualizações Contínuas com BPDUs: O STP é dinâmico e se adapta às mudanças na rede. Ele continua a trocar BPDUs regularmente para atualizar a topologia da rede. Se ocorrerem alterações, como falhas de links ou adição de novos switches, o STP recalcula as portas designadas e bloqueadas para garantir que a topologia da rede permaneça livre de loops.

5. Tempo de Convergência: O STP pode levar alguns segundos para convergir após uma alteração na rede, durante os quais as portas podem ser bloqueadas ou desbloqueadas. Durante esse período, o tráfego pode ser redirecionado temporariamente, mas a rede se estabilizará assim que o STP concluir suas atualizações.

6. Com o Spanning Tree Protocol, as redes Ethernet conseguem fornecer redundância e disponibilidade enquanto evitam loops. No entanto, o STP pode causar uma subutilização de links redundantes, especialmente em topologias de rede complexas. Por esse motivo, outras versões aprimoradas do STP, como o Rapid Spanning Tree Protocol (RSTP) e o Multiple Spanning Tree Protocol (MSTP), foram desenvolvidas para otimizar a convergência da rede e permitir um melhor aproveitamento dos links redundantes.


# Bridge Protocol Data Unit (BPDU) Guard

O Bridge Protocol Data Unit (BPDU) Guard é uma medida de segurança utilizada em switches para evitar problemas causados pela recepção de mensagens BPDU (Bridge Protocol Data Unit) em portas que não deveriam receber essas informações. As BPDU são utilizadas pelo STP para calcular os caminhos mais curtos e evitar loops em topologias de rede comutadas. Veja como funciona:

1. Portas de Acesso e Portas Tronco: Os switches de rede possuem diferentes tipos de portas, como portas de acesso e portas tronco. As portas de acesso são aquelas usadas para conectar dispositivos finais, como computadores e impressoras, enquanto as portas tronco são usadas para interconectar switches e permitir o tráfego entre diferentes VLANs.

2. BPDU Guard para Portas de Acesso: O BPDU Guard é ativado em portas de acesso. Quando o BPDU Guard está habilitado em uma porta, ela monitora a recepção de BPDUs. Caso a porta detecte a chegada de uma BPDU, ela imediatamente entra em estado de erro (errdisable) e é desativada, bloqueando o tráfego para prevenir a formação de loops na rede.

3. Cenário de Porta Bloqueada: O cenário ideal para a utilização do BPDU Guard em portas de acesso é quando um switch é conectado a uma porta de acesso em vez de um dispositivo final. Isso poderia acontecer por acidente ou intencionalmente. Sem o BPDU Guard, o switch conectado poderia enviar BPDUs para a rede, fazendo com que os switches em toda a rede recalculem o Spanning Tree, causando uma interrupção temporária na comunicação da rede.

4. Recuperação da Porta: Quando uma porta é colocada em estado de erro (errdisable) pelo BPDU Guard, ela permanece nesse estado até que um administrador de rede intervenha para solucionar o problema. Após o problema ser resolvido, a porta pode ser reativada manualmente.


# Filtragem de Endereços MAC

A Filtragem de Endereços MAC (MAC Filtering) é uma técnica de segurança usada em redes para controlar quais dispositivos são permitidos ou bloqueados de acessar a rede com base em seus endereços MAC. Cada dispositivo de rede possui um endereço MAC único e, ao utilizar o MAC Filtering, é possível configurar o roteador ou switch para permitir apenas dispositivos com endereços MAC específicos a se conectarem à rede. Vejamos como o MAC Filtering funciona:

1. Coleta dos Endereços MAC Autorizados: Para implementar o MAC Filtering, o administrador da rede deve coletar os endereços MAC dos dispositivos que deseja autorizar a se conectar à rede. Isso pode ser feito manualmente, identificando os dispositivos e obtendo seus respectivos endereços MAC.

2. Configuração no Roteador ou Switch: Com os endereços MAC autorizados em mãos, o administrador configura o roteador ou switch com as informações de MAC Filtering. Essa configuração é realizada no dispositivo que controla o acesso à rede, geralmente, o roteador ou switch principal.

3. Escolha do Modo de Filtragem: Existem dois modos de filtragem de MAC comuns: "Permitir" e "Bloquear". No modo "Permitir", apenas os endereços MAC listados são autorizados a acessar a rede, enquanto, no modo "Bloquear", todos os dispositivos são permitidos, exceto aqueles com endereços MAC listados.

4. Autenticação dos Dispositivos: Quando um dispositivo tenta se conectar à rede, ele envia seu endereço MAC para o roteador ou switch. O dispositivo de rede verifica se o endereço MAC está na lista de MAC Filtering configurada e toma a decisão de permitir ou bloquear o acesso com base nessa verificação.

5. Segurança e Limitações: Embora o MAC Filtering seja uma medida de segurança adicional, é importante lembrar que o endereço MAC pode ser facilmente falsificado por um atacante experiente. Portanto, o MAC Filtering não é uma solução invulnerável e deve ser usado em conjunto com outras medidas de segurança, como criptografia de rede (WPA2/WPA3 em redes Wi-Fi) e autenticação de dispositivos.


# DHCP Snooping

* É uma medida de segurança utilizada em redes para proteger contra ataques de Dynamic Host Configuration Protocol (DHCP) falsificado. O DHCP é um protocolo que permite aos dispositivos obterem automaticamente endereços IP e outras configurações de rede, tornando o processo de configuração de redes mais simples e dinâmico. No entanto, o DHCP pode ser explorado por atacantes para fornecer informações de configuração de rede incorretas ou prejudiciais a dispositivos legítimos. Vejamos como o DHCP Snooping funciona:

1. O DHCP Falsificado: É um ataque em que um dispositivo malicioso se passa pelo servidor DHCP legítimo e responde às solicitações de dispositivos na rede. O dispositivo malicioso pode fornecer informações incorretas, como um endereço IP inválido ou mesmo um endereço IP pertencente a um servidor malicioso controlado pelo atacante.

2. Ativação do DHCP Snooping: Para evitar o DHCP Falsificado, o administrador da rede ativa o DHCP Snooping no switch de rede. O DHCP Snooping é uma funcionalidade de segurança que monitora o tráfego DHCP na rede e valida as respostas do servidor DHCP antes de permitir que sejam encaminhadas para os dispositivos clientes.

3. Criação de uma Tabela DHCP Snooping: Quando o DHCP Snooping está ativo, o switch cria uma tabela de DHCP Snooping que armazena informações sobre quais portas estão autorizadas a enviar ou receber pacotes DHCP. Inicialmente, todas as portas são marcadas como não confiáveis, o que significa que não podem enviar pacotes DHCP para a rede.

4. Identificação de Portas Confiáveis e Não Confiáveis: Através do DHCP Snooping, o switch pode distinguir quais portas são confiáveis e quais são não confiáveis. Portas confiáveis são aquelas conectadas a servidores DHCP legítimos, como o servidor DHCP do roteador ou servidor da rede. Portas não confiáveis são aquelas em que dispositivos finais, como computadores e dispositivos móveis, estão conectados.

5. Aprendizado de Informações de DHCP Snooping: Quando o DHCP Snooping está em funcionamento, o switch aprende quais endereços MAC estão associados a cada porta do switch. As portas confiáveis são autorizadas a enviar pacotes DHCP e outras informações de configuração de rede, enquanto as portas não confiáveis são bloqueadas para evitar que enviem pacotes DHCP falsificados.

6. Prevenção de Ataques de DHCP Falsificado: Com o DHCP Snooping em ação, o switch pode diferenciar entre as respostas legítimas do servidor DHCP e as respostas falsificadas de um atacante. Quando uma resposta DHCP é recebida em uma porta não confiável, o switch a descarta, evitando assim que as informações de configuração de rede incorretas sejam distribuídas aos dispositivos clientes.


# Port-based Network Access Control (PNAC)


* Também conhecido como Controle de Acesso Baseado em Porta, é uma técnica de segurança usada em redes para controlar o acesso de dispositivos aos recursos de rede com base nas portas físicas do switch em que eles estão conectados. Essa abordagem é comum em switches Ethernet e é amplamente utilizada para restringir o acesso a recursos de rede apenas a dispositivos autorizados. Veja como funciona:

* Identificação dos Dispositivos e Portas: O primeiro passo do PNAC é identificar os dispositivos que desejam acessar a rede e as portas físicas dos switches em que esses dispositivos estão conectados. Os dispositivos podem ser computadores, impressoras, telefones IP ou qualquer outro dispositivo de rede que precise se comunicar na rede.

* Definição das Políticas de Acesso: Com base na identificação dos dispositivos, o administrador de rede define políticas de acesso que indicam quais dispositivos estão autorizados a acessar a rede e quais tipos de acesso eles têm. Por exemplo, alguns dispositivos podem ter acesso completo à rede, enquanto outros podem ter acesso limitado a determinados recursos.

* Configuração no Switch: Após definir as políticas de acesso, o administrador configura o switch para aplicar essas políticas nas portas físicas relevantes. Essa configuração é realizada no switch que controla o acesso à rede, normalmente no nível da camada 2 (camada de enlace) do modelo OSI.

* Métodos de Autenticação: O PNAC pode ser implementado com diferentes métodos de autenticação, dependendo do nível de segurança desejado. Alguns métodos comuns de autenticação incluem o uso de endereços MAC ou autenticação baseada em portas 802.1x (802.1x Port-Based Authentication), que envolve o uso de um servidor de autenticação externo.

* Verificação do Acesso: Quando um dispositivo é conectado a uma porta do switch, o PNAC verifica se ele está autorizado a acessar a rede, com base nas políticas de acesso configuradas. Se o dispositivo for autorizado, ele receberá acesso conforme definido na política. Caso contrário, o acesso será negado.

* Monitoramento e Manutenção: O PNAC também inclui recursos de monitoramento e manutenção para garantir que as políticas de acesso sejam aplicadas corretamente. Inclui registros de atividade de rede e a capacidade de atualizar ou modificar as políticas conforme necessário.


# **IP Spoofing **

* É uma técnica de ataque cibernético que envolve a falsificação do endereço IP de origem em um pacote de dados para mascarar a verdadeira identidade do remetente. Isso permite que o atacante envie pacotes de dados com um endereço IP forjado, fazendo-os parecer originados de uma fonte confiável ou autorizada. Essa técnica é frequentemente utilizada em ataques de negação de serviço distribuídos (DDoS) e em outras atividades maliciosas para evitar a identificação do verdadeiro remetente. Veja como funciona:

* Identificação do Alvo: O atacante começa identificando o alvo do ataque, que pode ser um servidor, um roteador ou outro dispositivo na rede. O objetivo é enviar pacotes de dados falsificados ao alvo, aparentando que eles vêm de uma origem legítima.

* Captura do Tráfego de Rede: Para obter informações sobre o tráfego de rede entre o atacante e o alvo, o atacante pode usar ferramentas de sniffing ou análise de pacotes. Isso permite que ele observe o tráfego existente e identifique endereços IP legítimos na rede.

* Escolha do Endereço IP Falsificado: Com base nas informações obtidas, o atacante escolhe um endereço IP falso para utilizar no ataque. Geralmente, ele seleciona um endereço IP que pertence a uma fonte confiável ou que não esteja em uso na rede, para evitar a detecção.

* Criação do Pacote Forjado: Com o endereço IP falso escolhido, o atacante cria pacotes de dados falsificados, incluindo o endereço IP de origem forjado. Esses pacotes podem conter comandos maliciosos, dados falsos ou até mesmo serem vazios, dependendo do objetivo do ataque.

* Envio dos Pacotes Falsificados: O atacante envia os pacotes de dados falsificados ao alvo. Como os pacotes parecem originados de um endereço IP legítimo ou autorizado, o alvo pode processá-los sem suspeitar de sua autenticidade.

* Consequências do IP Spoofing: As consequências do IP Spoofing podem ser graves. O atacante pode usar essa técnica para executar ataques DDoS, onde múltiplos dispositivos enviam pacotes falsificados ao alvo, sobrecarregando seus recursos e causando indisponibilidade de serviços. Além disso, o IP Spoofing pode ser usado para evitar a detecção ou rastreamento de atividades maliciosas, uma vez que a fonte real do ataque é mascarada com um endereço IP falso. 
