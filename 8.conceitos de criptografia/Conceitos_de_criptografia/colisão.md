# Colisão

* O conceito de "colisão" em criptografia está relacionado às funções hash, que são algoritmos que transformam um conjunto de dados em um valor de tamanho fixo. Uma colisão ocorre quando dois conjuntos de dados diferentes produzem o mesmo valor de hash. Em outras palavras, é quando duas entradas distintas geram o mesmo resumo criptográfico.

* Para entender melhor, vamos considerar um exemplo simplificado. Suponha que temos uma função hash que recebe como entrada uma sequência de números e produz um resumo de tamanho fixo. Se tivermos duas sequências diferentes, por exemplo, [1, 2, 3] e [4, 5, 6], e ambas produzirem o mesmo resumo de hash, temos uma colisão.

* A colisão é indesejável na criptografia, pois compromete a integridade dos dados. Se um invasor puder encontrar duas entradas diferentes que geram o mesmo valor de hash, ele pode substituir os dados originais por dados maliciosos sem que seja detectado pelo resumo criptográfico. Isso pode levar a sérias vulnerabilidades em sistemas que dependem da integridade dos dados.

* Os algoritmos de função hash modernos, como o SHA-256 (Secure Hash Algorithm 256 bits), foram projetados para ter uma probabilidade muito baixa de colisões, tornando-as extremamente improváveis. No entanto, é importante ressaltar que não há garantia matemática de que uma colisão nunca ocorrerá. A segurança das funções hash é baseada na dificuldade prática de encontrar uma colisão, levando em consideração o tamanho do resumo e a qualidade do algoritmo utilizado.