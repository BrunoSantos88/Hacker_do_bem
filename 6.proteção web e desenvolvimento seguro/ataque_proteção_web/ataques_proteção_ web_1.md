* Conceitos
- API Attacks e Replay Attacks.
- Session Hijacking e Clickjacking.
- Cross-Site Request Forger e SSL Strip.


# Uniform Resource Locator (URL) Analysis (Análise de URL)

*  Estrutura da URL


_ Uma URL (Uniform Resource Locator) é uma sequência de caracteres que serve para identificar e localizar recursos na internet, como páginas da web, imagens, documentos, serviços web e outros tipos de recursos. A estrutura de uma URL é composta por vários componentes que ajudam a definir o endereço preciso do recurso desejado. A seguir, são apresentados os principais componentes de uma URL:


- Esquema (Scheme): O esquema (ou protocolo) indica como o recurso deve ser acessado ou qual protocolo deve ser usado para obter o recurso. Os esquemas mais comuns incluem:

- http: Usado para acessar recursos da web em texto simples.

- https: Usado para acessar recursos da web de forma segura e criptografada.

- ftp:Usado para transferência de arquivos via FTP (File Transfer Protocol).

- mailto: Usado para endereços de e-mail.

- file: Usado para acessar recursos locais no sistema de arquivos do computador.

- Domínio (Host): O domínio representa o endereço do servidor que hospeda o recurso. Geralmente, é uma combinação de um nome de host e um domínio de alto nível (TLD - Top-Level Domain). Por exemplo, www.exemplo.com ou “subdominio.site.com.br”.

- Porta (Port): A porta é um número que especifica a porta de rede a ser usada para a comunicação com o servidor. A maioria das URLs não inclui uma porta, e o navegador usa a porta padrão para o esquema (por exemplo, 80 para HTTP e 443 para HTTPS). Quando não especificada, a porta é omitida da URL. Exemplo com porta: www.exemplo.com:8080.

- Caminho (Path): O caminho representa o local específico no servidor onde o recurso está localizado. Geralmente, é uma sequência hierárquica de diretório e nome de arquivo, separada por barras (/). O caminho começa após o nome de domínio e pode incluir subdiretórios e o nome do arquivo ou recurso. Exemplo de caminho: “/pasta1/pasta2/recurso.html”.

- Query String: A query string (cadeia de consulta) é usada para enviar parâmetros e dados para o servidor. Ela começa com um ponto de interrogação (?) e contém pares chave-valor separados por símbolos de igual (=). Múltiplos pares são separados por símbolos de “e” comercial (&). Exemplo de query string: “?id=123&nome=exemplo”.

- Âncora (Fragment): A âncora é usada para indicar uma posição específica em uma página web. Ela começa com o símbolo de hash (#) e é seguida por um identificador dentro da página. Exemplo de âncora: “#secao2”.

