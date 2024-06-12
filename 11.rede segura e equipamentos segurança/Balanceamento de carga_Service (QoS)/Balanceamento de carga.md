# Balanceamento de carga, Clustering e Quality of Service (QoS)

* Um Balanceador de Carga (Load Balancer) é um dispositivo ou software que distribui o tráfego de rede de forma equilibrada entre vários servidores ou recursos para otimizar o desempenho, evitar sobrecargas e melhorar a disponibilidade dos serviços. O objetivo principal do Load Balancer é garantir que cada servidor receba uma quantidade justa de solicitações de clientes, evitando que um servidor específico fique sobrecarregado e causando atrasos ou falhas no atendimento. Existem dois tipos principais de Load Balancer:

* Balanceador de Carga de Camada 4 (Layer 4 Load Balancer): Opera na camada 4 (camada de transporte) do modelo OSI. Ele toma decisões de balanceamento de carga com base em informações contidas nos cabeçalhos dos pacotes de rede, como endereços IP de origem e destino, portas de origem e destino, e informações do protocolo de transporte (como TCP ou UDP).

* Balanceador de Carga de Camada 7 (Layer 7 Load Balancer): Atua na camada 7 (camada de aplicação) do modelo OSI. Além das informações disponíveis no Layer 4, ele examina o conteúdo do tráfego de aplicação, permitindo tomar decisões de balanceamento de carga com base em informações mais detalhadas, como URL, cabeçalhos HTTP e dados do payload.


# Ataque Distribuído de Negação de Serviço (DDoS)

Um Ataque Distribuído de Negação de Serviço ou Distributed Denial of Service (DDoS) Attack, é uma forma de ataque cibernético projetada para sobrecarregar um servidor, serviço ou infraestrutura de rede, tornando-os inacessíveis a usuários legítimos. Nesse tipo de ataque, um grande volume de tráfego malicioso é direcionado ao alvo, inundando seus recursos e causando uma negação de serviço para os usuários legítimos que tentam acessá-lo. Veja como funciona:

* Recrutamento de Botnets: Os atacantes geralmente não possuem recursos suficientes para lançar ataques DDoS sozinhos. Por isso, eles recrutam uma rede de dispositivos comprometidos, conhecida como botnet. Esses dispositivos podem ser computadores, servidores, roteadores, câmeras IP ou outros dispositivos conectados à internet que foram infectados com malware e estão sob o controle do atacante.

* Preparação do Ataque: O atacante configura e prepara a botnet para lançar o ataque DDoS. Isso pode incluir o uso de kits de ferramentas especializados para controlar os dispositivos comprometidos e direcionar o tráfego ao alvo. O atacante também pode dividir a botnet em vários grupos, cada um encarregado de atacar diferentes partes do alvo, o que torna o ataque mais complexo de ser mitigado.

* Ataque - Enchendo a Tubulação: Uma vez que a botnet está pronta, o ataque começa. Os dispositivos comprometidos enviam uma enorme quantidade de tráfego malicioso ao servidor ou serviço alvo. Esse tráfego pode ser do tipo TCP, UDP, HTTP ou até mesmo pacotes ICMP, dependendo do tipo de ataque DDoS.

* Sobrecarga de Recursos: Com o volume massivo de tráfego malicioso, os recursos do servidor alvo, como CPU, memória e largura de banda, são rapidamente sobrecarregados. Isso impede que o servidor responda a solicitações legítimas dos usuários, resultando em uma negação de serviço. O objetivo do atacante é tornar o serviço inacessível ou desativá-lo completamente.


 # Clustering


 * O clustering em balanceamento de carga é uma técnica que combina múltiplos servidores (nós) em um grupo, conhecido como cluster, para distribuir a carga de trabalho de forma equilibrada entre eles. O objetivo é melhorar o desempenho, a escalabilidade e a disponibilidade dos serviços, permitindo que os servidores trabalhem em conjunto para atender às solicitações dos clientes de forma mais eficiente. Veja como funciona:

* Criação do Cluster: Os servidores físicos ou virtuais são agrupados em um único cluster. Os servidores do cluster podem estar fisicamente próximos ou distribuídos em diferentes locais geográficos, dependendo dos requisitos de redundância e disponibilidade.

* Distribuição da Carga: Quando os clientes enviam solicitações para os serviços hospedados pelo cluster, um dispositivo de balanceamento de carga é colocado em frente ao cluster para distribuir a carga de trabalho entre os servidores. O load balancer pode usar diferentes algoritmos, como Round Robin (distribuição sequencial), Least Connections (encaminhamento para o servidor com menos conexões) ou Hashing (encaminhamento com base em informações dos pacotes), para determinar para qual servidor direcionar cada solicitação.

* Monitoramento e Gerenciamento: O cluster geralmente possui um mecanismo de monitoramento que verifica o status de cada servidor em tempo real. Caso um servidor falhe ou apresente problemas, o load balancer redireciona automaticamente as solicitações para os servidores restantes, garantindo que os serviços permaneçam disponíveis, mesmo em caso de falha de um dos nós.

* Escalabilidade e Disponibilidade: Com o clustering em balanceamento de carga, é possível adicionar ou remover servidores do cluster conforme a demanda, o que permite ajustar a capacidade de processamento de acordo com o tráfego e evitar sobrecargas. Além disso, a redundância fornecida pelo cluster melhora a disponibilidade, uma vez que, se um servidor falhar, os outros servidores podem assumir a carga e manter o serviço ativo.

*  Active/Passive (A/P) Clustering: No A/P Clustering, apenas um dos servidores é designado como ativo (active), enquanto os demais servidores são designados como passivos (passive). O servidor ativo é responsável por processar todas as solicitações de clientes, enquanto os servidores passivos permanecem ociosos, em modo de espera, monitorando continuamente o servidor ativo. Caso o servidor ativo falhe, um dos servidores passivos é ativado automaticamente pelo load balancer para assumir a carga e garantir a continuidade dos serviços.

* Active/Active (A/A) Clustering: No A/A Clustering, todos os servidores do cluster estão ativos e participam ativamente do processamento das solicitações dos clientes. O load balancer distribui a carga de trabalho de forma equilibrada entre todos os servidores ativos, garantindo que cada servidor contribua igualmente para o atendimento das solicitações. Essa configuração oferece melhor utilização dos recursos, permitindo que todos os servidores estejam envolvidos no processamento do tráfego.

