# Automação com o Uso de Scripting

* Este tópico destaca a importância da automação na simplificação de tarefas repetitivas e na melhoria da eficiência operacional em ambientes de desenvolvimento e administração de sistemas. Vamos explorar o uso de Python e PowerShell, duas linguagens populares para automação:

- Ambiente de Scripts em Python

- Introdução ao Python: Python é uma linguagem de programação de alto nível conhecida por sua simplicidade e legibilidade de código. É amplamente utilizado em automação de tarefas, desenvolvimento web, análise de dados e muito mais. Sua ampla gama de bibliotecas e módulos facilita a automação de diversas tarefas.

- Exemplo de script Python para automação: Um exemplo comum de automação em Python é a criação de scripts para automatizar a tarefa de backup de arquivos, manipulação de dados, extração de informações de logs ou até mesmo automação de tarefas de rotina de administração de sistemas. Abaixo, segue um exemplo simples de um script Python para copiar arquivos de um diretório para outro:

```
import shutil
# Origem e destino dos arquivos
origem = '/caminho/para/a/pasta/origem'
destino = '/caminho/para/a/pasta/destino'
# Copia todos os arquivos da origem para o destino
shutil.copytree(origem, destino)
```

# Ambiente de Scripts PowerShell

- Introdução ao PowerShell: O PowerShell é uma linguagem de script desenvolvida pela Microsoft, projetada para automatizar tarefas administrativas em sistemas Windows. Ele oferece acesso a uma ampla variedade de comandos e recursos do sistema operacional, bem como a capacidade de interagir com aplicativos e serviços.

- Exemplo de script PowerShell para automação: Um exemplo típico de uso do PowerShell é a criação de scripts para gerenciamento de usuários, instalação de software em massa ou coleta de informações do sistema. Aqui está um exemplo simples de um script PowerShell que lista todos os processos em execução em um sistema:


```
# Obtém a lista de processos em execução
$processos = Get-Process
# Exibe o nome e o ID do processo
foreach ($processo in $processos) {
    Write-Host "Nome do processo: $($processo.Name), ID do processo: $($processo.Id)"
}
```


# Importância da Automação

* O uso de scripts em linguagens como Python e PowerShell tornam os processos de desenvolvimento de software e administração de sistemas mais eficientes e confiáveis. A automação é uma habilidade valiosa para profissionais de TI e desenvolvedores, pois ajuda a otimizar o fluxo de trabalho e a enfrentar os desafios em ambientes tecnológicos cada vez mais complexos. A seguir estão algumas vantagens da automação em ambiente operacional:

- Eficiência: A automação permite que tarefas repetitivas sejam executadas de forma rápida e consistente, economizando tempo e reduzindo erros humanos.

- Escalabilidade: À medida que sistemas e redes crescem, a automação ajuda a lidar com a complexidade, permitindo a gestão de um grande número de recursos de forma eficaz.

- Padronização: A automação garante que tarefas sejam executadas de acordo com procedimentos predefinidos, garantindo consistência e conformidade com políticas de segurança e procedimentos.

- Monitoramento e Reação em Tempo Real: Scripts de automação podem ser usados para monitorar sistemas e tomar medidas automáticas quando problemas são detectados, aumentando a resiliência do sistema.

- Redução de Erros: A automação reduz a probabilidade de erros humanos, melhorando a qualidade e a confiabilidade das operações.