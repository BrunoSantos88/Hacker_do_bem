 # Arquitetura de Certificados Digitais

* O arquivo que contém um certificado digital segue uma estrutura específica definida pela arquitetura X.509, que é um padrão amplamente adotado para certificados digitais. A arquitetura X.509 define a estrutura de um certificado digital e os formatos em que pode ser armazenado. A arquitetura básica do arquivo de certificado digital é:

1. Versão: O campo "Versão" indica a versão do padrão X.509 utilizada para o certificado. Os valores mais comuns são 1, 2 e 3, correspondendo às versões X.509v1, X.509v2 e X.509v3, respectivamente.

2. Número de Série: O campo "Número de Série" identifica exclusivamente o certificado dentro da Autoridade Certificadora (CA) que o emitiu. Cada certificado possui um número de série único.

3. Algoritmo de Assinatura do Emitente: Este campo indica o algoritmo de criptografia usado pela CA para assinar o certificado. Pode ser um algoritmo como RSA, DSA ou ECDSA.

4. Nome do Emitente: O campo "Nome do Emitente" identifica a CA que emitiu o certificado. Pode ser o nome da organização ou da entidade responsável pela emissão.

5. Período de Validade: Os campos "Validade a partir de" e "Validade até" indicam o período de tempo durante o qual o certificado é considerado válido. Após a data de validade, o certificado não deve ser confiado.

6. Nome do Sujeito: O campo "Nome do Sujeito" identifica o titular do certificado, ou seja, a entidade à qual o certificado foi emitido. Pode conter informações como o nome completo, nome da organização e outros atributos identificadores.

7. Chave Pública: O campo "Chave Pública" contém a chave pública correspondente à chave privada do titular do certificado. A chave pública é usada para operações criptográficas, como criptografia, verificação de assinaturas digitais e estabelecimento de chaves de sessão seguras.

8. Identificador de Algoritmo de Assinatura: Este campo identifica o algoritmo de criptografia utilizado para assinar o certificado digital. É o algoritmo que verifica a autenticidade e a integridade do certificado.

9. Extensões: O campo "Extensões" é opcional e pode conter informações adicionais sobre o certificado, como restrições de uso, política de certificação e informações de autoridade de certificação intermediária.

10. Assinatura Digital: O campo "Assinatura Digital" contém a assinatura digital do certificado, que é gerada pela CA usando sua chave privada. A assinatura garante a autenticidade e a integridade do certificado.

* Os diferentes formatos de arquivo de certificado digital, como PEM, DER e PKCS#12, seguem essa estrutura para armazenar os dados do certificado de maneira adequada ao formato específico.

# Atributos do Nome do Assunto (Subject Name Attributes)

* Os Atributos do Nome do Assunto (Subject Name Attributes) em PKI (Infraestrutura de Chaves Públicas) são informações contidas nos certificados digitais que identificam o sujeito ou entidade para a qual o certificado foi emitido. Esses atributos fornecem detalhes sobre a identidade do titular do certificado, como nome, organização, localidade, país, endereço de e-mail, entre outros.

* Os Atributos do Nome do Assunto são usados para verificar a identidade do titular do certificado durante o processo de autenticação. Eles desempenham um papel fundamental na estabelecimento de confiança na comunicação segura por meio de chaves públicas. Por exemplo, em um certificado SSL/TLS para um site, os Atributos do Nome do Assunto podem incluir o nome de domínio do site, informações sobre a organização proprietária do site e outros detalhes que ajudam a verificar a autenticidade e a legitimidade do certificado.

# Nome comum – Common Name (CN)

* Refere-se ao nome comum do sujeito ou entidade para a qual o certificado foi emitido. O CN é usado para identificar de forma exclusiva o titular do certificado e é um dos principais componentes usados na verificação da identidade durante o processo de autenticação.

* O CN geralmente contém o nome legal ou o nome de domínio totalmente qualificado (FQDN) do titular do certificado. No caso de um certificado de servidor web, o CN normalmente é o domínio do site para o qual o certificado foi emitido. Por exemplo, em um certificado para o site "www.exemplo.com", o CN seria "www.exemplo.com".

* O CN desempenha um papel crucial na verificação da identidade do titular do certificado, especialmente em situações em que um certificado é apresentado para autenticação. Os sistemas e aplicativos que dependem de certificados digitais podem verificar se o CN no certificado corresponde ao nome de domínio do servidor com o qual estão se comunicando, garantindo assim a autenticidade e integridade das comunicações.


# Nome Alternativo do Assunto – Subject Alternative Name (SAN)

* Subject Alternative Name (SAN) é um campo presente em certificados digitais que permite especificar nomes alternativos para identificar o sujeito ou entidade do certificado, além do Common Name (CN). O SAN é usado principalmente em certificados SSL/TLS para suportar diferentes domínios ou subdomínios associados a um único certificado.

* A inclusão do SAN em um certificado digital permite que ele seja válido para múltiplos domínios, o que é especialmente útil em cenários como certificados wildcard, onde um único certificado pode ser aplicado a todos os subdomínios de um domínio principal. O SAN também pode ser utilizado para incluir domínios adicionais que estão associados ao mesmo serviço ou entidade, permitindo que todos os domínios sejam validados em um único certificado. Veja três exemplos de domínios que podem ser incluídos no campo Subject Alternative Name de um certificado:

- www.example.com: Um domínio principal usado para acessar um site específico.

    - mail.example.com: Um subdomínio usado para acesso ao servidor de  e-mail associado ao domínio example.com.

    - secure.example.net: Um domínio diferente, mas relacionado, que também faz parte do mesmo serviço ou entidade.

* Esses exemplos mostram como o campo SAN pode ser utilizado para incluir diferentes domínios em um único certificado, permitindo que todos eles sejam validados e confiáveis para uso seguro na comunicação online.
