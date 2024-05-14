# Reconhecimento ativo
- O reconhecimento ativo envolve a interação direta com o alvo. Isso pode incluir varredura de portas, solicitações de DNS, pings e outras atividades que geram tráfego e podem ser detectadas pelo sistema ou pela equipe de segurança. O reconhecimento ativo é semelhante a "bater à porta" do alvo para ver como ele responde. O reconhecimento ativo apresenta maior risco de detecção. As técnicas ativas podem envolver a obtenção de acesso físico às instalações ou o uso de ferramentas de varredura nos serviços da web e em outras redes do alvo.

- Exemplos de técnicas de reconhecimento ativo:

- Engenharia social: refere-se à obtenção de informações, acesso físico às instalações ou mesmo acesso a uma conta de usuário através da arte da persuasão. Embora a quantidade de interação possa variar, isso pode ser classificado como uma técnica ativa.

- Footprinting: usando ferramentas de software, como Nmap (nmap.org), para obter informações sobre um host ou topologia de rede. As varreduras podem ser iniciadas em hosts da web ou em segmentos de rede com ou sem fio, se o investigador puder obter acesso físico a eles. Embora a busca passiva seja possível (limitando-a a detecção de pacotes), a maioria das técnicas de varredura requer conexões de rede ativas com o alvo que podem ser identificadas pelo software de detecção.

- Varredura de portas: identificar quais portas estão abertas e quais serviços estão em execução.

- Solicitações de DNS: descobrir informações sobre a infraestrutura de rede.

- Ping sweeps: identificar hosts ativos na rede.

- Banner grabbing: coletar informações dos banners de serviços em execução.

Vantagens: fornece informações detalhadas e em tempo real, úteis para identificar vulnerabilidades específicas. É útil para testar a resiliência do alvo a varreduras ativas.

Desvantagens: pode ser detectado pelo alvo, resultando em bloqueio ou alerta de segurança. Pode ser invasivo e perturbar as operações normais.

# Reconhecimento passivo

- Exemplos de técnicas de reconhecimento passivo:

- Monitoramento de tráfego de rede: observar o tráfego para identificar padrões e sistemas ativos.

- Análise de logs: examinar logs de eventos e registros de sistemas em busca de informações úteis.

- Pesquisa OSINT: Inteligência de código aberto (OSINT — Open Source Intelligence) — usando ferramentas de pesquisa na web, mídias sociais e sites que verificam vulnerabilidades em dispositivos e serviços conectados à internet para obter informações sobre o alvo. Ferramentas de agregação OSINT, como theHarvester, coletam e organizam esses dados de diversas fontes. OSINT quase não requer acesso privilegiado, pois depende da localização de informações que a empresa disponibiliza publicamente, intencionalmente ou não. Coleta informações disponíveis publicamente sobre alvos, como endereços de IP, nomes de domínio, informações de registro WHOIS etc.

- Vantagens: geralmente passa despercebido e não perturba o alvo. É útil para coletar informações gerais sobre a infraestrutura do alvo.

- Desvantagens: pode fornecer informações menos detalhadas e mais antigas, não sendo ideal para identificar vulnerabilidades específicas.