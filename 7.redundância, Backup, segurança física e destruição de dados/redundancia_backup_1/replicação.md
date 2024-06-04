# Replicação

* A replicação é uma prática que consiste em criar cópias idênticas de dados, sistemas ou componentes em diferentes localidades ou dispositivos. O objetivo principal da replicação é garantir a disponibilidade contínua dos recursos, mitigar o impacto de falhas e aumentar a resiliência do sistema.

* A replicação pode ser aplicada a diferentes níveis de um ambiente de TI. Por exemplo, a replicação de dados envolve a criação de cópias exatas de informações em diferentes locais ou dispositivos de armazenamento. Isso é frequentemente utilizado para proteger dados críticos contra perdas, danos ou corrupção. Ao ter várias cópias dos dados, se uma delas for comprometida ou inacessível, as cópias restantes podem ser utilizadas para recuperar ou continuar a operação.

* Além disso, a replicação também pode ser aplicada a sistemas e componentes. Por exemplo, em um ambiente de servidores, é possível ter servidores replicados que executam as mesmas tarefas e contêm os mesmos dados. Isso permite que, em caso de falha de um servidor, outro servidor replicado possa assumir a carga de trabalho sem interromper os serviços. A replicação de servidores é frequentemente usada para garantir a continuidade dos serviços e minimizar o tempo de inatividade em situações de falha.
Redundant Array of Independent Disks (RAID)

* É uma tecnologia que envolve a combinação de múltiplos discos rígidos (como HDD ou SSD) para melhorar o desempenho, a capacidade de armazenamento e a confiabilidade dos sistemas de armazenamento. A sua implementação em um computador ou servidor é:

* Implementação via software: A funcionalidade RAID é fornecida pelo sistema operacional ou por um software específico. A implementação via software é geralmente mais flexível e pode ser executada em qualquer sistema compatível. É possível configurar e gerenciar as configurações RAID diretamente pelo software, sem a necessidade de componentes físicos adicionais.

* O software RAID utiliza os recursos de processamento da CPU para gerenciar as operações de RAID, o que pode afetar o desempenho geral do sistema. No entanto, as soluções de software são mais acessíveis em termos de custo, pois não requerem hardware especializado. Além disso, a implementação via software oferece maior portabilidade, pois as configurações RAID podem ser transferidas entre sistemas.

* Implementação via hardware: Nesse caso, o RAID é implementado por meio de uma controladora de hardware dedicada, geralmente instalada em uma placa PCI-e no computador. Essa controladora gerencia todas as operações de RAID, aliviando a carga de processamento da CPU e melhorando o desempenho geral do sistema. As controladoras de hardware RAID possuem processadores próprios, memória cache e interfaces de disco dedicadas para otimizar as operações de armazenamento.

* A implementação via hardware oferece maior desempenho, já que as operações de RAID são executadas independentemente da CPU principal. Além disso, as controladoras de hardware geralmente oferecem recursos avançados, como cache de gravação, monitoramento de integridade de disco e suporte para diferentes níveis de RAID.

* No entanto, a implementação via hardware é mais cara do que a implementação via software, pois requer a compra de controladoras RAID dedicadas. Além disso, as controladoras de hardware podem ter suporte limitado a sistemas operacionais específicos, exigindo drivers e software de gerenciamento específicos. Veja um exemplo de uma placa PCI-e de RAID na seguinte figura.