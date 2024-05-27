# Server-Side Request Forgery (SSRF)

* Server-Side Request Forgery (SSRF), em português "Forjamento de Requisições do Lado do Servidor", é uma vulnerabilidade de segurança que permite que um invasor faça com que um servidor execute requisições não autorizadas em outros recursos ou sistemas internos. Essa vulnerabilidade ocorre quando um aplicativo web permite que um usuário forje requisições a partir do servidor para outros servidores ou serviços, potencialmente expondo informações confidenciais ou explorando sistemas internos.

* Os ataques de SSRF acontecem quando um aplicativo web não valida ou controla adequadamente as entradas do usuário que contêm URLs ou endereços IP usados em requisições feitas pelo servidor. Os seguintes passos descrevem um cenário típico de ataque de SSRF:


- Identificação da Vulnerabilidade: O atacante identifica campos de entrada, como URLs, que são usados em requisições feitas pelo servidor.

- Inserção de URL Manipulada: O invasor insere uma URL manipulada em um campo de entrada. Essa URL pode apontar para um servidor externo controlado pelo invasor ou para recursos internos não autorizados.

- Execução da Requisição: O aplicativo web incorpora a URL manipulada em uma requisição feita pelo servidor e a envia para o servidor de destino.

- Exploração: O atacante pode explorar os resultados da requisição para obter informações sensíveis, explorar recursos internos, ou até mesmo usar a vulnerabilidade para ataques adicionais.


# Prevenção e Mitigação de SSRF:

- Validação Estrita de Entradas: Valide e filtre rigorosamente todas as entradas de dados fornecidas pelos usuários que contêm URLs ou endereços IP, garantindo que elas sejam seguras e não permitam que URLs não autorizadas sejam acessadas.

- Uso de Listas de Permissões (Whitelists): Mantenha uma lista de recursos ou URLs permitidos e restrinja todas as outras entradas a esses recursos autorizados.

- Limitação de Privilégios: Configure o aplicativo web para executar com privilégios mínimos, limitando sua capacidade de acessar recursos internos ou servidores externos não confiáveis.

- Restrição de Saída de Rede: Bloqueie ou restrinja a capacidade do aplicativo web de fazer requisições para recursos externos ou servidores não autorizados. Esta é uma prática importante para mitigar vulnerabilidades de SSRF. Isso pode ser alcançado configurando regras de firewall, bloqueando portas não utilizadas ou implementando medidas de segurança de rede, como VLANs ou proxies reversos.

- Utilização de URLs Relativas: Sempre que possível, utilize URLs relativas em vez de URLs absolutas para garantir que as requisições sejam direcionadas apenas a recursos dentro do escopo apropriado.

- Monitoramento de Logs: Implemente registros de auditoria para monitorar atividades incomuns ou tentativas de SSRF em tempo real.

