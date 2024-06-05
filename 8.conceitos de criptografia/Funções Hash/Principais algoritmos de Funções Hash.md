# Principais algoritmos de Funções Hash

* Os principais algoritmos de funções hash são ferramentas fundamentais para garantir a segurança e a integridade dos dados em diversas aplicações. Esses algoritmos são projetados para calcular resumos criptográficos dos dados de entrada, gerando valores de hash únicos e de tamanho fixo. Cada algoritmo possui suas próprias propriedades, tamanhos de saída e características específicas, que determinam sua adequação em diferentes contextos:

# MD5 (Message Digest Algorithm 5)

* O algoritmo MD5 (Message Digest Algorithm 5) é um dos algoritmos de função hash criptográfica mais conhecidos e amplamente utilizados. Ele foi desenvolvido por Ronald Rivest em 1991 e é comumente usado para calcular resumos de mensagem de 128 bits.

* O MD5 opera em blocos de dados de tamanho fixo (512 bits) e utiliza uma série de operações bitwise, aritméticas e lógicas para processar os dados de entrada. O algoritmo passa por quatro etapas principais: inicialização, processamento de blocos, finalização e geração do valor de hash.

* Durante o processamento, o algoritmo divide os dados de entrada em blocos de 512 bits e aplica várias operações em cada bloco para misturar os bits e propagar as mudanças por todo o valor de hash. Essas operações incluem rotações, adições módulo 2^32, funções lógicas e tabelas de constantes pré-definidas.

* Uma característica importante do MD5 é a sua propriedade de resistência a colisões, que significa que é extremamente difícil encontrar duas mensagens diferentes que produzam o mesmo valor de hash MD5. No entanto, devido a vulnerabilidades descobertas, o MD5 não é mais considerado seguro para aplicações criptográficas críticas, pois é possível gerar colisões de forma prática com ataques computacionais modernos.

* O MD5 ainda é utilizado em algumas aplicações não criptográficas, como verificação de integridade de arquivos e armazenamento de senhas. No entanto, para aplicações que exigem maior segurança, é recomendado o uso de algoritmos mais robustos, como SHA-256 ou SHA-3.