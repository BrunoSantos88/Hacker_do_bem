 # Secure Boot

* O Secure Boot é um recurso de segurança implementado em sistemas compatíveis com o UEFI para proteger contra malware e ataques de inicialização comprometida. Ele garante que apenas software confiável e autorizado seja executado durante o processo de inicialização do sistema. O Secure Boot funciona da seguinte maneira:

* Verificação da integridade do firmware: O Secure Boot começa verificando a integridade do firmware do sistema, incluindo o UEFI. Ele verifica se o firmware não foi corrompido ou modificado por algum malware ou ataque.

* Verificação da integridade do carregador de inicialização: Após a verificação do firmware, o Secure Boot verifica a integridade do carregador de inicialização (bootloader) do sistema. Isso pode ser um carregador de inicialização padrão, como o GRUB, ou um carregador de inicialização específico do fabricante. A assinatura digital do carregador de inicialização é verificada para garantir que ele não tenha sido adulterado.

* Verificação da assinatura digital do kernel e dos drivers: Após a verificação do carregador de inicialização, o Secure Boot verifica a assinatura digital do kernel do sistema operacional e dos drivers críticos. Essa verificação garante que apenas software assinado digitalmente por uma chave confiável seja executado.

* Chave de assinatura confiável: O Secure Boot depende de uma lista de chaves de assinatura confiáveis, conhecidas como Chave de Assinatura de Conteúdo (Key Exchange Key, KEK), que são usadas para verificar as assinaturas digitais. Essas chaves são pré-instaladas no firmware do sistema e são usadas para garantir que apenas software assinado por chaves confiáveis seja executado.

* Modo de usuário e configuração: O Secure Boot permite que os usuários configurem suas próprias políticas de segurança. Isso inclui a capacidade de adicionar chaves de assinatura confiáveis adicionais ou desabilitar o Secure Boot, se necessário. Essas configurações são geralmente protegidas por senhas para evitar alterações não autorizadas.