# Boot Attestation

* É um mecanismo de segurança que complementa o Measured Boot em sistemas compatíveis com o Unified Extensible Firmware Interface (UEFI). Ele permite que o sistema forneça evidências de integridade durante o processo de inicialização para uma entidade externa confiável, como um servidor de autenticação ou um sistema de monitoramento de segurança. Funciona da seguinte maneira:

* Coleta de medidas (Measurements): Mesmo passo apresentado no Secure Boot.

* Criação de um carimbo digital (Digital Attestation): O UEFI cria um carimbo digital (digital attestation) contendo as medidas coletadas durante o processo de inicialização. O carimbo digital é assinado digitalmente usando a chave privada confiável do TPM, garantindo a autenticidade das medidas.

* Solicitação de Attestation (Attestation Request): Uma entidade externa confiável, como um servidor de autenticação, pode solicitar um relatório de attestation (relatório de comprovação) do sistema. Isso pode ser feito através de um protocolo de comunicação seguro.

* Geração do relatório de Attestation (Attestation Report): O UEFI gera um relatório de attestation que inclui o carimbo digital assinado, as medidas coletadas e outras informações relevantes sobre o estado do sistema durante a inicialização. O relatório de attestation é enviado de volta à entidade externa.

* Verificação do relatório de Attestation (Attestation Report Verification): A entidade externa recebe o relatório de attestation e verifica sua autenticidade e integridade. Ela verifica a assinatura digital do carimbo digital usando a chave pública correspondente à chave privada usada na assinatura.

* Avaliação da integridade do sistema (System Integrity Assessment): Com base no relatório de attestation, a entidade externa pode avaliar a integridade do sistema e determinar se ele está em um estado confiável. Isso pode ser usado para fins de auditoria, verificação de conformidade ou para tomar decisões de segurança, como permitir ou negar acesso a recursos.