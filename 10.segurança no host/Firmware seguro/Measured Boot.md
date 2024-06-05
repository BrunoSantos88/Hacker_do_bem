# Measured Boot

* É um recurso de segurança que faz parte do processo de inicialização seguro em sistemas compatíveis com o UEFI. Ele é projetado para verificar e medir a integridade de componentes críticos do sistema durante a inicialização, permitindo a detecção de alterações ou comprometimentos no firmware, bootloader, sistema operacional e drivers. Funciona da seguinte maneira:

* Coleta de medidas (Measurements): Durante o processo de inicialização, o UEFI coleta medidas (hashes criptográficos) de componentes críticos do sistema, como firmware, bootloader, sistema operacional e drivers. Essas medidas são armazenadas em uma estrutura de dados conhecida como Log de Medição (PCR - Platform Configuration Register).

* Criação de cadeias de confiança (Certificate Chains): As medidas coletadas pelo UEFI são usadas para criar uma cadeia de confiança de medidas. Cada medida é assinada digitalmente usando uma chave privada confiável. Essas assinaturas garantem a autenticidade e integridade das medidas coletadas.

* Armazenamento seguro das medidas (Secure Storage): As medidas coletadas e suas assinaturas são armazenadas de forma segura no chip de Trusted Platform Module (TPM) do sistema. O TPM protege as medidas contra alterações ou adulterações, fornecendo um ambiente seguro para armazenamento.

* Verificação da cadeia de confiança (Certificate Chain Verification): Durante o processo de inicialização, o UEFI verifica a cadeia de confiança de medidas armazenadas no TPM. Ele verifica a assinatura digital das medidas e suas relações de confiança para garantir que as medidas não tenham sido comprometidas.

* & Comparação de medidas (Comparison): O UEFI compara as medidas coletadas durante o processo de inicialização atual com as medidas armazenadas no TPM. Se houver alguma discrepância ou alteração nas medidas, isso indica uma potencial violação ou comprometimento do sistema.

* Relatórios de integridade (Integrity Reports): Com base nas comparações de medidas, o UEFI gera relatórios de integridade que indicam se a inicialização foi bem-sucedida e se o sistema está em um estado confiável. Esses relatórios podem ser usados para fins de auditoria, detecção de ameaças e solução de problemas de segurança.

