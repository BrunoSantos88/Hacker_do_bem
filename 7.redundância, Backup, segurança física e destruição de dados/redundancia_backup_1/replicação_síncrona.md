# Replicação síncrona

* Na replicação síncrona, os dados são replicados em tempo real, à medida que são gravados no sistema de origem. Antes que a operação de gravação seja considerada concluída, a réplica dos dados é confirmada no sistema de destino. Isso garante que os dados estejam sempre sincronizados entre os dois sistemas.

* A replicação síncrona é ideal para cenários em que a consistência dos dados é uma prioridade absoluta, como em bancos de dados transacionais críticos. Se houver uma falha no sistema de origem, o sistema de destino estará sempre atualizado com os dados mais recentes. No entanto, a replicação síncrona pode afetar o desempenho, pois a confirmação da réplica ocorre antes que a gravação seja considerada concluída.

* Uma implementação comum de replicação síncrona é o espelhamento de banco de dados em tempo real. Por exemplo, o Oracle Data Guard utiliza replicação síncrona para manter cópias atualizadas dos bancos de dados Oracle em diferentes servidores. À medida que as transações são gravadas no banco de dados principal, elas também são replicadas instantaneamente para o banco de dados de backup, garantindo a disponibilidade dos dados em caso de falha.
Replicação assíncrona

* Na replicação assíncrona, os dados são replicados em um intervalo de tempo definido, em vez de serem replicados imediatamente após a gravação no sistema de origem. Isso permite que a operação de gravação seja concluída mais rapidamente no sistema de origem, sem esperar pela confirmação da réplica no sistema de destino.

* A replicação assíncrona é adequada para ambientes em que um pequeno atraso na sincronização dos dados é aceitável, e o desempenho é uma prioridade. Isso pode incluir armazenamento em nuvem, recuperação de desastres ou replicação entre locais geograficamente distantes.

* A seguinte figura mostra um exemplo de replicação síncrona entre a base de dados primária e distante na cidade de Nova Iorque. Na mesma figura também podemos ver replicação assíncrona entre a base de dados distante de Nova Iorque e uma base de dados em Paris.