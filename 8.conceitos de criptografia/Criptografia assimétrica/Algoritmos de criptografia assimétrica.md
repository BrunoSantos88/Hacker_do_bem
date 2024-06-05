# Algoritmos de criptografia assimétrica

* RSA (Rivest, Shamir, Adleman)

* O algoritmo RSA, desenvolvido por Ron Rivest, Adi Shamir e Leonard Adleman em 1977, é um dos algoritmos de criptografia assimétrica mais amplamente utilizados. Ele se baseia na dificuldade de fatorar grandes números inteiros para fornecer segurança na troca de informações. O funcionamento do algoritmo RSA é o seguinte:

1. Geração do par de chaves: Primeiro, é gerado um par de chaves composto por uma chave pública e uma chave privada. A chave pública é compartilhada com todos, enquanto a chave privada é mantida em sigilo pelo proprietário.

2. Escolha de primos: Em seguida, são escolhidos dois números primos grandes distintos, p e q. Esses números são mantidos em segredo.

3. Cálculo do módulo n: O módulo n é calculado como o produto dos primos p e q, ou seja, n = p * q. Esse valor é usado como o módulo nas operações criptográficas.

4. Cálculo da função totiente de Euler: A função totiente de Euler (φ) de n é calculada como φ(n) = (p - 1) * (q - 1). Essa função é importante para determinar a chave privada.

5. Escolha da chave pública: Um número inteiro e relativamente primo a φ(n) é escolhido como a chave pública, geralmente chamado de "e". A chave pública consiste no par (n, e) e é compartilhada publicamente.

6. Cálculo da chave privada: A chave privada, geralmente chamada de "d", é calculada como o inverso multiplicativo de "e" módulo φ(n). Essa chave privada é mantida em segredo.

7. Criptografia: Para criptografar uma mensagem, o remetente a converte em um número inteiro representativo do espaço de mensagens. Em seguida, ele eleva esse número à potência "e" módulo n para obter o texto cifrado.

8. Descriptografia: O destinatário utiliza a chave privada "d" para descriptografar o texto cifrado, elevando-o à potência "d" módulo n. O resultado é a mensagem original.

* O tamanho das chaves seguras no algoritmo RSA depende da aplicação e do período de segurança desejado. Normalmente, são utilizadas chaves com tamanho de 2048 bits ou mais, consideradas seguras para a maioria dos cenários. O algoritmo RSA é amplamente utilizado em diversas tecnologias, como:


* Criptografia de dados: O RSA é usado para proteger a confidencialidade de dados sensíveis em comunicações seguras, como trocas de chaves em TLS/SSL, criptografia de emails e assinaturas digitais.

* Criptografia de chave pública: O RSA é usado para proteger chaves de criptografia simétrica em sistemas de gerenciamento de chaves, como PGP (Pretty Good Privacy) e SSH (Secure Shell).

* Autenticação: O RSA é usado para autenticar entidades em sistemas de autenticação de dois fatores, como tokens RSA SecurID.

* O algoritmo RSA fornece uma base sólida para a criptografia assimétrica e continua sendo uma ferramenta essencial na segurança da informação