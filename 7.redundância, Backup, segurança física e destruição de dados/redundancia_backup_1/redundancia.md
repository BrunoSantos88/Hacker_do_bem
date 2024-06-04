# Redundância

* A redundância desempenha um papel fundamental na área de Tecnologia da Informação (TI) e é de extrema importância em diversos aspectos:
Disponibilidade contínua

* A redundância ajuda a garantir a disponibilidade contínua dos serviços e sistemas de TI. Ao ter componentes ou sistemas duplicados, em caso de falha em um deles, outro pode assumir a operação sem interromper o funcionamento dos serviços. Isso é especialmente crítico em ambientes de missão crítica, onde a indisponibilidade pode resultar em perdas financeiras significativas, interrupção dos negócios ou impacto na reputação da empresa.

* Um exemplo prático é a implementação de um cluster de servidores em um ambiente de servidor web de alto tráfego. Suponha que uma empresa de comércio eletrônico tenha um website que recebe milhares de visitantes simultâneos e não pode tolerar qualquer período de indisponibilidade, pois isso resultaria em perdas financeiras significativas. Veja a Figura "Exemplo de redundância de servidores Web para contar com redundância continua", onde são mostrados “n” servidores Web que trabalham em Cluster para fornecer disponibilidade contínua do serviço Web.


* Nesse caso, a empresa pode configurar um cluster de servidores web, onde vários servidores são combinados para atuar como um único sistema. Cada servidor do cluster é idêntico em termos de hardware e software, e todos eles compartilham a carga de trabalho dos visitantes do site.

* Com essa configuração, se um dos servidores do cluster falhar, os demais assumirão automaticamente a carga de trabalho. Os visitantes do site continuarão a ser atendidos sem interrupções perceptíveis, já que a carga é distribuída entre os servidores funcionais restantes. O sistema de balanceamento de carga garantirá que as solicitações dos usuários sejam direcionadas para os servidores disponíveis.

* Essa abordagem de redundância garante a disponibilidade contínua do website, mesmo em caso de falha de um dos servidores. Os usuários não experimentarão tempo de inatividade ou interrupção nos serviços. Além disso, a empresa pode aproveitar esse cluster para realizar manutenção programada, onde um servidor pode ser temporariamente removido do cluster para atualizações ou reparos, enquanto os demais continuam a fornecer o serviço.