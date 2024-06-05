# Self-Encrypting Drives (SED)

* São unidades de armazenamento, como discos rígidos (HDDs) ou unidades de estado sólido (SSDs), que possuem recursos de criptografia integrados. Ao contrário do Full Disk Encryption (FDE), em que a criptografia é realizada por meio de software, o SED executa a criptografia diretamente no hardware da unidade, proporcionando uma camada adicional de segurança. Funciona da seguinte maneira:

* Chave de criptografia: Cada SED possui uma chave de criptografia interna chamada de Key Encryption Key (KEK). Essa chave é gerada pela unidade no momento da fabricação e é usada para criptografar e descriptografar os dados armazenados na unidade.

* Autenticação: Para acessar os dados armazenados em um SED, é necessário autenticar-se usando uma senha, chave de acesso ou outro método de autenticação suportado. Essa autenticação é feita por meio de uma interface de usuário fornecida pelo SED ou por software de gerenciamento de criptografia.

* Criptografia em tempo real: Após a autenticação bem-sucedida, o SED executa a criptografia e descriptografia em tempo real conforme os dados são gravados e lidos na unidade. A criptografia ocorre automaticamente no hardware do SED, sem a necessidade de intervenção adicional do sistema operacional ou software.

* Chave de dados (Data Encryption Key): Para cada bloco de dados gravado na unidade, o SED gera uma chave de criptografia exclusiva conhecida como Data Encryption Key (DEK). Essa chave de dados é criptografada usando a KEK e armazenada juntamente com os dados na unidade.

* Rápido apagamento: Os SEDs geralmente têm a capacidade de realizar um rápido apagamento de dados, tornando-os inacessíveis. Isso pode ser feito redefinindo a KEK ou removendo a chave de criptografia do disco, o que torna impossível descriptografar os dados armazenados.

* Gerenciamento de chaves: Os SEDs podem oferecer recursos avançados de gerenciamento de chaves, permitindo que as chaves de criptografia sejam alteradas, adicionadas ou removidas conforme necessário. Além disso, eles podem suportar integração com infraestruturas de gerenciamento de chaves externas, como um servidor de gerenciamento de chaves (KMS).