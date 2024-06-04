# Cifra de fluxo

* Uma cifra de fluxo é um tipo de algoritmo de criptografia simétrica que opera em tempo real, transformando dados em um fluxo contínuo de caracteres cifrados. Ao contrário das cifras de bloco, que operam em blocos fixos de dados, as cifras de fluxo criptografam os dados em um fluxo contínuo de bits ou bytes.

* Nas cifras de fluxo, a criptografia é realizada combinando os bits do texto claro com uma sequência de bits gerada pela chave simétrica. Essa sequência de bits é chamada de "fluxo de chave" (keystream) e é gerada pelo algoritmo de cifra de fluxo a partir da chave simétrica.

* O fluxo de chave é combinado com os bits do texto claro por meio de uma operação lógica, como a operação XOR (OU exclusivo). Cada bit do texto claro é combinado com o bit correspondente do fluxo de chave, gerando o bit cifrado correspondente. Esse processo é repetido para cada bit ou byte dos dados a serem criptografados.

* A principal vantagem das cifras de fluxo é que elas são geralmente rápidas e eficientes em termos de recursos computacionais, o que as torna adequadas para aplicação em comunicações em tempo real, como transmissões de dados contínuas.

* No entanto, é importante garantir que o fluxo de chave seja gerado de forma segura e aleatória, pois qualquer falha na geração ou no uso do fluxo de chave pode comprometer a segurança dos dados criptografados.