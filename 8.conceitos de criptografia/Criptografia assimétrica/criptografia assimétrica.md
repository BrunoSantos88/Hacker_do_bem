# Funcionamento da criptografia assimétrica Componentes

* A criptografia assimétrica, também conhecida como criptografia de chave pública, utiliza um par de chaves distintas para criptografar e descriptografar dados. Esse par de chaves consiste em uma chave pública e uma chave privada. Vamos explorar como funciona o processo de criptografia assimétrica:

* Geração do par de chaves: O primeiro passo é gerar o par de chaves, composto pela chave pública e pela chave privada. Essas chaves são matematicamente relacionadas, mas computacionalmente inviáveis de serem derivadas uma da outra. A chave pública é divulgada publicamente, enquanto a chave privada é mantida em sigilo pelo proprietário. Cada parte da comunicação (emissor e receptor) pode ter um par de chaves pública e privada.

* Criptografia: Para enviar uma mensagem segura para um destinatário, o remetente utiliza uma das chaves (pública ou privada) para criptografar a mensagem. Isso é feito aplicando uma função matemática específica à mensagem original, juntamente com a chave usada. O resultado é a mensagem criptografada, que só pode ser descriptografada com a outra chave (privada ou pública) correspondente.

* Transmissão da mensagem criptografada: A mensagem criptografada é transmitida e somente o destinatário que possui a chave correspondente poderá descriptografá-la.

* Descriptografia: Ao receber a mensagem criptografada, o destinatário utiliza a chave correspondente descriptografar a mensagem, o que resulta na recuperação da mensagem original.

