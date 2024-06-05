 # Public Key Infrastructure - PKI

* A Infraestrutura de Chaves Públicas (PKI - Public Key Infrastructure) é um conjunto de tecnologias, políticas e procedimentos que são usados para estabelecer e gerenciar a segurança em ambientes digitais. Ela é baseada na criptografia assimétrica, que utiliza um par de chaves criptográficas: uma chave pública e uma chave privada.

* A PKI permite que diferentes partes em um ambiente digital se autentiquem mutuamente, garantindo a confidencialidade, integridade, autenticidade e não repúdio das informações transmitidas. Ela é amplamente utilizada em transações online, comunicações seguras, assinaturas digitais e identificação eletrônica.
Chave pública e chave privada em PKI

* Em uma Infraestrutura de Chaves Públicas (PKI), a chave pública e a chave privada são elementos essenciais da criptografia assimétrica. Essa forma de criptografia utiliza um par de chaves criptográficas que estão matematicamente relacionadas, mas têm funções distintas.

   1. Chave pública: A chave pública é uma chave criptográfica que pode ser divulgada e compartilhada livremente com outras partes. Ela é usada para criptografar informações ou verificar assinaturas digitais. A chave pública é derivada da chave privada correspondente por meio de algoritmos matemáticos específicos. Quando alguém deseja enviar informações confidenciais para um destinatário, essa pessoa utiliza a chave pública do destinatário para criptografar os dados antes de enviá-los. Somente a chave privada correspondente ao par de chaves pode descriptografar as informações criptografadas com a chave pública correspondente.

    2. Chave privada: A chave privada é a contraparte da chave pública e é mantida em sigilo pelo seu proprietário. Ela não é divulgada nem compartilhada com outras partes. A chave privada é usada para descriptografar informações criptografadas com a chave pública correspondente ou para criar assinaturas digitais. Quando alguém deseja enviar uma assinatura digital para outra parte, essa pessoa utiliza sua chave privada para assinar digitalmente os dados. A assinatura digital é um valor criptográfico exclusivo que comprova a autenticidade e integridade dos dados. Para verificar a assinatura digital, qualquer pessoa com acesso à chave pública correspondente pode usar essa chave para verificar a autenticidade da assinatura e a integridade dos dados.

* A relação entre as chaves públicas e privadas com os certificados digitais é estabelecida por meio das Autoridades Certificadoras (CAs). Os certificados digitais são documentos eletrônicos emitidos pelas CAs confiáveis que vinculam uma chave pública a uma identidade específica (como uma pessoa, organização ou dispositivo). O certificado digital contém informações como nome, organização, data de emissão e validade, além da chave pública do titular do certificado.


# Autoridades Certificadoras (ACs) em PKI

* As Autoridades Certificadoras (ACs) desempenham um papel fundamental na infraestrutura de chaves públicas (PKI) ao serem responsáveis por emitir, validar e revogar certificados digitais. Elas atuam como entidades confiáveis que garantem a autenticidade e integridade das informações transmitidas eletronicamente.

* O principal papel das ACs é verificar a identidade dos solicitantes de certificados e garantir que as chaves públicas contidas nesses certificados sejam legítimas. Isso é feito por meio da verificação de documentos e informações pessoais dos usuários, como o uso de criptografia assimétrica. As funções de uma AC são as seguintes:

- Fornecer uma variedade de serviços de certificado úteis: Inclui emitir certificados digitais para indivíduos, organizações ou dispositivos, garantindo que os certificados sejam emitidos de acordo com as políticas de certificação e diretrizes estabelecidas. As políticas de certificação são documentos que estabelecem os procedimentos e diretrizes para a emissão, validação, revogação e gerenciamento dos certificados digitais pelas Autoridades Certificadoras. Elas são fundamentais para garantir a consistência e a confiabilidade dos processos envolvidos. Além disso, a AC pode oferecer serviços adicionais, como renovação de certificados, emissão de certificados de recuperação e serviços de assinatura digital.

- Garantir a validade e identidade dos certificados solicitados: A AC desempenha um papel fundamental na validação da identidade dos solicitantes de certificados. Antes de emitir um certificado, a AC realiza um processo de registro, no qual verifica a identidade do solicitante e garante sua autenticidade. Isso pode envolver a verificação de documentos de identificação, realização de entrevistas ou uso de outras formas de autenticação. Ao garantir a validade dos certificados e a identidade dos titulares, a AC estabelece a confiança na cadeia de certificados e na autenticidade das transações digitais.

- Estabelecer confiança na AC por parte dos usuários: A confiança desempenha um papel fundamental em uma infraestrutura de chaves públicas (PKI). A AC é responsável por estabelecer essa confiança, tanto por parte dos usuários quanto por parte das autoridades governamentais, regulatórias e das empresas. Isso é alcançado por meio da adesão a padrões de segurança e práticas recomendadas, conformidade com regulamentações e políticas, e realização de auditorias e certificações de segurança. Ao demonstrar sua confiabilidade e segurança, a AC conquista a confiança dos usuários e das partes interessadas, o que é essencial para o funcionamento efetivo da PKI.

- Gerenciar os servidores (repositórios): Uma AC é responsável por gerenciar os servidores ou repositórios que armazenam e administram os certificados emitidos. Isso inclui a implementação de medidas de segurança para proteger os certificados contra acessos não autorizados, gerenciamento de backups para garantir a disponibilidade contínua dos certificados e implementação de políticas de retenção de dados. Além disso, a AC pode ser responsável por fornecer serviços de busca e recuperação de certificados, permitindo que os usuários acessem facilmente os certificados necessários.

- Realizar a gestão do ciclo de vida das chaves e certificados: A gestão do ciclo de vida das chaves e certificados é uma tarefa crítica para uma AC. Isso inclui a geração segura de chaves criptográficas, emissão de certificados, renovação, revogação e expiração dos mesmos. A AC deve implementar um processo eficiente para lidar com a revogação de certificados inválidos, seja devido a perda de confidencialidade da chave privada, comprometimento da identidade do titular do certificado ou outros motivos de revogação. A revogação garante que os certificados inválidos não possam ser utilizados indevidamente, mantendo a segurança e a integridade da PKI. A AC é responsável por manter e atualizar as listas de revogação de certificados (CRLs) ou fornecer serviços de verificação em tempo real, como o Protocolo de Status de Certificado Online (OCSP).

 # Modelos de Confiança da PKI

* O modelo de confiança é um conceito crítico da PKI e mostra como os usuários e diferentes ACs podem confiar uns nos outros. Os modelos de confiança em PKI são:

# AC Única

* Uma Autoridade Certificadora (AC) Única em uma Infraestrutura de Chaves Públicas (PKI) é um modelo em que uma única entidade é responsável por emitir todos os certificados digitais dentro de um sistema. Nesse modelo, a AC única desempenha o papel central de confiança e é a única fonte de autoridade para validar a identidade dos solicitantes de certificados e emitir os certificados correspondentes.

* Na AC Única, todos os usuários confiam nos certificados emitidos por essa autoridade central. Isso significa que, para estabelecer a confiança em um certificado, os usuários devem confiar na AC única que emitiu o certificado. Qualquer entidade que deseje verificar a autenticidade de um certificado digital pode verificar a cadeia de certificados até a AC única.

* Esse modelo é relativamente simples de ser implementado, pois envolve apenas uma AC e não requer coordenação entre várias autoridades. No entanto, também apresenta alguns desafios e riscos. Por exemplo, se a AC única for comprometida, todo o sistema de PKI será afetado e a confiança nos certificados emitidos pela AC será comprometida. Além disso, a AC única pode se tornar um ponto único de falha e um alvo atraente para ataques maliciosos. Devido aos riscos associados a uma AC única, muitas implementações de PKI adotam modelos hierárquicos

 # Hierárquico (AC Intermediária)

* No modelo hierárquico, uma única AC (chamada de raiz) emite certificados para várias ACs intermediárias. As ACs intermediárias emitem certificados para os assuntos (entidades finais). Esse modelo tem a vantagem de permitir que diferentes ACs intermediárias sejam configuradas com diferentes políticas de certificado, permitindo que os usuários percebam claramente para que serve um determinado certificado. Cada certificado de folha pode ser rastreado até a AC raiz ao longo do caminho de certificação. Isso também é conhecido como encadeamento de certificados ou cadeia de confiança.

* O certificado da raiz é autoassinado. No modelo hierárquico, a raiz ainda é um único ponto de falha. Se a raiz estiver danificada ou comprometida, toda a estrutura colapsa. No entanto, para mitigar isso, o servidor raiz pode ser desconectado, pois a maioria das atividades regulares da AC é realizada pelos servidores das ACs intermediárias.

* Outro problema é que há oportunidades limitadas para a intercertificação, ou seja, confiar na AC de outra organização. Duas organizações podem concordar em compartilhar uma AC raiz, mas isso levaria a dificuldades operacionais que aumentariam conforme mais organizações aderissem. Na prática, a maioria dos clientes é configurada para confiar em várias ACs raiz.
