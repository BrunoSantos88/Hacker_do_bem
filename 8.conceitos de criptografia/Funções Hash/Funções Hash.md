# Características das Funções Hash

* Uma função hash é um algoritmo matemático que recebe um conjunto de dados de entrada e produz uma sequência de caracteres ou valores de tamanho fixo, chamados de "hash" ou "valor de hash". Essa função tem a propriedade de ser rápida de calcular e determinística, ou seja, a mesma entrada sempre produzirá o mesmo hash. O objetivo principal de uma função hash é mapear um conjunto de dados de tamanho arbitrário para um valor de hash de tamanho fixo, que representa de forma única e compacta os dados originais.

* As funções hash são amplamente utilizadas em diversas áreas da computação, como criptografia, verificação de integridade de dados, autenticação e indexação de informações. Elas desempenham um papel fundamental na segurança e na eficiência de muitos sistemas. Uma função hash de qualidade deve ser capaz de produzir valores de hash únicos para diferentes conjuntos de dados, evitar colisões e ser resistente a tentativas de reversão.

* No contexto da criptografia, as funções hash desempenham um papel importante na proteção de senhas e na verificação da integridade dos dados transmitidos. Elas também são utilizadas para indexar informações em bancos de dados, acelerando a busca e recuperação de dados.


# Resistência a tentativas de inversão

* A resistência a tentativas de inversão é uma propriedade fundamental de uma função hash. Ela se refere à dificuldade de recuperar ou reverter os dados originais a partir do valor de hash gerado por essa função.

* Em uma função hash segura, mesmo que dois conjuntos de dados diferentes possam produzir o mesmo valor de hash (o que é conhecido como colisão de hash), encontrar a entrada original a partir do valor de hash deve ser computacionalmente difícil e impraticável.

* Essa resistência é essencial para garantir a segurança de diversas aplicações. Por exemplo, em criptografia, quando uma senha é armazenada em um sistema, ela não é armazenada diretamente, mas sim o seu valor de hash. Quando um usuário tenta fazer login, a senha inserida é novamente convertida em um valor de hash e comparada com o valor armazenado anteriormente. Se ambos os valores de hash coincidirem, a senha é considerada correta.

* A resistência a tentativas de inversão garante que mesmo que um atacante obtenha acesso aos valores de hash armazenados, ele terá uma tarefa árdua para determinar a senha original correspondente. O atacante precisaria testar diferentes combinações de entrada e calcular os valores de hash correspondentes até encontrar uma colisão válida. Com uma função hash segura e resistente a tentativas de inversão, isso é extremamente difícil e consome uma quantidade significativa de tempo e recursos computacionais.