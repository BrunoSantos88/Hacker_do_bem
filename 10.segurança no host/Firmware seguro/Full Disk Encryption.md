# Full Disk Encryption (FDE)

* É um método de criptografia que protege todos os dados armazenados em um disco ou unidade de armazenamento, como um disco rígido (HDD) ou uma unidade de estado sólido (SSD). O FDE criptografa todas as informações no disco, incluindo o sistema operacional, arquivos do usuário e metadados, impedindo o acesso não autorizado aos dados em caso de perda, roubo ou acesso físico ao dispositivo. O seu funcionamento consiste nas seguintes etapas:

   1. Processo de criptografia inicial: Durante a configuração do FDE, um algoritmo de criptografia forte é usado para criptografar todo o conteúdo do disco. Isso pode ser feito por meio de um software de criptografia, como o BitLocker da Microsoft ou o FileVault da Apple, ou por meio de soluções de hardware.

   2. Chave de criptografia: Durante o processo de criptografia inicial, é gerada uma chave de criptografia que é usada para criptografar e descriptografar os dados no disco. Essa chave é conhecida como chave de criptografia de disco (Disk Encryption Key) ou chave de volume (Volume Key). Geralmente, a chave é protegida por uma senha ou outra forma de autenticação.

   3. Desbloqueio do disco: Quando o sistema é inicializado, o usuário deve fornecer a senha ou outra forma de autenticação para desbloquear o disco. A senha é usada para descriptografar a chave de criptografia do disco e permitir o acesso aos dados.

   4. Criptografia em tempo real: Após o desbloqueio do disco, todos os dados lidos e gravados no disco são automaticamente criptografados e descriptografados em tempo real. Isso garante que todos os dados armazenados no disco permaneçam protegidos, mesmo quando o sistema está em uso.

    5. Proteção contra acesso não autorizado: O FDE protege contra acesso não autorizado aos dados, mesmo em situações em que o disco é removido do sistema ou o dispositivo é roubado. Sem a chave de criptografia correta, os dados permanecem inacessíveis.

    6. Gerenciamento de chaves: O FDE também envolve o gerenciamento seguro das chaves de criptografia. As chaves são armazenadas em locais seguros, como o chip Trusted Platform Module (TPM), um dispositivo USB separado ou outros métodos de armazenamento criptograficamente protegidos.