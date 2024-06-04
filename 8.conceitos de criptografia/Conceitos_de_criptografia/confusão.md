# Confusão

* Em criptografia, o conceito de confusão refere-se a uma propriedade dos algoritmos criptográficos que visa tornar a relação entre a chave de criptografia e o texto cifrado tão complexa quanto possível. A confusão é alcançada por meio do embaralhamento e da dispersão das características dos dados de entrada, dificultando a identificação de padrões ou informações úteis pelos adversários.

* Ao aplicar técnicas de confusão, um algoritmo criptográfico busca garantir que pequenas mudanças nos dados de entrada ou na chave resultem em grandes alterações nos dados de saída, tornando a relação entre eles imprevisível. Isso torna mais difícil para um adversário analisar o texto cifrado e deduzir informações sobre a chave ou os dados originais.

* A confusão contribui para a segurança global do sistema criptográfico, tornando a análise criptográfica mais desafiadora e exigindo um grande esforço computacional para quebrar a criptografia. É uma das propriedades fundamentais para garantir a resistência da criptografia a ataques de força bruta, análise estatística e outras técnicas de criptoanálise.

* Um exemplo prático de confusão na criptografia é o uso de tabelas de substituição, como a Tabela de Substituição S-Box no algoritmo de criptografia simétrica AES (Advanced Encryption Standard). A S-Box é uma tabela de substituição não linear que é aplicada aos dados durante o processo de criptografia.

* Nesse exemplo, cada byte do texto de entrada é substituído por outro byte específico da tabela S-Box, de acordo com uma determinada lógica. Essa substituição confunde a relação entre o byte de entrada e o byte de saída, tornando a análise do texto cifrado mais difícil.

* Por exemplo, se o byte de entrada for "10100110", a S-Box pode substituí-lo pelo byte "01101000". Essa substituição não é óbvia e não segue uma relação linear direta. Portanto, mesmo que um adversário conheça o byte de entrada, é difícil deduzir o byte de saída ou a tabela S-Box sem o conhecimento da chave de criptografia.