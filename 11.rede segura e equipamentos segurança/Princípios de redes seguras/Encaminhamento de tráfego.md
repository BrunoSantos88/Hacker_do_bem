# Encaminhamento de tráfego

* O encaminhamento de tráfego no switching e roteamento é o processo de direcionar pacotes de dados de uma origem para um destino em uma rede. No switching, os switches de rede analisam o endereço MAC de destino em um pacote e o encaminham para a porta correta dentro da mesma rede local (LAN) com base em uma tabela de endereços MAC conhecida como tabela CAM. Já no roteamento, os roteadores examinam o endereço IP de destino em um pacote e tomam decisões de roteamento com base em tabelas de roteamento que contêm informações sobre as redes vizinhas e os melhores caminhos para alcançar o destino desejado.
Internet Protocol (IP)

* O Internet Protocol (IP) opera na camada de rede (camada 3) do modelo OSI e é responsável pelo encaminhamento dos pacotes de dados de origem para destino em uma rede. Utiliza endereços IP para identificar os dispositivos na rede. Cada dispositivo conectado a uma rede IP possui um endereço IP exclusivo, que é composto por uma combinação de números. Existem dois principais padrões de IP em uso atualmente: IPv4 e IPv6.


* Quando um dispositivo envia um pacote de dados para outro dispositivo em uma rede, ele encapsula os dados dentro de um pacote IP. O pacote IP contém informações essenciais, como o endereço IP de origem e o endereço IP de destino. Ao receber um pacote IP, os roteadores são responsáveis por encaminhar o pacote em direção ao seu destino. Eles examinam o endereço IP de destino e consultam suas tabelas de roteamento para determinar a melhor rota para o pacote. O roteador encaminha o pacote para o próximo salto na rota até que alcance o destino final.

* Além do encaminhamento, o IP também fornece serviços básicos, como o controle de fragmentação de pacotes, quando um pacote é muito grande para ser transmitido em uma única unidade, e a detecção de erros no cabeçalho do pacote.
Address Resolution Protocol (ARP)

# Address Resolution Protocol (ARP)

* Address Resolution Protocol (ARP) é um protocolo de rede utilizado para associar endereços de camada de rede (endereços IP) a endereços de camada de enlace de dados (endereços MAC). Ele opera na camada 2 (enlace de dados) e é essencial para o funcionamento das redes locais (LANs).

* Quando um dispositivo precisa enviar um pacote de dados para outro dispositivo em uma mesma rede local, ele utiliza o endereço IP de destino para encapsular o pacote. No entanto, para que o pacote seja corretamente entregue, o endereço IP precisa ser associado a um endereço MAC, que é o endereço físico exclusivo atribuído a cada placa de rede. O ARP é responsável por essa resolução de endereço. Quando um dispositivo precisa descobrir o endereço MAC correspondente a um determinado endereço IP, ele envia uma mensagem de ARP na rede local, conhecida como ARP Request (Solicitação ARP). Essa mensagem contém o endereço IP do destino que se deseja alcançar. Os dispositivos na rede recebem a mensagem de ARP Request e verificam se o endereço IP solicitado corresponde ao seu próprio endereço. Se houver correspondência, o dispositivo envia uma mensagem de ARP Reply (Resposta ARP) contendo seu endereço MAC. O dispositivo que fez a solicitação de ARP recebe a resposta contendo o endereço MAC e, em seguida, pode enviar o pacote encapsulado com o endereço MAC de destino correto. Isso permite que o pacote seja entregue ao dispositivo de destino na mesma rede local.

* Adicionalmente, os dispositivos em uma rede local mantêm uma tabela ARP, conhecida como cache ARP, que armazena as informações de mapeamento entre endereços IP e endereços MAC já resolvidos. Essa tabela é atualizada periodicamente ou quando ocorrem alterações na rede.