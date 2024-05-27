# Directory Traversal

Directory Traversal, também conhecido como Path Traversal, é uma vulnerabilidade de segurança que ocorre quando um invasor explora a falta de controle adequado sobre caminhos de arquivo ou diretório em um aplicativo web. Nesse tipo de ataque, o invasor tenta acessar arquivos e diretórios fora da área designada, potencialmente permitindo a visualização, leitura ou inclusão de informações sensíveis ou a execução de código malicioso. Os ataques acontecem quando o aplicativo web não valida ou filtra adequadamente as entradas do usuário que contêm caminhos de arquivo ou diretório. Os passos típicos de um ataque de Directory Traversal incluem:

- Identificação da Vulnerabilidade: O atacante identifica campos de entrada, como URLs ou parâmetros, onde caminhos de arquivo ou diretório são usados sem validação adequada.

- Inserção de Caminho Manipulado: O invasor insere um caminho de arquivo manipulado que contém sequências de caracteres que levam o aplicativo a acessar diretórios não autorizados.

- Acesso aos Arquivos/Diretórios: O aplicativo web incorpora o caminho de arquivo manipulado em uma operação de leitura ou inclusão de arquivo, permitindo que o invasor acesse informações fora da área designada. 


* Exemplos de ataques de Directory Traversal:

Um invasor altera uma URL, substituindo o caminho original por ../etc/passwd para tentar ler o arquivo de senhas do sistema.

Em um aplicativo de upload de arquivo, o atacante envia um arquivo com um nome que inclui ../ para tentar colocar o arquivo em um diretório sensível ou sobrescrever arquivos importantes.


# Prevenção e Mitigação de Directory Traversal

* A prevenção e a mitigação de ataques de Directory Traversal são importantes aliados para garantir a segurança de aplicativos web. Validar e filtrar rigorosamente as entradas do usuário, utilizar caminhos relativos, configurar permissões adequadas no sistema de arquivos e implementar medidas de segurança são passos cruciais para evitar que invasores acessem ou modifiquem informações sensíveis ou executem código malicioso. A seguir estão as principais medidas de prevenção e mitigação de Directory Traversal:

- Validação Estrita: Valide e filtre rigorosamente todas as entradas de dados fornecidas pelos usuários que contêm caminhos de arquivo ou diretório. Certifique-se de que os caminhos sejam relativos e não permita caracteres especiais ou sequências que levem a travessias de diretório.

- Utilização de Caminhos Relativos: Sempre use caminhos relativos em vez de caminhos absolutos para acessar arquivos ou diretórios. Isso ajuda a evitar que os invasores acessem áreas não autorizadas do sistema de arquivos.

- Restrições de Acesso: Configure permissões de sistema de arquivos adequadas para restringir o acesso a arquivos e diretórios apenas às operações necessárias.

- Sanitização de Caminhos: Implemente uma função de sanitização que remova qualquer sequência ../ ou caracteres de escape de caminho antes de processar os caminhos.

- Listas de Permissões (Whitelists): Use listas de permissões que definam quais caminhos são permitidos e restrinjam todas as outras entradas.

- Limitação de Caracteres Especiais: Evite permitir caracteres especiais ou codifique-os de maneira adequada para que não sejam interpretados como parte de um caminho de diretório.

# Exemplo Prático de Prevenção:

- def validar_caminho(caminho): diretorio_permitido = '/caminho/permitido/' caminho_completo = os.path.abspath(os.path.join(diretorio_permitido, caminho)) if caminho_completo.startswith(diretorio_permitido): return caminho_completo else: raise Exception("Acesso não autorizado ao diretório.")