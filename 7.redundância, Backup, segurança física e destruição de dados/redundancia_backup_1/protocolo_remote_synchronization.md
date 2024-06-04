# Protocolo Remote Synchronization (Rsync)

* É um protocolo e uma ferramenta amplamente utilizada para sincronização e transferência eficiente de dados em redes de computadores. Ele foi projetado para minimizar a quantidade de dados transferidos durante a sincronização, tornando-o ideal para atualizar cópias de arquivos grandes ou diretórios inteiros.

* O Rsync utiliza um algoritmo de sincronização inteligente que compara o conteúdo dos arquivos em ambos os lados da transferência e transfere apenas as partes do arquivo que foram modificadas. Isso é conhecido como transferência incremental ou delta transfer, e ajuda a economizar tempo e largura de banda, especialmente em situações em que os arquivos são grandes ou as conexões de rede são lentas. O protocolo Rsync funciona da seguinte forma:

1. Comparação de arquivos: O Rsync compara os atributos dos arquivos, como tamanho e timestamp, para identificar quais arquivos precisam ser atualizados. Ele também divide os arquivos em blocos menores e calcula uma assinatura (checksum) para cada bloco.

2. Transferência de dados delta: O Rsync transfere apenas os blocos de dados modificados ou ausentes, conhecidos como deltas. Em vez de enviar um arquivo inteiro, apenas as partes alteradas são transferidas, economizando tempo e largura de banda. Essa abordagem torna o Rsync particularmente eficiente em redes com conexões lentas ou com limitações de largura de banda.

3. Reconstrução do arquivo: No lado de destino, o Rsync usa as informações recebidas para reconstruir o arquivo atualizado. Ele aplica as mudanças aos blocos existentes, adiciona novos blocos e descarta blocos obsoletos. O resultado é uma cópia exata e atualizada do arquivo original.