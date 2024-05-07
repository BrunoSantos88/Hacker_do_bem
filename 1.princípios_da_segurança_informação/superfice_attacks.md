# Superfície de ataque
Uma superfície de ataque são todos os pontos em que um agente de ameaça mal-intencionado pode tentar explorar uma vulnerabilidade. Para avaliar a superfície de ataque, é necessário considerar o tipo de agente da ameaça. A superfície de ataque para um ator externo é (ou deveria ser) muito menor do que a de uma ameaça interna. A superfície de ataque pode ser considerada para uma rede como um todo, mas também é analisada para aplicações de software individuais. Minimizar a superfície de ataque significa restringir o acesso para que apenas alguns endpoints, protocolos/portas e serviços/métodos conhecidos sejam permitidos. Cada um deles deve ser avaliado quanto a vulnerabilidades.

- A superfície de ataque pode ser definida também, como um conjunto de todos os pontos de entrada e vulnerabilidades em sistemas, redes e organizações que podem ser explorados por atores de ameaças. Esses pontos de entrada podem incluir servidores, aplicativos, dispositivos, usuários, entre outros. Compreender a superfície de ataque é essencial para identificar possíveis pontos fracos que os atores de ameaças podem explorar. Quanto maior a superfície de ataque, mais vulnerabilidades existem.

- Vetores de ataque
Do ponto de vista do ator da ameaça, diferentes partes da superfície de ataque representam um potencial vetor de ataque. Um vetor de ataque é o caminho que um agente de ameaça usa para obter acesso a um sistema seguro. Na maioria dos casos, obter acesso significa ser capaz de executar código malicioso no alvo. Vetores de ataque são os métodos e técnicas usados pelos atores de ameaças para explorar vulnerabilidades na superfície de ataque.

- Podemos agrupar os vetores de ataque por características comuns. As categorias dos agrupamentos refletem as semelhanças nos métodos e técnicas utilizados pelos atores de ameaças em diferentes tipos de ataques. É importante observar que muitos ataques podem combinar elementos de diferentes categorias para maximizar suas chances de sucesso. Portanto, uma abordagem de segurança holística deve abordar uma variedade de vetores de ataque. Aqui estão algumas categorias que abrangem esses vetores:

# Vetores de ataque baseados em software:

- Malware: o termo "malware" abrange várias formas de software malicioso, incluindo vírus, worms, cavalos de Troia, spyware e ransomware. Esses programas são projetados para infectar sistemas e causar danos, roubar informações ou criar uma porta dos fundos para os invasores.

- Ataques de Injeção (SQL, código etc.): isso inclui ataques como injeção de SQL e injeção de código, onde os invasores inserem código malicioso em aplicativos da web para explorar vulnerabilidades e obter acesso não autorizado a bancos de dados ou sistemas.

- Ataques de Ransomware: os ataques de ransomware envolvem a criptografia de arquivos ou sistemas, com os invasores exigindo um resgate em troca da chave de descriptografia.

- Exploração de vulnerabilidades (incluindo exploits de dia zero): os invasores procuram e exploram vulnerabilidades em software, sistemas operacionais e aplicativos para ganhar acesso não autorizado. Isso inclui exploits de dia zero, que atacam vulnerabilidades desconhecidas.

- Ataques a Dispositivos IoT: os dispositivos da Internet das Coisas frequentemente têm poucas medidas de segurança, tornando-os alvos para invasores que podem explorar vulnerabilidades nesses dispositivos para acessar redes maiores.

- Ataques de evasão de firewall: esses ataques visam enganar os firewalls de segurança para permitir o acesso não autorizado a sistemas ou redes.

# Vetores de ataque sociais e psicológicos:

- Phishing (também baseado em software): o phishing envolve a criação de mensagens de e-mail, sites da web ou mensagens de texto falsas que parecem legítimas para enganar os destinatários a fornecer informações confidenciais, como senhas, números de cartão de crédito ou informações bancárias.

- Engenharia social: é uma técnica que envolve a manipulação psicológica de indivíduos para obter informações confidenciais ou acesso a sistemas. Pode incluir táticas como manipulação, persuasão ou pretextos enganosos.

- Ataques de engenharia reversa: isso envolve a desmontagem e análise de código de software ou dispositivos para descobrir segredos, como algoritmos de criptografia ou protocolos de segurança.

- Ataques de Man-in-the-Middle (MitM): envolve um invasor que se posiciona entre a comunicação entre duas partes, interceptando ou alterando os dados durante a transmissão.

Ataques de spoofing: Isso inclui o spoofing de IP, onde os invasores mascaram seu endereço IP real para parecer que estão em outro lugar na rede.

# Vetores de ataque de redes e tráfego:

- Ataques de Negação de Serviço (DDoS): envolvem uma inundação de tráfego de rede direcionada a um servidor ou serviço, sobrecarregando-o e tornando-o inacessível para os usuários legítimos.

- Ataques a redes wireless: incluem a interceptação de comunicações em redes Wi-Fi, a quebra de senhas de rede e a criação de pontos de acesso falsos.

- Ataques de inundação: envolvem o envio de tráfego excessivo para um alvo, sobrecarregando os recursos e tornando-os inacessíveis.

# Vetores de ataque de autenticação e senhas:

- Ataques de força bruta: nesse tipo de ataque, os invasores tentam adivinhar senhas ou chaves de criptografia ao testar várias combinações rapidamente até encontrar a correta.

- Ataques de dicionário: nesse tipo de ataque, os invasores usam uma lista de palavras-chave comuns e combinações previsíveis como base para a tentativa de adivinhar a senha. Eles testam cada palavra ou combinação em uma tentativa de encontrar uma correspondência válida.

- Rainbow tables: são tabelas de pré-cálculo que contêm hashes (representações criptografadas) de senhas comuns e suas correspondentes senhas em texto simples. Os invasores podem usar essas tabelas para procurar hashes de senhas roubadas e, assim, obter as senhas correspondentes.

- Ataque de risco de senhas online e offline: os ataques de risco em senhas podem ser conduzidos tanto online quanto offline. No ataque online, os invasores tentam adivinhar senhas diretamente em sistemas de autenticação, como sites. No ataque offline, eles tentam quebrar hashes de senhas roubadas de bancos de dados sem precisar interagir diretamente com o sistema em questão.