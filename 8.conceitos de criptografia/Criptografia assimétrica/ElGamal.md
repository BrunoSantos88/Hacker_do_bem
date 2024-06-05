# ElGamal

* O algoritmo ElGamal é um algoritmo de criptografia assimétrica que combina a criptografia de chave pública e a troca de chaves de Diffie-Hellman. Ele é amplamente utilizado para garantir a confidencialidade das comunicações e proteger a privacidade dos dados. O funcionamento do algoritmo ElGamal é o seguinte:

1. Geração do par de chaves: Assim como em outros algoritmos de criptografia assimétrica, o ElGamal utiliza um par de chaves composto por uma chave pública e uma chave privada. A chave pública é divulgada publicamente, enquanto a chave privada é mantida em segredo.

2. Escolha de parâmetros: Antes de gerar as chaves, são escolhidos os parâmetros do algoritmo, que incluem um número primo grande (p) e um gerador (g) que é um elemento do grupo multiplicativo módulo p. Esses parâmetros são fixos para um conjunto de chaves e devem ser compartilhados entre o emissor e o receptor.

3. Geração da chave privada: A chave privada é gerada selecionando aleatoriamente um número inteiro x, que deve ser mantido em segredo pelo proprietário.

4. Cálculo da chave pública: A chave pública é calculada como y = g^x mod p, onde "^" representa a operação de exponenciação. O valor de y é a chave pública correspondente à chave privada x.

5. Criptografia: Para criptografar uma mensagem, o emissor seleciona aleatoriamente um número inteiro k e calcula dois valores. O primeiro valor é r = g^k mod p, que é o componente de aleatoriedade. O segundo valor é c = (m * y^k) mod p, onde m é o valor numérico da mensagem original. O par (r, c) é a mensagem cifrada que será enviada ao receptor.

6. Descriptografia: O receptor recebe a mensagem cifrada (r, c) e utiliza sua chave privada x para calcular o valor inverso de r, que é r^-x mod p. Em seguida, ele recupera a mensagem original m utilizando a fórmula m = (c * r^-x) mod p.

* O tamanho das chaves seguras no algoritmo ElGamal geralmente é de 2048 bits ou mais, dependendo dos requisitos de segurança. O ElGamal é utilizado em tecnologias como:

-  Criptografia de emails: O ElGamal é usado para criptografar emails, garantindo a confidencialidade das mensagens durante a transmissão.

- Compartilhamento seguro de chaves: O ElGamal é aplicado em protocolos de compartilhamento seguro de chaves, como o protocolo Diffie-Hellman, para estabelecer chaves compartilhadas entre duas partes sem que a chave seja exposta durante a troca.

- Criptografia de arquivos: O ElGamal é empregado em sistemas de criptografia de arquivos para proteger a privacidade e a confidencialidade dos dados armazenados.

* O algoritmo ElGamal oferece uma abordagem segura e eficiente para criptografia de chave pública, fornecendo confidencialidade e privacidade na comunicação.