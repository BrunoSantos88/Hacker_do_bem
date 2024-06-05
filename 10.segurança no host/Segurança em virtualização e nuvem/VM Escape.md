# VM Escape

* É uma vulnerabilidade de segurança que ocorre quando um atacante consegue escapar de uma máquina virtual (VM) e ganhar acesso ao host físico subjacente. Essa vulnerabilidade é considerada crítica, pois permite que um atacante contorne o isolamento fornecido pela virtualização e comprometa a segurança do ambiente virtualizado. O VM Escape geralmente envolve a exploração de falhas de segurança no hypervisor ou na implementação da virtualização. A exploração bem-sucedida dessa vulnerabilidade permite que o atacante acesse e controle o host físico, obtendo assim acesso a outras VMs em execução no mesmo servidor. Veja algumas técnicas e vetores de ataque:

* Exploração de Vulnerabilidades: Um atacante pode aproveitar vulnerabilidades existentes no hypervisor ou em outros componentes do sistema para ganhar controle sobre o host físico. Envolver a execução de código malicioso, o uso de técnicas de estouro de buffer ou a manipulação de erros na implementação da virtualização.

* Ataques de Injeção de Código: O atacante pode tentar injetar código malicioso em uma VM e explorar falhas na virtualização para fazer com que esse código seja executado no host físico. Permite que o atacante comprometa a segurança do host e acesse outras VMs.

* Vulnerabilidades de Configuração: Configurações inadequadas do ambiente virtualizado podem criar brechas de segurança que podem ser exploradas para realizar um VM Escape. São exploradas a configuração incorreta de permissões de acesso, a falta de isolamento adequado entre as VMs ou a não aplicação de patches de segurança.

# VM Sprawl

* Refere-se a práticas e estratégias para gerenciar e controlar o número de VMs em um ambiente virtualizado. Ocorre quando VMs são criadas e implantadas desnecessariamente, resultando em desperdício de recursos, dificuldades de gerenciamento e aumento dos custos operacionais. Para evitar o VM Sprawl, são implementadas várias abordagens:

* Políticas de provisionamento: Estabelecer políticas claras de provisionamento de VMs é fundamental para evitar a criação excessiva de VMs. É necessário um processo de aprovação bem definido para solicitar e provisionar novas VMs, garantindo que cada solicitação seja avaliada com base em requisitos específicos e evitando que VMs sejam criadas sem justificativa adequada.

* Monitoramento de utilização de VMs: Ajuda a identificar VMs subutilizadas ou ociosas. Ferramentas de monitoramento podem fornecer informações sobre a utilização de CPU, memória, armazenamento e outros recursos. Com base nesses dados, as VMs ociosas ou subutilizadas podem ser identificadas e desligadas ou consolidadas em hosts mais eficientes.

* Gerenciamento de ciclo de vida: Implementar um gerenciamento adequado do ciclo de vida das VMs ajuda a evitar a proliferação descontrolada. Envolve estabelecer políticas para revisar periodicamente as VMs existentes e identificar aquelas que não são mais necessárias. As VMs não utilizadas podem ser desligadas, desalocadas ou excluídas, liberando recursos e reduzindo a complexidade do ambiente.

* Automação e provisionamento sob demanda: Implementar soluções de automação e provisionamento sob demanda pode ajudar a evitar a criação excessiva de VMs. Por exemplo, fornecer aos usuários finais um catálogo de serviços pré-definidos, permitindo que eles provisionem suas próprias VMs conforme necessário. Isso garante que apenas as VMs necessárias sejam implantadas e evita a criação indiscriminada.

* Consolidar e otimizar recursos: Consolidar várias VMs em hosts físicos mais eficientes pode ajudar a reduzir a proliferação de VMs. Técnicas como virtualização de servidores, balanceamento de carga e migração ao vivo (live migration) permitem melhorar a utilização dos recursos e minimizar o número de VMs necessárias.

* Educação e conscientização: Promover a educação e conscientização dos usuários e da equipe de TI sobre as melhores práticas de gerenciamento de VMs é fundamental para evitar o VM Sprawl. Isso envolve fornecer orientações sobre a criação e o gerenciamento adequado das VMs, bem como destacar os impactos do VM Sprawl em termos de custos, desempenho e segurança.



