# Aquisição de dados
Envolve a coleta de informações e evidências de dispositivos e sistemas eletrônicos de maneira precisa, forense e segura. O objetivo é capturar uma cópia exata dos dados originais para posterior análise, sem alterar ou comprometer a integridade das evidências. Veja como funciona o processo de aquisição de dados:

Identificação dos alvos de aquisição: Identifique os dispositivos eletrônicos ou mídias que contêm as informações relevantes para a investigação. Isso pode incluir computadores, laptops, smartphones, servidores, discos rígidos, pen drives, entre outros.

Seleção das técnicas de aquisição:

Live Acquisition: A coleta é feita diretamente do dispositivo em funcionamento, sem desligá-lo. Pode ser mais apropriada para coletar dados voláteis, como informações na memória do sistema.

Imagem de disco: É criada uma cópia bit a bit de toda a mídia, capturando todos os dados, inclusive o espaço não utilizado. Isso garante uma cópia forense completa.

Preparação e planejamento:

Documentação: Registre detalhes sobre o dispositivo, mídia, horário da coleta, pessoa responsável e qualquer informação relevante.

Hardware e Software: Prepare os dispositivos, cabos e ferramentas forenses necessárias para a aquisição.

Coleta de dados:

Cópia bit a bit: No caso de uma imagem de disco, cada bit é copiado, incluindo dados excluídos e espaço não utilizado. Para a coleta ao vivo, ferramentas forenses capturam informações de memória e dados em uso.

Hashing e verificação:

Hashing: Calcule um valor de hash (uma sequência de caracteres única) da imagem adquirida. Isso permite verificar se a imagem não foi alterada durante ou após a aquisição.

Verificação: Compare o hash da imagem adquirida com o hash original para garantir a integridade dos dados.

Armazenamento seguro: Armazene a imagem adquirida em uma mídia segura, como um disco rígido externo ou servidor, protegendo-a contra alterações e danos.

Registro completo: Registre todas as etapas do processo de aquisição, incluindo o método, os resultados do hash, informações sobre a mídia de armazenamento e a cadeia de custódia.

Análise e exame: A imagem adquirida é usada como base para análise forense, permitindo a investigação de arquivos, registros, atividades e outros dados relevantes.

# Ordem de volatilidade
A ordem de volatilidade estabelece a sequência em que os dados devem ser coletados durante uma investigação, priorizando os dados que são mais propensos a serem perdidos ou modificados rapidamente. O objetivo é garantir que as evidências sejam capturadas antes que desapareçam ou sejam sobrescritas, preservando a integridade da investigação.

Dados voláteis e Não voláteis:

Dados voláteis: São dados que podem ser alterados ou perdidos rapidamente quando um sistema é desligado ou reiniciado. Inclui informações na memória RAM, registros de processos em execução, conexões de rede ativas e cache do sistema.

Dados não voláteis: São dados que persistem mesmo quando o sistema é desligado, como arquivos em discos rígidos, registros de eventos, registros de sistema e bancos de dados.

Priorização da coleta: Na ordem de volatilidade, a coleta começa pelos dados mais voláteis, pois são os mais suscetíveis a serem perdidos. Isso é especialmente relevante em investigações de incidentes em tempo real.

Sequência de coleta:

Memória RAM: A memória do sistema contém informações temporárias, como processos em execução, conexões de rede e dados de autenticação. A coleta é realizada utilizando ferramentas especializadas para capturar uma imagem da memória.

Cache do sistema: O cache do sistema pode conter informações sobre atividades recentes, como arquivos temporários e histórico de navegação. É capturado por meio de técnicas específicas.

Estado do processo: Os registros de processos em execução, portas de rede e conexões ativas são capturados para identificar atividades maliciosas em andamento.

Dados em disco: Depois de coletar os dados voláteis, a atenção se volta para os dados não voláteis, como arquivos em discos rígidos e outros dispositivos de armazenamento.

Análise e correlação: Após a coleta, os dados voláteis são analisados para identificar atividades suspeitas, reconstruir ações do invasor e obter informações sobre o contexto do incidente.