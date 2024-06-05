# Confusão em Funções Hash

* A confusão em funções hash busca tornar o relacionamento entre a entrada e a saída da função complexo e difícil de ser analisado. Isso é alcançado através da aplicação de operações matemáticas não reversíveis nos dados de entrada. Em outras palavras, uma função hash com uma boa confusão produzirá um valor de hash radicalmente diferente comparado ao valor de entrada.

* A confusão é necessária para garantir que pequenas alterações nos dados de entrada causem grandes efeitos nos valores de hash resultantes. Isso dificulta a previsão do valor de hash ou a inferência de informações sobre os dados originais com base no valor de hash.

* Uma função hash confusa é projetada para espalhar as propriedades dos dados de entrada de forma equilibrada e caótica em todo o processo de cálculo do valor de hash. Isso é alcançado através do uso de operações criptográficas e técnicas de embaralhamento que amplificam as diferenças nas entradas e propagam essas diferenças ao longo de cada etapa do algoritmo. A confusão dificulta a manipulação ou a falsificação dos dados sem alterar drasticamente o valor de hash correspondente.

* Além disso, a confusão ajuda a evitar correlações entre os dados de entrada e os valores de hash, o que seria prejudicial para a segurança. Se houvesse padrões ou dependências facilmente identificáveis entre os dados de entrada e os valores de hash, um adversário poderia explorar essas informações para encontrar vulnerabilidades ou ataques.