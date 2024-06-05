# Configurações e Patches

* Configuração de linha de base

- A configuração de linha de base (Baseline Configuration) é um conjunto de configurações e padrões definidos para um sistema ou dispositivo específico, com o objetivo de estabelecer um estado inicial seguro e consistente. Ela serve como referência para garantir que todos os sistemas estejam configurados corretamente e alinhados com as políticas de segurança e melhores práticas da organização. A configuração de linha de base inclui uma série de parâmetros e configurações recomendadas, como configurações de firewall, permissões de acesso, configurações de contas de usuário, políticas de senha, restrições de software, entre outros. Essas configurações são projetadas para minimizar riscos de segurança, reduzir vulnerabilidades e padronizar a configuração dos sistemas.

- O processo de implementação da configuração de linha de base geralmente envolve várias etapas. Primeiro, é feita uma análise de segurança para identificar os requisitos específicos e as políticas da organização. Com base nisso, são estabelecidos os padrões e configurações apropriadas para cada tipo de sistema ou dispositivo. Uma vez definida a configuração de linha de base, ela é aplicada aos sistemas existentes e também deve ser seguida para os novos sistemas implantados. Periodicamente, é recomendado revisar e atualizar a configuração de linha de base para garantir que esteja alinhada com as mudanças nas políticas de segurança e as ameaças emergentes.


# Desvio de configuração de linha de base

* Refere-se a uma situação em que as configurações de um sistema ou dispositivo se afastam das configurações de linha de base estabelecidas inicialmente. Esse desvio pode ocorrer devido a várias razões, como alterações não autorizadas, atualizações de software, configurações incorretas, intervenção humana ou até mesmo atividades maliciosas. Quando ocorre um desvio de configuração de linha de base, significa que as configurações atuais do sistema não estão mais alinhadas com os padrões de segurança definidos. Isso pode levar a um aumento do risco de segurança, vulnerabilidades potenciais e comprometimento da integridade do sistema.

* A detecção e correção do desvio de configuração de linha de base são essenciais para manter a segurança do sistema. Isso pode ser feito por meio de ferramentas de monitoramento contínuo que verificam regularmente as configurações do sistema em relação à configuração de linha de base estabelecida. Qualquer desvio identificado é considerado uma violação e requer ação corretiva. Para corrigir o desvio, é necessário analisar as alterações na configuração, identificar a causa raiz do desvio e aplicar as correções apropriadas. Isso pode envolver reverter as alterações não autorizadas, atualizar a configuração para refletir as alterações legítimas ou até mesmo realizar uma nova implementação da configuração de linha de base.

# Tecnologia da Informação Sombra (Shadow IT)

* Refere-se ao uso de tecnologia, aplicativos, serviços ou sistemas de informação dentro de uma organização sem o conhecimento ou aprovação do departamento de TI ou da equipe responsável pela segurança da informação. O termo "Shadow IT" é usado para descrever situações em que os funcionários, por iniciativa própria, implementam soluções tecnológicas fora dos canais oficiais ou políticas estabelecidas pela empresa. Isso pode incluir o uso de aplicativos de armazenamento em nuvem, serviços de compartilhamento de arquivos, comunicação instantânea ou até mesmo a compra de dispositivos ou softwares sem o conhecimento da equipe de TI.

* Existem várias razões pelas quais a Shadow IT ocorre. Às vezes, os funcionários adotam essas soluções não autorizadas porque consideram que as ferramentas fornecidas pela organização não são adequadas às suas necessidades ou porque desejam aumentar sua produtividade de forma mais rápida e eficiente. Em outros casos, a Shadow IT pode surgir por falta de conscientização sobre os riscos de segurança associados ao uso de soluções não aprovadas. A Shadow IT pode representar desafios significativos para as organizações. Ela pode levar a questões de segurança, como o armazenamento de dados confidenciais em serviços não seguros ou o uso de aplicativos que podem conter vulnerabilidades de segurança. Adicionalmente, pode haver falta de conformidade com regulamentações e políticas internas, bem como dificuldades no gerenciamento e suporte dessas soluções não autorizadas.

# Gerenciamento de patches

* É o processo de identificação, implantação e manutenção de atualizações de software, conhecidas como patches, em sistemas e aplicativos. Os patches são lançados pelos fornecedores de software para corrigir vulnerabilidades de segurança, resolver problemas funcionais, melhorar o desempenho ou adicionar novos recursos aos produtos.

* O objetivo do gerenciamento de patches é manter os sistemas atualizados e protegidos contra ameaças conhecidas, reduzindo as vulnerabilidades que podem ser exploradas por hackers e malwares. A falta de aplicação de patches pode deixar os sistemas expostos a ataques, uma vez que os hackers podem explorar as brechas de segurança existentes nas versões desatualizadas dos softwares. O processo de gerenciamento de patches geralmente envolve as seguintes etapas:

   1. Identificação: É necessário acompanhar e monitorar os patches disponibilizados pelos fornecedores de software. Isso envolve a análise de boletins de segurança, alertas e outras fontes para identificar quais patches são relevantes para os sistemas em uso.

   2. Avaliação: Após a identificação dos patches, é necessário avaliar sua relevância e impacto nos sistemas. Isso envolve analisar as notas de lançamento, documentação e possíveis impactos nas funcionalidades existentes.

   3. Teste: Antes de implantar os patches em ambiente de produção, é importante realizar testes em ambientes controlados para garantir que os patches não causem problemas de compatibilidade, conflitos com outros softwares ou afetem o desempenho do sistema.

  4. Implantação: Uma vez que os patches foram testados e considerados adequados, eles podem ser implantados nos sistemas afetados. Isso pode envolver a instalação manual em cada sistema ou o uso de ferramentas de gerenciamento de patches para facilitar a distribuição em larga escala.

  5. Verificação e Monitoramento: Após a implantação, é importante verificar se os patches foram aplicados corretamente e monitorar continuamente o ambiente para garantir que os sistemas permaneçam atualizados e protegidos.

  6. Gerenciamento de exceções: Em alguns casos, pode haver situações em que a aplicação de um patch específico possa causar problemas ou incompatibilidades em sistemas críticos. Nesses casos, é necessário avaliar as opções e implementar medidas alternativas de mitigação de risco, como configurações adicionais de segurança ou outras soluções temporárias.

# O mercado de gerenciamento de patches

* Existem várias soluções de mercado disponíveis para implementar o gerenciamento de patches de forma eficaz. Essas soluções auxiliam as organizações no processo de identificação, implantação e monitoramento de patches em seus sistemas:

* Microsoft Windows Server Update Services (WSUS): O WSUS é uma solução fornecida pela Microsoft para gerenciar e distribuir atualizações de software para sistemas operacionais Microsoft, aplicativos Microsoft e outros produtos relacionados. Ele permite que os administradores de TI aprovem, teste e implantem patches em uma escala controlada dentro da infraestrutura Windows. 

* SCCM (System Center Configuration Manager): Parte da suíte de produtos do Microsoft System Center, o SCCM é uma plataforma abrangente de gerenciamento de sistemas que também inclui recursos de gerenciamento de patches. Ele permite que as organizações implantem, monitorem e relatem o status dos patches em sistemas Windows e outros dispositivos gerenciados.

* IBM BigFix: O IBM BigFix (anteriormente Tivoli Endpoint Manager) é uma solução de gerenciamento unificado de endpoints que abrange a gestão de patches. Ele oferece recursos para identificar e implantar patches em sistemas operacionais Windows, macOS e Linux, além de aplicativos de terceiros. O BigFix também inclui recursos de inventário de software, conformidade e gerenciamento de 

* vanti Patch Management: É uma solução de gerenciamento de patches abrangente que aborda sistemas operacionais Windows, macOS, Linux e aplicativos de terceiros. Ele fornece recursos de automação para identificar, testar e implantar patches, além de recursos de relatórios e monitoramento para garantir que os sistemas permaneçam atualizados.

* SolarWinds Patch Manager: É uma solução de gerenciamento de patches projetada para simplificar o processo de implantação de patches em ambientes Windows e aplicativos de terceiros. Ele permite que os administradores de TI agendem e implantem patches, realizem verificações de conformidade e gerem relatórios detalhados sobre o status do patch.

# Tecnologias de proteção de Endpoint

* Proteção de Endpoint (Endpoint Protection) refere-se às soluções e práticas implementadas para garantir a segurança dos dispositivos finais, como computadores, laptops, smartphones e tablets, que são conhecidos como endpoints. A proteção de endpoint visa detectar, prevenir e responder a ameaças cibernéticas que podem comprometer a segurança e a integridade dos sistemas e dados.

# Antimalware

* É um software de segurança projetado para detectar, prevenir e remover malware dos sistemas e dispositivos. A função principal do software antimalware é proteger os sistemas contra essas ameaças, que podem ser prejudiciais para a segurança e o desempenho dos dispositivos, além de comprometer a privacidade dos usuários. As principais características e funcionalidades do antimalware são:

- Detecção de Malware: Utiliza mecanismos de detecção para identificar a presença de malware nos sistemas. Pode ser feito por meio de assinaturas, que são padrões de código conhecidos de malwares, ou por meio de análise heurística, que identifica comportamentos suspeitos ou características comuns de malware.

- Remoção de Malware: Quando um malware é detectado, o software é capaz de remover ou colocar em quarentena o malware encontrado nos sistemas. Consequentemente impede que o malware cause danos adicionais e interrompa as atividades do sistema.

- Escaneamento em Tempo Real: O antimalware pode operar em tempo real, monitorando continuamente os arquivos, processos e atividades nos sistemas. Ele pode escanear os arquivos em busca de malware quando são acessados, executados ou baixados, oferecendo uma proteção em tempo real contra ameaças.

- Atualizações de Definições: O antimalware requer atualizações regulares de suas definições de malware para acompanhar as novas ameaças e variantes de malware. Essas atualizações garantem que o software esteja equipado para detectar e lidar com as ameaças mais recentes.

- Proteção em Tempo Real: Além de escanear arquivos e atividades sob demanda, o antimalware pode oferecer proteção em tempo real, monitorando constantemente os sistemas para identificar atividades maliciosas, bloquear a execução de malware em tempo real e fornecer alertas de segurança.

- Configurações Personalizáveis: O antimalware geralmente permite configurações personalizáveis, permitindo que os usuários definam opções como níveis de detecção, ações a serem tomadas quando malware é encontrado e agendamentos de escaneamento.