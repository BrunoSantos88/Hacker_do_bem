# Tecnologias de virtualização

* São conjuntos de ferramentas, técnicas e recursos que permitem a criação e execução de ambientes virtuais, nos quais recursos de hardware, como processadores, memória, armazenamento e rede, são compartilhados e gerenciados de forma eficiente
Docker

* É uma plataforma de código aberto que facilita a criação, implantação e execução de aplicativos em contêineres. Ele utiliza tecnologias de virtualização em nível de sistema operacional para empacotar aplicativos e suas dependências em unidades isoladas chamadas de contêineres. Veja como funciona:

* Imagens de Contêiner: O Docker opera com base em imagens de contêiner, que são pacotes executáveis que contêm tudo o que é necessário para executar um aplicativo, incluindo o código do aplicativo, bibliotecas, dependências e arquivos de configuração. As imagens são criadas a partir de arquivos de configuração chamados Dockerfiles ou podem ser obtidas a partir de repositórios de imagens pré-existentes, como o Docker Hub. As imagens são leves, independentes e portáveis, e podem ser versionadas e distribuídas facilmente.

* Contêineres: Os contêineres Docker são instâncias em execução de uma imagem. Eles são isolados uns dos outros e do host subjacente, fornecendo um ambiente consistente e seguro para a execução dos aplicativos. Cada contêiner possui seu próprio sistema de arquivos isolado, que é uma camada adicional sobre a imagem de base. Os contêineres são iniciados e encerrados rapidamente, permitindo uma escalabilidade eficiente e um rápido provisionamento de recursos.

* Docker Engine: O Docker Engine é o componente central do Docker que gerencia a criação, execução e gerenciamento dos contêineres. Ele consiste em três componentes principais: o daemon, a API e a interface de linha de comando (CLI). O daemon é um serviço em segundo plano que gerencia os contêineres e as imagens. A API fornece uma interface para interagir com o Docker Engine, enquanto a CLI permite que os usuários executem comandos do Docker a partir da linha de comando.

* Orquestração de Contêineres: Para implantar e gerenciar aplicativos Docker em um ambiente de produção, pode-se utilizar ferramentas de orquestração de contêineres, como o Kubernetes ou o Docker Swarm. Essas ferramentas permitem o dimensionamento, a monitorização, o balanceamento de carga e a alta disponibilidade de contêineres em um ambiente distribuído.

* Vantagens do Docker: Docker promove a padronização e a consistência dos ambientes de desenvolvimento, teste e produção, uma vez que os aplicativos são empacotados com todas as suas dependências. Além disso, o Docker oferece um isolamento eficiente entre os contêineres, garantindo que os aplicativos não interfiram uns nos outros. O uso de contêineres Docker também permite um provisionamento rápido de recursos, uma implantação simplificada e uma maior eficiência de utilização de recursos.

# Kubernetes

* O Kubernetes é uma plataforma de orquestração de contêineres de código aberto desenvolvida pelo Google. Ele facilita a implantação, o dimensionamento e o gerenciamento de aplicativos contêinerizados em um ambiente de produção. O funcionamento do Kubernetes envolve os seguintes componentes e conceitos principais:

- Cluster: Um cluster Kubernetes consiste em um conjunto de nós (hosts) que executam contêineres. Cada nó é uma máquina física ou virtual que hospeda os contêineres. O cluster é gerenciado pelo Master, que controla a orquestração dos contêineres e o balanceamento de carga.

- Master: O Master é o componente central do Kubernetes responsável pela coordenação e gerenciamento do cluster. Ele consiste em três componentes principais: o API Server, o Controller Manager e o Scheduler.

- API Server: É a interface de comunicação entre os componentes do Kubernetes e os usuários ou outras ferramentas externas. Ele recebe e processa as solicitações de gerenciamento do cluster.

- Controller Manager: É responsável pelo monitoramento e controle contínuo dos recursos no cluster. Ele garante que o estado desejado do cluster seja mantido.

- Scheduler: É responsável por atribuir contêineres a nós adequados no cluster, levando em consideração fatores como capacidade, recursos e requisitos específicos definidos pelos usuários.

- Pod: É a unidade básica do Kubernetes e representa um ou mais contêineres que são implantados e executados juntos em um único nó. Eles compartilham o mesmo endereço IP e espaço de armazenamento, permitindo que se comuniquem facilmente entre si.

- ReplicaSet: É um controlador do Kubernetes que garante que um número específico de réplicas de um Pod esteja em execução no cluster. Ele monitora continuamente o estado dos Pods e faz ajustes para garantir que o número desejado de réplicas esteja em execução.

- Service: É um objeto do Kubernetes que define um conjunto lógico de Pods e uma política de acesso a esses Pods. Ele fornece uma camada de rede estável e um único ponto de acesso para os aplicativos executados nos Pods, permitindo que eles se comuniquem interna ou externamente ao cluster.

- Namespace: O Namespace é um recurso do Kubernetes usado para organizar e isolar os recursos do cluster. Ele permite que diferentes equipes, projetos ou aplicativos compartilhem o mesmo cluster sem interferir uns nos outros.

* O funcionamento geral do Kubernetes envolve o seguinte fluxo de trabalho:

* O usuário define os recursos e as configurações desejadas para seus aplicativos no Kubernetes, usando arquivos de configuração YAML ou comandos de linha de controle (CLI).

* O Master do Kubernetes recebe as solicitações de implantação e escalonamento de aplicativos.

* O Scheduler decide em qual nó cada Pod será implantado com base em requisitos de recursos e disponibilidade.

* O Master envia as instruções para os nós apropriados para criar e iniciar os Pods.

* O ReplicaSet garante que o número especificado de réplicas do Pod esteja em execução e gerencia a resiliência do aplicativo.

* Os Services permitem a comunicação com os aplicativos por meio de uma camada de rede estável.

* O Kubernetes monitora continuamente o estado dos Pods e toma ações corretivas em caso de falhas ou alterações de demanda.

# Vagrant

* É uma ferramenta de código aberto que permite a criação e o gerenciamento fácil de ambientes de desenvolvimento virtualizados. Ele simplifica a configuração e a distribuição de VMs através do uso de arquivos de configuração simples e repetíveis. Veja como funciona:

* Arquivo de Configuração (Vagrantfile): O Vagrant utiliza um arquivo de configuração chamado Vagrantfile para descrever as características e a configuração do ambiente virtualizado. O Vagrantfile é escrito em Ruby e define aspectos como o tipo de VM a ser utilizado, recursos de hardware (CPU, memória), rede, provisionamento e compartilhamento de pastas entre o host e a VM. É nesse arquivo que os desenvolvedores podem especificar as configurações personalizadas do ambiente de desenvolvimento, como escolha do sistema operacional e a instalação de pacotes e software específicos.

* Provedor de VMs: O Vagrant é compatível com vários provedores de máquinas virtuais, como VirtualBox, VMware, Hyper-V, entre outros. O provedor de VM escolhido é responsável por criar e gerenciar as VMs. O Vagrant interage com o provedor para provisionar as VMs com base nas configurações definidas no Vagrantfile. Por exemplo, o Vagrant pode instruir o VirtualBox a criar uma nova VM e configurá-la de acordo com as especificações do Vagrantfile.

* Gerenciamento de Ciclo de Vida: O Vagrant simplifica o ciclo de vida das VMs. Quando o desenvolvedor executa o comando "vagrant up", o Vagrant lê o Vagrantfile, cria a VM com base nas configurações e inicia o provisionamento. O provisionamento pode incluir a instalação de software, a configuração de rede, a execução de scripts de inicialização, entre outras tarefas personalizadas. O Vagrant também oferece comandos para interagir com a VM, como "vagrant ssh" para acessar a VM por meio de uma conexão SSH.

* Compartilhamento de Arquivos: O Vagrant permite o compartilhamento de arquivos entre o host e a VM. Facilita o desenvolvimento, permitindo que os arquivos do projeto sejam acessíveis tanto no host quanto na VM. Qualquer alteração feita nos arquivos do projeto no host é automaticamente refletida na VM, permitindo um fluxo de trabalho de desenvolvimento contínuo.

* Gerenciamento de Múltiplas VMs: O Vagrant suporta a criação e o gerenciamento de múltiplas VMs em um único ambiente de desenvolvimento. Isso é especialmente útil quando há necessidade de configurar uma arquitetura de aplicativo complexa com várias VMs interconectadas.

* Integração com Ferramentas de Configuração e Provisionamento: O Vagrant é frequentemente usado em conjunto com ferramentas de provisionamento como o Ansible, Chef ou Puppet. Essas ferramentas podem ser usadas para automatizar a configuração e o provisionamento da VM durante o processo de criação.

