# Perfect Forward Secrecy (PFS)

* Também conhecido como Sigilo Adiante Perfeito, é um conceito na criptografia que garante a confidencialidade dos dados mesmo que as chaves de criptografia sejam comprometidas no futuro. É um recurso importante para proteger a comunicação online e evitar que um atacante obtenha acesso aos dados criptografados.

* Em uma comunicação segura, normalmente são usadas chaves criptográficas para criptografar e descriptografar os dados. O problema é que se a chave criptográfica for comprometida, todos os dados criptografados com essa chave podem ser decifrados pelo atacante. O PFS resolve esse problema ao gerar chaves efêmeras, também chamadas de chaves de sessão, para cada comunicação individual.

* O PFS garante que mesmo que um atacante comprometa uma chave criptográfica usada em uma comunicação específica, as chaves de sessão anteriores e futuras permanecerão seguras. Isso é possível graças a um acordo de chaves efêmeras feito durante o processo de estabelecimento da comunicação. Essas chaves efêmeras são usadas apenas para essa comunicação específica e não são armazenadas ou reutilizadas posteriormente.

* O uso do PFS adiciona uma camada adicional de segurança, pois mesmo que um atacante consiga comprometer as chaves de criptografia usadas em um determinado momento, não poderá decifrar as comunicações anteriores ou futuras. Isso é especialmente relevante em cenários em que o armazenamento de dados criptografados é prolongado, como em servidores ou logs de comunicação.

* Uma implementação comum do PFS é feita usando protocolos de troca de chaves Diffie-Hellman, como o Diffie-Hellman de curvas elípticas (ECDH). Esses protocolos permitem que as partes envolvidas em uma comunicação estabeleçam uma chave compartilhada sem revelar a chave real durante o processo de negociação.