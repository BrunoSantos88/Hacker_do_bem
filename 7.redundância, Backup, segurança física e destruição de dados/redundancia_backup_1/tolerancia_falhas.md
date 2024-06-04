# Tolerância a falhas

* A redundância aumenta a tolerância a falhas, reduzindo a probabilidade de perda de dados ou interrupções nos sistemas. Se um componente falhar, os demais assumem a carga de trabalho, garantindo que as operações continuem sem interrupções significativas. Isso é particularmente importante em ambientes em que a falha de um único componente pode ter um impacto significativo, como servidores, sistemas de armazenamento e redes.

* Veja a Figura "Exemplo de redundância de servidores Web para contar com redundância continua" como um exemplo de tolerância a falhas: se um dos servidores web falhar devido a problemas técnicos, como um travamento ou uma queda de energia, o sistema de balanceamento de carga automaticamente redireciona as requisições para os servidores restantes no cluster. Dessa forma, os usuários continuam acessando o site sem interrupções significativas, mesmo com a falha de um dos servidores.

# Recuperação rápida

* Ao contar com redundância, a recuperação de falhas ou desastres pode ser mais rápida e eficiente. Por exemplo, em um ambiente de alta disponibilidade, um cluster de servidores web é configurado para distribuir o tráfego de entrada entre os servidores, garantindo assim o desempenho e a escalabilidade do sistema. Um balanceador de carga é responsável por receber as solicitações dos clientes e encaminhá-las de forma equilibrada para os servidores disponíveis. Isso permite que a carga de trabalho seja distribuída de maneira eficiente, evitando sobrecarga em um único servidor.

* Veja a Figura "Exemplo de redundância de servidores Web para contar com redundância continua", no caso de um servidor falhar, o sistema de failover entra em ação. O failover é o processo de transferir automaticamente o tráfego e as solicitações de um servidor que falhou para um servidor redundante e funcional. O balanceador de carga detecta a falha do servidor por meio de monitoramento contínuo de disponibilidade (por exemplo, verificações de ping ou requisições HTTP) e redireciona o tráfego para outro servidor disponível.

* Essa abordagem de cluster de servidores web com balanceador de carga e failover permite uma recuperação rápida em caso de falha de um servidor. Se um servidor do cluster ficar indisponível devido a uma falha de hardware, um problema de rede ou qualquer outra razão, o balanceador de carga redirecionará automaticamente as solicitações para os servidores restantes. Isso garante que o serviço permaneça ativo e que os usuários continuem a receber respostas às suas solicitações, sem interrupções significativas.
Proteção contra desastres

* A redundância pode ajudar a proteger os dados e sistemas contra desastres naturais, falhas de energia ou outros eventos catastróficos. Por exemplo, suponha que uma empresa tenha uma infraestrutura de TI crítica, onde a perda de dados ou interrupção dos serviços pode ter consequências graves. Para garantir a proteção adequada dos dados contra desastres, a empresa decide implementar uma estratégia de backup com redundância de lugares de armazenamento.

* Nesse cenário, a empresa realiza rotineiramente backups dos dados essenciais para um local de armazenamento principal, que pode ser um servidor de armazenamento dedicado. No entanto, ela reconhece a necessidade de proteção adicional contra eventos catastróficos, como incêndios, inundações ou terremotos, que possam comprometer o local principal de armazenamento.

* Para isso, a empresa opta por implementar a redundância de lugares de armazenamento de backup. Ela estabelece um segundo local de armazenamento em uma área geograficamente separada do local principal. Esse segundo local pode ser um data center externo, que ofereça serviços de armazenamento em nuvem ou um local físico dedicado para armazenamento off-site.


* A empresa configura um processo automatizado de replicação dos backups do local principal para o segundo local de armazenamento. Isso pode ser feito por meio de tecnologias como replicação síncrona ou assíncrona, dependendo da disponibilidade e da latência aceitáveis.

* Com a redundância de lugares de armazenamento de backup, a empresa garante que, mesmo que ocorra um desastre no local principal, os backups dos dados estejam protegidos e acessíveis a partir do segundo local de armazenamento. Isso permite uma recuperação rápida e eficiente dos dados em caso de perda ou danos no local principal.