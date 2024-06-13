# Aquisição de imagem de disco
Permite que os investigadores capturem uma cópia exata de um dispositivo de armazenamento, como um disco rígido, mídia USB ou cartão de memória. Esse processo garante que os dados originais sejam preservados e possam ser analisados em detalhes para a investigação. Veja como funciona:

Identificação e preparação do alvo: Escolha o dispositivo de armazenamento a ser adquirido. Pode ser um disco rígido, um SSD, uma unidade flash USB ou qualquer outro meio que contenha os dados relevantes para a investigação. Registre detalhes do dispositivo, como modelo, tamanho e informações de identificação, para documentação e referência futura.

Técnica de aquisição: A técnica mais comum é a cópia bit a bit, que cria uma réplica exata do dispositivo, incluindo todos os dados, estrutura de arquivos e espaços não utilizados. Durante a aquisição, crie um valor hash exclusivo para verificar a integridade da imagem adquirida em comparação com o dispositivo original.

Preparação e ferramentas: Utilize ferramentas de aquisição forense para criar a imagem. Essas ferramentas garantem a coleta forense adequada, preservando a integridade dos dados. Prepare um disco de destino com espaço suficiente para armazenar a imagem de disco. Pode ser um disco rígido externo, uma unidade de rede ou outro dispositivo de armazenamento.

Aquisição da imagem: A ferramenta de aquisição copia cada bit do dispositivo original para o disco de destino. Inclui os dados, sistema de arquivos, metadados e até mesmo espaços não utilizados. Durante a aquisição, verifique se o hash da imagem coincide com o hash original, garantindo a integridade dos dados.

Armazenamento seguro: Armazene a imagem adquirida em um local seguro e confiável, protegido contra alterações e danos. Registre informações sobre a imagem adquirida, incluindo o hash, data e hora, e detalhes do dispositivo original.


# Preservação e integridade da evidência
A preservação e a integridade da evidência são princípios essenciais na forense digital, assegurando que as informações coletadas durante uma investigação sejam mantidas intactas e confiáveis. Esses princípios são cruciais para garantir que as descobertas forenses possam ser aceitas em tribunais ou em qualquer contexto em que a evidência seja apresentada:

Cadeia de custódia: A evidência deve ser documentada em cada etapa do processo, desde a sua coleta até o armazenamento final. Inclui informações como data, hora, local, pessoas envolvidas e métodos de coleta. Cada pessoa que manuseia a evidência deve ser identificada e registrada. Isso ajuda a rastrear quem teve acesso à evidência ao longo do tempo.

Coleta adequada: A evidência deve ser coletada usando técnicas forenses apropriadas, garantindo que os dados originais não sejam alterados ou danificados durante o processo. Os investigadores devem evitar qualquer ação que possa modificar a evidência, como alterar arquivos ou configurações nos dispositivos sob investigação.

Armazenamento seguro: A evidência deve ser armazenada em mídias confidenciais e protegidas contra acesso não autorizado. Isso evita adulterações ou manipulações por partes interessadas.

Hashing e cerificação: Calcule valores de hash únicos para a evidência coletada, como imagens de disco ou arquivos. Esses valores são como impressões digitais únicas que representam a integridade da evidência. Regularmente, verifique se os valores de hash da evidência correspondem aos valores originais. Isso garante que os dados não tenham sido alterados.

Rastreamento da evidência: Mantenha um registro de todas as pessoas que têm acesso à evidência e os motivos para esse acesso. Isso ajuda a manter a cadeia de custódia e a identificar qualquer potencial manipulação

Preservação do ambiente: Mantenha o ambiente onde a evidência é armazenada e analisada seguro e controlado. Isso evita contaminação e ajuda a manter a integridade dos dados.


# Aquisição de outros dados
Além da aquisição de imagens de disco e memória, a forense digital envolve a coleta de dados de várias outras fontes, como rede, cache, artefatos e recuperação de dados, instantâneos e firmware:

Aquisição de dados de rede: A aquisição de dados de rede envolve a coleta de informações sobre comunicações e atividades de rede. Isso inclui logs de tráfego, registros de conexão, históricos de navegação e registros de firewall. Esses dados podem revelar conexões suspeitas, transferências de arquivos e outras atividades maliciosas que podem estar relacionadas a incidentes.

Aquisição de dados de cache: A cache é uma área de armazenamento temporário usada para acelerar o acesso a dados frequentemente utilizados. A coleta de dados de cache pode incluir históricos de navegação, arquivos temporários e informações sobre aplicativos usados. Os dados de cache podem conter informações sobre atividades recentes, como sites visitados e arquivos abertos, que podem ser relevantes para a investigação.

Artefatos e recuperação de dados: Artefatos são rastros deixados por atividades realizadas em dispositivos, como registros de eventos, históricos de pesquisa e registros de login. A recuperação de dados excluídos também é uma fonte valiosa de evidência. Ao examinar artefatos e dados recuperados, os investigadores podem reconstruir eventos, identificar atividades suspeitas e recuperar informações excluídas.

Aquisição de instantâneos (Snapshots): São cópias do estado de um sistema ou arquivo em um determinado momento. Eles são frequentemente usados em ambientes virtuais e podem ser capturados para fins de análise forense. A análise de instantâneos permite que os investigadores examinem o estado de um sistema em um momento específico, identificando mudanças, atividades e configurações.

Aquisição de Firmware: O firmware é o software incorporado em dispositivos e componentes de hardware. A aquisição de firmware envolve coletar cópias do firmware para análise. A análise do firmware pode revelar vulnerabilidades de segurança, backdoors não documentados ou modificações não autorizadas que possam afetar a integridade do dispositivo.