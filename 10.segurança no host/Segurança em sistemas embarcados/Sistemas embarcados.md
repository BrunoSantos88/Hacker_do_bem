# Sistemas embarcados

* São sistemas computacionais projetados para executar tarefas específicas dentro de um dispositivo ou sistema maior. Eles são caracterizados por serem integrados a um hardware específico e dedicados a executar funções pré-determinadas. Esses sistemas são projetados para serem eficientes em termos de recursos computacionais, energia e espaço físico.

* Um sistema embarcado é composto por três elementos principais: hardware, software e firmware. O hardware é a parte física do sistema, incluindo o processador, memória, dispositivos de entrada/saída e sensores. O software é responsável por controlar e coordenar as operações do sistema embarcado, definindo a lógica e as funcionalidades desejadas. Já o firmware é um software de baixo nível que está gravado em uma memória não volátil e é responsável por fornecer as instruções básicas para o funcionamento do hardware.

# Capacidade de processamento

* A capacidade de processamento em sistemas embarcados é geralmente limitada devido a uma série de razões:

* Restrições de recursos: Sistemas embarcados são projetados para serem eficientes em termos de recursos computacionais, energia e espaço físico. Isso significa que eles geralmente possuem recursos limitados, como processadores de baixo consumo de energia, memória limitada e espaço de armazenamento restrito. Essas restrições são necessárias para garantir que o sistema possa ser incorporado ao dispositivo ou sistema maior de forma econômica e eficiente.

* Necessidades específicas de aplicação: Os sistemas embarcados são desenvolvidos para atender a necessidades específicas de aplicação. Eles são projetados para executar funções pré-determinadas e não possuem a flexibilidade e a capacidade de processamento de sistemas de propósito geral, como computadores pessoais. Isso significa que o hardware e o software são otimizados para realizar tarefas específicas, muitas vezes em tempo real, em vez de oferecer um amplo poder de processamento.

* Consumo de energia: Muitos sistemas embarcados são alimentados por baterias ou fontes de energia limitadas. Portanto, a eficiência energética é uma consideração crucial. Processadores de baixa potência são preferidos para minimizar o consumo de energia e prolongar a vida útil da bateria. Isso resulta em uma capacidade de processamento reduzida em comparação com sistemas de propósito geral que têm acesso a uma fonte de alimentação constante.

#  Controladores lógicos para sistemas embarcados

* Sistemas embarcados normalmente são baseados em firmware executado em um controlador lógico programável (PLC). Esses PLCs são construídos com componentes de hardware e sistema operacional diferentes dos encontrados em alguns PCs de mesa.
Sistemas em chip (SoC)

* Sistemas em Chip (SoC, do inglês System on Chip) são dispositivos eletrônicos que integram diversos componentes e funcionalidades de um sistema completo em um único chip. Esses sistemas são projetados para oferecer alto desempenho, menor consumo de energia e menor custo em comparação com a implementação de cada componente separadamente. Um SoC é composto por vários blocos funcionais, como um processador central (CPU), memória, controladores de periféricos, interfaces de comunicação, aceleradores gráficos, entre outros. Esses blocos são interconectados por meio de barramentos internos dentro do chip, permitindo a comunicação e o compartilhamento de dados entre os componentes.

* A principal vantagem dos SoCs é a integração de várias funcionalidades em um único chip, reduzindo a complexidade do projeto, o tamanho físico do dispositivo e o consumo de energia. A integração em um único chip também permite um melhor desempenho, uma vez que a comunicação entre os componentes é mais rápida e eficiente, evitando gargalos devido à latência da comunicação externa. Os SoCs são amplamente utilizados em uma variedade de dispositivos, como smartphones, tablets, dispositivos de Internet das Coisas (IoT), sistemas embarcados, consoles de videogame, sistemas de navegação veicular, entre outros.

*  O Raspberry Pi é um computador de placa única (single-board computer) que possui um SoC em seu coração. O SoC presente no Raspberry Pi combina um processador central (CPU), memória, controladores de periféricos, interfaces de comunicação, aceleradores gráficos e outros blocos funcionais em um único chip. Essa integração permite que o Raspberry Pi funcione como um computador completo, oferecendo capacidades de processamento, armazenamento e conectividade.

* Por outro lado, o Arduino também é um exemplo de SoC, embora sua arquitetura seja mais focada em sistemas embarcados e projetos de eletrônica. O Arduino possui um microcontrolador como seu SoC, que inclui uma CPU, memória, interfaces de entrada/saída e outros recursos essenciais para a execução de tarefas específicas. Embora o Arduino seja menos poderoso em termos de processamento em comparação com o Raspberry Pi, ele é altamente otimizado para aplicações de controle e automação, além de consumir menos energia.

# Field Programmable Gate Array (FPGA)

* Um Field Programmable Gate Array (FPGA) é um dispositivo eletrônico que consiste em uma matriz de blocos lógicos programáveis (logic blocks) interconectados. Esses blocos lógicos podem ser configurados e reconfigurados para implementar diferentes funções lógicas e circuitos digitais personalizados. Dessa forma, os FPGAs oferecem uma solução flexível e altamente customizável para a implementação de circuitos digitais.

* Os FPGAs são programados usando linguagens de descrição de hardware (HDL, do inglês Hardware Description Language), como VHDL (VHSIC Hardware Description Language) ou Verilog. Essas linguagens permitem descrever a função lógica desejada em um nível abstrato, especificando as interconexões dos blocos lógicos e seus comportamentos.

* Ao programar um FPGA, o projeto é sintetizado em uma configuração específica que define a conexão dos blocos lógicos e os elementos de roteamento. Essa configuração é então carregada no FPGA, permitindo que ele execute a função lógica desejada. A flexibilidade dos FPGAs permite a criação de circuitos altamente personalizados e adaptáveis para uma ampla gama de aplicações.

# Real-Time Operating Systems (RTOS)

* Um Real-Time Operating System (RTOS) é um sistema operacional projetado para lidar com tarefas em tempo real, ou seja, tarefas que possuem requisitos de tempo estritos e devem ser concluídas dentro de prazos determinados. Ao contrário dos sistemas operacionais de propósito geral, os RTOS são altamente determinísticos e fornecem recursos para o agendamento e a execução precisa de tarefas em tempo real.

* Os RTOS são projetados para oferecer garantias de tempo de resposta previsíveis e confiáveis. Eles fornecem mecanismos de priorização de tarefas, agendamento de tempo real, compartilhamento de recursos, gerenciamento de eventos e comunicação entre tarefas. Eles podem oferecer serviços de temporização, sincronização, semáforos, filas de mensagens e gerenciamento de memória.

* Um exemplo popular de RTOS é o FreeRTOS, que é um sistema operacional de tempo real de código aberto amplamente utilizado em sistemas embarcados e IoT. Outros exemplos incluem o eCos, VxWorks, QNX Neutrino RTOS e Micrium µC/OS-II. Esses sistemas operacionais são projetados para oferecer baixa latência, escalabilidade e confiabilidade, atendendo aos requisitos de tempo real de uma variedade de aplicações, como automóveis, dispositivos médicos, robótica, sistemas de controle industrial e aeroespacial.