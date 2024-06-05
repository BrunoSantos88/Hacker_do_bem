# Trusted Platform Module (TPM)

* É um chip de hardware projetado para fornecer recursos de segurança e criptografia em um sistema computacional. Ele é um componente crítico do Hardware Root of Trust e desempenha um papel fundamental na proteção de dados e na autenticação de dispositivos. O TPM opera de forma independente da CPU e do sistema operacional, o que significa que ele pode executar suas funções de segurança mesmo quando o sistema está desligado ou em modo de suspensão. O chip TPM contém uma série de recursos e funcionalidades de segurança, incluindo:

* Armazenamento seguro de chaves criptográficas: possui uma área segura chamada de Armazenamento de Chave Protegida (Protected Storage Key, PSK), onde chaves criptográficas podem ser armazenadas de forma segura. Essas chaves são protegidas contra acesso não autorizado e podem ser usadas para autenticação e criptografia.

* Geração de chaves criptográficas: O TPM é capaz de gerar chaves criptográficas seguras, como chaves de criptografia assimétrica (por exemplo, RSA) e chaves de criptografia simétrica (por exemplo, AES). Essas chaves são geradas dentro do TPM e nunca deixam o chip, garantindo sua integridade e confidencialidade.

* Operações criptográficas seguras: O TPM fornece um ambiente seguro para executar operações criptográficas, como assinaturas digitais, verificação de integridade, geração de hash e criptografia. Essas operações são realizadas dentro do chip TPM, garantindo a segurança dos dados e a autenticidade das operações.

* Medição de integridade: O TPM possui a capacidade de medir a integridade do firmware, do sistema operacional e de outros componentes críticos do sistema. Ele armazena essas medidas em um registro seguro chamado Log de Medição (PCR), permitindo que as medidas de integridade sejam verificadas posteriormente.

* Autenticação de plataforma: O TPM pode ser usado para autenticar a plataforma, verificando a integridade do firmware, do sistema operacional e de outros componentes críticos durante a inicialização. Isso ajuda a prevenir ataques de inicialização comprometida e garante a execução apenas de software confiável.

