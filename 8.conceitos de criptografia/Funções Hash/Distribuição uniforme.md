# Distribuição uniforme

* A distribuição uniforme é uma propriedade importante em funções hash. Ela se refere à maneira como os valores de hash são distribuídos no espaço de saída da função. Em outras palavras, uma função hash com uma distribuição uniforme garante que todos os possíveis valores de hash tenham a mesma probabilidade de serem gerados.

* Uma distribuição uniforme é desejada porque evita a ocorrência de colisões excessivas. Se a distribuição dos valores de hash não for uniforme, pode haver agrupamentos ou regiões no espaço de saída com uma maior concentração de valores de hash, o que aumenta a probabilidade de colisões.

* Para ilustrar, imagine uma função hash que mapeia números inteiros em valores de hash de tamanho fixo. Se a distribuição não for uniforme, é possível que haja uma maior quantidade de valores de hash próximos a zero, por exemplo, resultando em uma concentração não uniforme. Isso tornaria mais provável a ocorrência de colisões para os conjuntos de dados que mapeiam para valores próximos a zero.

* Uma distribuição uniforme garante que, independentemente dos dados de entrada, a função hash espalhe os valores de hash de forma equilibrada em todo o espaço de saída. Isso é especialmente importante em aplicações que dependem de identificadores únicos ou que precisam evitar colisões para garantir a integridade ou a segurança dos dados.