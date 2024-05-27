# Structured Query Language Injection Attacks (SQL Injection)

* SQL Injection (Injeção de SQL) é uma das vulnerabilidades mais comuns e graves em aplicativos web que utilizam bancos de dados. Esse tipo de ataque ocorre quando um invasor insere instruções SQL maliciosas em campos de entrada, como formulários da web, para manipular consultas SQL executadas por um aplicativo. O objetivo é explorar a falta de validação ou sanitização de dados, permitindo ao atacante acessar, modificar ou excluir dados do banco de dados, além de executar operações não autorizadas.

* Como os ataques de SQL Injection ocorrem


- Identificação de Vulnerabilidades: O atacante procura campos de entrada, como caixas de pesquisa ou formulários de login, onde dados inseridos pelo usuário são diretamente incorporados em consultas SQL.

- Inserção de Instruções Maliciosas: O invasor insere instruções SQL maliciosas nos campos de entrada. Por exemplo, em vez de inserir um nome de usuário válido, o atacante pode inserir ' OR 1=1 – em um campo de login.

- Execução da Instrução Maliciosa: O aplicativo web, sem uma validação adequada, incorpora a instrução SQL maliciosa na consulta e a executa no banco de dados. No exemplo acima, a consulta se tornaria SELECT * FROM usuarios WHERE nome_usuario = '' OR 1=1 --'.

- Exploração: Como o 1=1 sempre será verdadeiro, a consulta retornará todos os registros da tabela de usuários, permitindo ao invasor acessar informações de outros usuários ou até mesmo contornar a autenticação.


# Exemplos de ataques de SQL Injection:

exemplos:

```
Um atacante insere ' OR 'a'='a em um campo de login, enganando o aplicativo a pensar que um usuário válido está tentando fazer login, concedendo acesso não autorizado.
```


# Prevenção e Mitigação de SQL Injection

- Validação de Entradas: Valide e filtre rigorosamente todas as entradas de dados fornecidas pelos usuários. Certifique-se de que os dados sejam do tipo esperado e não contenham caracteres especiais não autorizados.

- Consultas Parametrizadas: Consultas parametrizadas são uma das formas mais eficazes de prevenir SQL Injection. Use consultas parametrizadas ou consultas preparadas, dependendo da linguagem de programação e do sistema de gerenciamento de banco de dados (DBMS) que você está utilizando. Elas separam os valores dos parâmetros SQL, garantindo que os dados do usuário não sejam tratados como parte do comando SQL e assim, impede que os invasores injetem código malicioso nas consultas. 

- A técnica correta é utilizar marcadores de posição (placeholders) na consulta SQL e inserir diretamente os valores de entrada no lugar dos placeholders. Essa abordagem separa os dados dos comandos SQL, prevenindo o SQL Injection.

- Evite Construção de Consultas Manual: Evite construir consultas SQL manualmente concatenando strings. Isso torna seu aplicativo vulnerável a injeções de SQL.

- Princípio do Menor Privilégio: Configure as permissões do banco de dados para que o aplicativo tenha apenas as permissões necessárias para realizar suas operações. Evite permissões de gravação quando somente leitura é necessário.

- Monitoramento e Registros de Auditoria: Implemente monitoramento e registros de auditoria para detectar atividades incomuns ou tentativas de injeção de SQL em tempo real.