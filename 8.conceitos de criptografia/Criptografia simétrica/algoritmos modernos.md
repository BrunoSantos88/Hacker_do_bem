# Principais algoritmos modernos de criptografia simétrica

* Os principais algoritmos modernos de criptografia simétrica são projetados para garantir a confidencialidade e a integridade dos dados por meio do uso de chaves compartilhadas. Esses algoritmos, como o Advanced Encryption Standard (AES), o Twofish e o Serpent, são amplamente utilizados em diversos setores, incluindo comunicações seguras, transações financeiras e proteção de dados sensíveis. Eles se destacam por sua eficiência computacional, resistência a ataques criptográficos e capacidade de suportar diferentes tamanhos de chave, permitindo uma adaptação flexível às necessidades de segurança de cada aplicação.

# DES

* O algoritmo DES (Data Encryption Standard) é um algoritmo de criptografia simétrica de blocos que foi amplamente utilizado durante muitos anos. Ele foi desenvolvido nos anos 1970 pela IBM em conjunto com a NSA (Agência de Segurança Nacional dos Estados Unidos) e posteriormente adotado como padrão pelo governo dos EUA.

* O DES opera em blocos de dados de tamanho fixo de 64 bits e utiliza uma estrutura de rede Feistel, composta por 16 rounds de operações. Cada round consiste em uma série de etapas, incluindo permutação, substituição e combinação linear.

* A etapa de permutação no DES envolve a reorganização dos bits do bloco de dados de entrada. Essa permutação, conhecida como permutação inicial, é realizada antes dos rounds e é seguida pela permutação final após a conclusão dos rounds. Essas permutações têm como objetivo garantir uma distribuição uniforme dos bits e aumentar a confusão dos dados.

* A etapa de substituição é realizada usando S-boxes (tabelas de substituição) não lineares. O DES utiliza um conjunto de oito S-boxes, cada uma mapeando 6 bits de entrada para 4 bits de saída. Essas S-boxes introduzem uma operação não linear e ajudam a confundir os padrões nos dados.

* A combinação linear no DES envolve operações matemáticas, como XOR e operações de deslocamento de bits, para combinar os resultados das etapas anteriores e gerar a saída final do algoritmo.

* Uma característica importante do DES é o uso de uma chave de 56 bits. Durante a criptografia, a chave é expandida para gerar 16 subchaves de 48 bits cada uma, uma para cada round. Essas subchaves são derivadas por meio de um processo de permutação e rotação da chave original.

* Embora o DES tenha sido amplamente utilizado no passado, ele é considerado atualmente inseguro para muitas aplicações devido ao seu tamanho de chave relativamente curto.

# 3DES

* O algoritmo 3DES (Triple Data Encryption Standard), também conhecido como TDEA, é uma extensão do algoritmo DES (Data Encryption Standard) que visa aumentar a segurança usando múltiplas aplicações do DES em sequência.

* O 3DES opera em blocos de dados de tamanho fixo de 64 bits, assim como o DES, e utiliza uma estrutura de rede Feistel. Ele consiste em três etapas principais: criptografia, descriptografia e criptografia novamente (ou seja, EDE - Encrypt, Decrypt, Encrypt).

* Na primeira etapa, o bloco de dados é criptografado usando uma chave de criptografia primária (K1). O algoritmo executa uma série de rounds, semelhante ao DES, que inclui permutações, substituições e combinações lineares. Isso resulta em um bloco criptografado intermediário.

* Na segunda etapa, o bloco criptografado intermediário é descriptografado usando uma chave de descriptografia (K2). O algoritmo realiza o processo inverso da criptografia, desfazendo as etapas de substituição e permutação aplicadas anteriormente. Isso resulta em um bloco descriptografado.

* Finalmente, na terceira etapa, o bloco descriptografado é criptografado novamente usando uma segunda chave de criptografia (K3). Essa etapa adiciona outra camada de segurança ao aplicar novamente as permutações, substituições e combinações lineares.

* O 3DES pode ser usado em diferentes modos de operação, como ECB (Electronic Codebook), CBC (Cipher Block Chaining), entre outros, para processar blocos de dados maiores ou fluxos contínuos de dados.

* O uso do 3DES aumenta a segurança em relação ao DES original, pois adiciona uma camada adicional de criptografia. No entanto, devido ao seu processamento mais complexo e maior quantidade de operações, o 3DES é mais lento que o DES. Nos últimos anos, tem sido gradualmente substituído pelo AES (Advanced Encryption Standard) devido ao seu desempenho superior e maior segurança oferecida pelo AES.

# RC4

* O algoritmo RC4 (Rivest Cipher 4) é um algoritmo de criptografia de fluxo, também conhecido como cifra de fluxo. Ele é amplamente utilizado em diversas aplicações, como protocolos de segurança, redes sem fio e sistemas de segurança de dados.

* O RC4 opera gerando uma sequência pseudoaleatória de bytes, conhecida como keystream, que é combinada com o texto claro por meio de uma operação XOR (OU exclusivo). O algoritmo possui duas partes principais: a etapa de inicialização e a geração do keystream.

* Durante a etapa de inicialização, o RC4 requer uma chave de tamanho variável, geralmente entre 40 e 2048 bits. Essa chave é usada para inicializar um vetor de estado interno do RC4 e permutar os elementos do vetor com base na chave. Isso cria um estado interno inicializado para o algoritmo.

* Após a inicialização, o algoritmo entra na fase de geração do keystream. Nessa fase, o vetor de estado é percorrido e seus elementos são alterados com base em uma combinação complexa de trocas e permutações. Essa operação gera uma sequência pseudoaleatória de bytes que compõem o keystream.

* Em seguida, o keystream é combinado com o texto claro por meio de uma operação XOR bit a bit. Cada byte do texto claro é combinado com o byte correspondente do keystream, resultando no texto cifrado. Essa operação é reversível, ou seja, aplicar a operação XOR novamente ao texto cifrado com o mesmo keystream produzirá o texto claro original.

* É importante mencionar que o RC4 foi amplamente utilizado no passado, mas foram descobertos alguns problemas de segurança relacionados ao seu uso em determinadas situações. Por esse motivo, recomenda-se o uso de algoritmos mais modernos e seguros, como o Advanced Encryption Standard (AES), em vez do RC4, para aplicações criptográficas mais recentes.

# RC6

* O algoritmo RC6 (Rivest Cipher 6) é um algoritmo de criptografia simétrica de blocos, desenvolvido por Ron Rivest em 1997. Ele é projetado para oferecer segurança, eficiência e flexibilidade em termos de tamanho de chave.

* O RC6 opera em blocos de dados de tamanho fixo, normalmente de 128 bits, e é baseado em uma estrutura de rede Feistel, assim como o algoritmo Blowfish. O processo de criptografia/descriptografia envolve várias etapas, incluindo a expansão de chaves, a permutação, a substituição e a combinação linear.

* A expansão de chaves no RC6 envolve a geração de uma matriz de subchaves a partir da chave original. Essas subchaves são derivadas por meio de uma série de transformações, como rotações de bits e operações de adição modular.

* A etapa de permutação envolve a reorganização dos bits do bloco de dados de entrada. O RC6 usa permutações lineares para garantir uma difusão adequada dos dados e fornecer uma operação não linear.

* A substituição é realizada usando S-boxes (tabelas de substituição) não lineares. Essas S-boxes mapeiam os valores de entrada para os valores de saída, introduzindo não linearidade e dificultando a análise estatística.

* A combinação linear no RC6 envolve operações matemáticas, como XOR e operações de multiplicação em um corpo finito. Essas operações são aplicadas para combinar os resultados das etapas anteriores e gerar a saída final do algoritmo.

* O RC6 é considerado um algoritmo seguro e eficiente, projetado para resistir a diversos ataques criptográficos conhecidos. Ele suporta tamanhos de chave de 128, 192 e 256 bits, o que proporciona flexibilidade em termos de níveis de segurança e requisitos de aplicação.


# BlowFish

* O algoritmo Blowfish é um algoritmo de criptografia simétrica de blocos projetado por Bruce Schneier em 1993. É um algoritmo de chave variável, o que significa que pode trabalhar com chaves de tamanho variável, de 32 bits a 448 bits.

* O Blowfish opera em blocos de dados de tamanho fixo (normalmente 64 bits) e utiliza uma estrutura de rede Feistel, que consiste em repetir uma série de transformações em cada bloco de dados. O algoritmo é dividido em duas partes principais: a etapa de inicialização e a etapa de criptografia/descriptografia.

* Durante a etapa de inicialização, a chave é expandida em uma série de subchaves usando uma função chamada de Subkey Generation. Essa função divide a chave em várias partes e aplica uma série de iterações complexas para gerar as subchaves que serão usadas nas transformações subsequentes.

* Após a inicialização, o algoritmo entra na fase de criptografia/descriptografia. O bloco de dados de entrada é dividido em duas metades, e cada metade passa por uma série de iterações chamadas de Rounds. Durante cada Round, ocorre uma mistura das metades do bloco usando funções não lineares, combinações com as subchaves e operações XOR.

* O número de Rounds realizados depende do tamanho da chave. Para chaves de 32 a 64 bits, são realizados 16 Rounds; para chaves de 80 a 128 bits, são realizados 18 Rounds; e para chaves de 136 a 448 bits, são realizados 20 Rounds.

* Uma característica importante do Blowfish é que ele é um algoritmo rápido e eficiente em termos de desempenho, tornando-o adequado para uma ampla gama de aplicações. No entanto, devido ao avanço criptográfico, como o aumento do poder computacional, o Blowfish pode ser considerado relativamente menos seguro atualmente.

# TwoFish

* O algoritmo Twofish é um algoritmo de criptografia simétrica de blocos que foi finalista no concurso AES (Advanced Encryption Standard) em 2000. Ele foi projetado por Bruce Schneier, John Kelsey, Doug Whiting, David Wagner, Chris Hall e Niels Ferguson. O Twofish é considerado um algoritmo altamente seguro e eficiente.

* O Twofish opera em blocos de dados de tamanho fixo, normalmente de 128 bits, e usa uma estrutura de rede Feistel, semelhante ao algoritmo Blowfish. O processo de criptografia/descriptografia envolve quatro partes principais: expansão de chaves, permutação, substituição e combinação linear.

* A expansão de chaves é realizada usando o algoritmo de chave estendida de Feistel, que transforma a chave original em várias subchaves. Essas subchaves são usadas em cada rodada do algoritmo para adicionar complexidade e segurança.

* A permutação é uma etapa importante no Twofish e envolve reorganizar os bits do bloco de dados de entrada. A permutação é realizada usando permutações lineares para garantir uma difusão adequada dos dados e fornecer uma operação não linear.

* A substituição é feita usando as chamadas "caixas-S" (S-boxes). As S-boxes são tabelas de substituição não lineares que mapeiam valores de entrada para valores de saída. O Twofish usa várias S-boxes para introduzir não linearidade e confundir os padrões de dados durante a criptografia.

* A combinação linear envolve operações matemáticas como XOR e multiplicação em um corpo finito para combinar os resultados das etapas anteriores e produzir a saída final.

* O Twofish é altamente considerado por sua segurança e resistência a ataques criptográficos conhecidos. Ele suporta tamanhos de chave de 128, 192 e 256 bits, o que o torna uma escolha flexível para diferentes níveis de segurança.

# Serpent

* O algoritmo Serpent é um algoritmo de criptografia simétrica de blocos, projetado por Ross Anderson, Eli Biham e Lars Knudsen. Foi um dos finalistas no concurso AES (Advanced Encryption Standard) em 2000. O Serpent é conhecido por sua segurança e robustez, sendo amplamente utilizado em várias aplicações criptográficas.

* O Serpent opera em blocos de dados de tamanho fixo, geralmente de 128 bits, e também utiliza uma estrutura de rede Feistel, semelhante ao Blowfish e ao Twofish. O processo de criptografia/descriptografia envolve várias etapas, incluindo expansão de chaves, substituição, permutação e combinação linear.

* A expansão de chaves no Serpent envolve a geração de um conjunto de subchaves a partir da chave original. Essas subchaves são derivadas por meio de uma série de transformações e iterações complexas, garantindo uma maior segurança e confidencialidade dos dados.

* A etapa de substituição é realizada usando S-boxes (tabelas de substituição) não lineares. O Serpent utiliza um conjunto de S-boxes altamente não lineares e criptograficamente seguras para confundir os padrões dos dados e dificultar a análise estatística.

* A permutação no Serpent é feita usando uma combinação de permutações lineares e não lineares. Essas permutações reorganizam os bits do bloco de dados para garantir uma difusão adequada e proporcionar uma operação não linear.

* A combinação linear envolve operações matemáticas, como XOR e operações de multiplicação em um corpo finito. Essas operações são aplicadas para combinar os resultados das etapas anteriores e gerar a saída final do algoritmo.

* O Serpent é conhecido por sua segurança e resistência a ataques criptográficos conhecidos. Ele suporta tamanhos de chave de 128, 192 e 256 bits, proporcionando um alto nível de segurança para diferentes aplicações.

# AES

* O algoritmo AES (Advanced Encryption Standard), também conhecido como Rijndael, é um dos algoritmos de criptografia simétrica mais amplamente utilizados e foi escolhido como o novo padrão de criptografia pelo NIST (Instituto Nacional de Padrões e Tecnologia dos Estados Unidos) em 2001.

* O AES opera em blocos de dados de tamanho fixo de 128 bits e utiliza uma estrutura de rede Feistel, com algumas diferenças em relação aos algoritmos anteriores, como o DES. O processo de criptografia/descriptografia envolve quatro etapas principais: SubBytes, ShiftRows, MixColumns e AddRoundKey.

* A etapa SubBytes envolve a substituição dos bytes do bloco de dados de entrada por meio de uma S-box não linear. Essa S-box mapeia cada byte de entrada para um byte de saída usando uma tabela de substituição.

* A etapa ShiftRows envolve o deslocamento dos bytes nas linhas do bloco de dados. Cada linha é deslocada para a esquerda, onde o primeiro byte permanece no lugar, o segundo é deslocado uma posição, o terceiro duas posições e o quarto três posições.

* A etapa MixColumns envolve a combinação linear dos bytes em cada coluna do bloco de dados. Isso é feito multiplicando cada byte por uma matriz específica e reduzindo o resultado a um polinômio de grau menor.

* A etapa AddRoundKey envolve a operação XOR entre cada byte do bloco de dados e uma chave de round correspondente. Essa operação combina os dados do bloco com a subchave do round atual.

* Essas etapas são repetidas várias vezes, dependendo do tamanho da chave utilizada (10 rounds para uma chave de 128 bits, 12 rounds para uma chave de 192 bits e 14 rounds para uma chave de 256 bits). Cada round consiste nas quatro etapas mencionadas acima, exceto a etapa MixColumns, que é omitida no último round.

* O AES é conhecido por sua segurança e resistência a ataques criptográficos conhecidos. Ele suporta tamanhos de chave de 128, 192 e 256 bits, proporcionando diferentes níveis de segurança para várias aplicações. Sua eficiência e ampla adoção em uma ampla gama de setores o tornam um dos algoritmos criptográficos mais confiáveis e amplamente utilizados atualmente.