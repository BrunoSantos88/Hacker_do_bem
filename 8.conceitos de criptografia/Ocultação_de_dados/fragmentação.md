# Fragmentação

* Refere-se à divisão de um dado em partes menores, conhecidas como fragmentos, antes de aplicar a criptografia. Essa técnica é utilizada principalmente para melhorar a segurança e proteção dos dados, especialmente em ambientes onde a transmissão ou armazenamento dos dados pode ser sujeita a interceptação ou ataques.

* Ao fragmentar os dados, o conteúdo original é dividido em várias partes menores, geralmente de tamanho fixo, e cada fragmento é criptografado separadamente. Isso dificulta a reconstituição dos dados originais sem ter acesso a todos os fragmentos e a chave de criptografia correta. Além disso, a fragmentação pode contribuir para uma distribuição mais uniforme dos dados criptografados, tornando mais difícil a análise e identificação de padrões pelos atacantes.

* Um exemplo prático de fragmentação é a criptografia de um arquivo grande. Em vez de criptografar o arquivo como um todo, ele pode ser dividido em partes menores, como blocos de tamanho fixo. Cada bloco é criptografado separadamente e os fragmentos resultantes são transmitidos ou armazenados de forma separada. Assim, mesmo se um fragmento for interceptado por um atacante, ele terá apenas uma parte criptografada dos dados e não poderá obter acesso ao arquivo completo sem ter todos os fragmentos e a chave de criptografia adequada.


# Marcação e ocultação em metadados


* Refere-se a técnicas utilizadas para adicionar informações extra aos dados, conhecidas como metadados, a fim de fornecer contexto ou ocultar informações sensíveis. Os metadados são informações que descrevem outros dados, como informações sobre o autor, data de criação, localização, entre outros.

* A marcação em metadados envolve adicionar informações relevantes aos dados de forma visível, que podem ser lidas e interpretadas por qualquer pessoa que tenha acesso a eles. Por exemplo, em um documento de texto, é possível adicionar metadados como o nome do autor, a versão do documento, as alterações realizadas, entre outros. Essas informações podem ser úteis para rastrear o histórico do documento e identificar a autoria.

* Já a ocultação em metadados envolve a adição de informações ocultas nos dados, que não são visíveis inicialmente. Essas informações podem ser usadas para diversos fins, como marcar informações confidenciais, identificar o autor de um documento de forma anônima ou rastrear a origem de uma informação vazada. Esses metadados ocultos não são facilmente acessíveis e podem exigir ferramentas especiais para serem extraídos.

* Um exemplo prático de marcação e ocultação em metadados é a adição de informações confidenciais em arquivos de imagem. Suponha que você deseje enviar uma imagem por e-mail, mas deseja ocultar informações sensíveis contidas nela. Você pode usar uma ferramenta de edição de imagens para adicionar metadados ocultos, como texto ou uma marca d'água, que não são visíveis na imagem, mas podem ser extraídos posteriormente. Dessa forma, você pode compartilhar a imagem sem revelar as informações confidenciais a olho nu, mas mantendo-as presentes para quem souber como acessá-las.