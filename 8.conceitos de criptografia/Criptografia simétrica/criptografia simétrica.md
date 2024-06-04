# Componentes e funcionamento da criptografia simétrica

* A criptografia simétrica envolve três componentes principais: o texto claro (plaintext), a chave simétrica (symmetric key) e o texto cifrado (ciphertext).

1. Texto Claro (Plaintext): O texto claro refere-se aos dados originais que se deseja proteger. Pode ser qualquer forma de informação, como mensagens de texto, arquivos, documentos, imagens, entre outros. Antes de serem criptografados, esses dados estão em formato legível e compreensível.

2. Chave Simétrica (Symmetric Key): A chave simétrica é um valor secreto, compartilhado entre o remetente e o destinatário da mensagem. É com base nessa chave que ocorre a transformação dos dados originais em formato ilegível. A chave simétrica é utilizada tanto para criptografar (processo de transformação do texto claro em texto cifrado) quanto para descriptografar (processo de reconverter o texto cifrado em texto claro) os dados. É crucial que a chave simétrica seja mantida em segredo e seja conhecida apenas pelas partes autorizadas.

3. Cifra (Cipher): algoritmo matemático que realiza a transformação dos dados em formato legível (texto claro) para uma forma ilegível (texto cifrado) e vice-versa. A cifra utiliza a chave de criptografia como parâmetro para determinar como os dados serão embaralhados ou substituídos durante o processo de criptografia. É importante mencionar que diferentes cifras podem ser utilizadas na criptografia simétrica, como o algoritmo DES, AES, RC4, entre outros.

4. Texto Cifrado (Ciphertext): O texto cifrado é o resultado da aplicação do algoritmo de criptografia à chave simétrica e ao texto claro. Após a criptografia, os dados originais são transformados em uma forma ilegível e aparentemente aleatória. O texto cifrado é o que é transmitido ou armazenado de forma segura, uma vez que não pode ser compreendido por terceiros que não possuam a chave correta para desfazer a criptografia.