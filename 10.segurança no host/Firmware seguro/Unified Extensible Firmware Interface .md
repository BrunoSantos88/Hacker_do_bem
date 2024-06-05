# Unified Extensible Firmware Interface (UEFI)

* O Unified Extensible Firmware Interface (UEFI) é uma especificação de firmware moderna que substituiu o antigo BIOS (Basic Input/Output System) em muitos sistemas computacionais. O UEFI é responsável por inicializar o sistema, configurar o hardware e fornecer uma interface entre o firmware e o sistema operacional.

* Ao contrário do BIOS, que é um firmware básico e limitado, o UEFI é projetado para ser mais flexível, extensível e seguro. Ele oferece recursos avançados que permitem inicialização mais rápida, suporte a discos rígidos maiores do que 2,2 terabytes, inicialização em modo protegido, suporte a interfaces gráficas e muito mais. O funcionamento do UEFI pode ser dividido em várias etapas:

* Inicialização do UEFI: Quando o sistema é ligado, o UEFI é o primeiro software a ser executado. Ele é carregado a partir de uma memória não volátil, como ROM ou flash, e começa a inicializar o hardware do sistema.

* Configuração do hardware: O UEFI é responsável por detectar e configurar o hardware do sistema, como processadores, memória, dispositivos de armazenamento, interfaces de rede e periféricos conectados. Ele realiza uma série de verificações e inicializações para garantir que o hardware esteja pronto para uso.

* Inicialização do sistema operacional: Após a configuração do hardware, o UEFI localiza e carrega o sistema operacional ou um gerenciador de inicialização, como o GRUB. Ele pode verificar a assinatura digital do sistema operacional para garantir sua autenticidade e integridade.

* Interface do usuário: O UEFI fornece uma interface de usuário gráfica, conhecida como interface do firmware, que permite que os usuários configurem e personalizem o sistema. Através dessa interface, é possível acessar configurações de inicialização, ajustar configurações de hardware, atualizar o firmware e muito mais.

* Extensibilidade: Uma das principais vantagens do UEFI é sua extensibilidade. Ele suporta a execução de aplicativos de terceiros, conhecidos como controladores de inicialização (bootloaders), que podem fornecer recursos adicionais, como criptografia de disco, suporte a sistemas de arquivos avançados e inicialização de múltiplos sistemas operacionais.

