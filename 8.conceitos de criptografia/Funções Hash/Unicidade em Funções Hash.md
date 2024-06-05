# Unicidade em Funções Hash

* Unicidade é uma propriedade fundamental das funções hash, que garante que cada conjunto de dados de entrada produza um valor de hash único. Em outras palavras, dois conjuntos de dados diferentes não devem gerar o mesmo valor de hash.

* A unicidade é importante porque permite identificar e distinguir de forma única conjuntos de dados específicos por meio de seus valores de hash correspondentes. Isso é essencial em várias aplicações, como armazenamento e recuperação de dados, indexação, detecção de duplicatas, verificação de integridade e muito mais.

* Quando uma função hash é projetada com unicidade, ela minimiza as chances de colisões, onde dois conjuntos de dados distintos geram o mesmo valor de hash. No entanto, é importante ressaltar que, em teoria, a existência de colisões é inevitável devido ao espaço limitado de valores de hash e ao potencial infinito de conjuntos de dados possíveis. No entanto, funções hash de alta qualidade têm uma probabilidade extremamente baixa de gerar colisões em casos práticos.

* Para avaliar a unicidade de uma função hash, é comum utilizar métricas como o tamanho do espaço de valores de hash e a distribuição dos valores de hash. Quanto maior o espaço de valores de hash, menor a probabilidade de colisões. Além disso, uma função hash com uma distribuição uniforme dos valores de hash ao longo do espaço de saída também reduz a probabilidade de colisões.

* No contexto da segurança, a unicidade desempenha um papel crítico. Por exemplo, em criptografia de senhas, é essencial que diferentes senhas sejam convertidas em valores de hash diferentes. Dessa forma, mesmo que um invasor tenha acesso aos valores de hash armazenados, ele terá dificuldade em determinar as senhas originais correspondentes.