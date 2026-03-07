# Desafio SDLC 1 — Documentação Completa

Este desafio abrange o **Ciclo de Vida do Desenvolvimento de Software (SDLC)**, cobrindo sua definição, história, fases, objetivos, benefícios, modelos tradicionais e ágeis, papéis e responsabilidades das equipes.

---

## Sumário

1. [Estrutura de Pastas](#estrutura-de-pastas)
2. [O que é SDLC](#o-que-é-sdlc)
3. [História e Evolução do SDLC](#história-e-evolução-do-sdlc)
4. [Fases do SDLC](#fases-do-sdlc)
5. [Objetivos do SDLC](#objetivos-do-sdlc)
6. [Benefícios do SDLC](#benefícios-do-sdlc)
7. [Modelos de SDLC](#modelos-de-sdlc)
   - [Cascata (Waterfall)](#cascata-waterfall)
   - [Iterativo e Incremental](#iterativo-e-incremental)
   - [Espiral](#espiral)
   - [Modelo em V](#modelo-em-v)
   - [Ágil](#ágil)
   - [DevOps](#devops)
8. [Frameworks Ágeis](#frameworks-ágeis)
   - [Scrum](#scrum)
   - [Kanban](#kanban)
   - [Extreme Programming (XP)](#extreme-programming-xp)
   - [Feature-Driven Development (FDD)](#feature-driven-development-fdd)
   - [Lean Software Development](#lean-software-development)
   - [DSDM](#dynamic-systems-development-method-dsdm)
9. [Tabela Comparativa dos Modelos](#tabela-comparativa-dos-modelos)
10. [Papeis e Responsabilidades](#papeis-e-responsabilidades)
11. [Resumo e Conclusão](#resumo-e-conclusão)
12. [Referências](#referências)

---

## Estrutura de Pastas

```
desafio_sdlc_1/
├── README.md                                      # Esta documentação
├── introdução SDLC/
│   ├── Fases do SDLC.md                           # As 7 fases do ciclo de vida
│   ├── História e Evolução do SDLC.md             # Contexto histórico
│   ├── Referências.md                             # Fontes bibliográficas
│   ├── Definição de SDLC/
│   │   ├── Definição de SDLC.md                   # Conceito principal
│   │   ├── Objetivos e Benefícios do SDLC.md      # Objetivos consolidados
│   │   ├── Garantir a Entrega de Software...md    # Qualidade de entrega
│   │   ├── Gerenciamento de Riscos.md             # Gestão de riscos
│   │   ├── Facilitar a colaboração...md           # Colaboração entre equipes
│   │   └── Cumprir os Prazos Estabelecidos.md    # Gestão de prazos
│   ├── Benefícios do SDLC/
│   │   └── Benefícios do SDLC.md                 # Controle de qualidade e eficiência
│   ├── Modelos SDLC/
│   │   ├── Modelos SDLC.md                        # Visão geral dos modelos
│   │   └── Modelo DevOps.md                       # Modelo DevOps detalhado
│   └── Papeis e Responsabilidade/
│       └── responsabilidade.md                    # Papeis das equipes
└── Modelos de SDLC/
    ├── objetivo.md                                # Objetivos de aprendizado
    ├── Resumo.md                                  # Resumo e conclusão
    ├── tabela_comparativas.md                     # Tabela HTML comparativa
    ├── Modelo Cascata.md                          # Waterfall
    ├── Modelo Espiral.md                          # Espiral
    ├── Modelo em V.md                             # Modelo V
    ├── Modelo Iterativo e Incremental.md          # Incremental
    ├── Modelo Ágil.md                             # Ágil
    └── tipos_modelos_agil/
        ├── scrum.md                               # Framework Scrum
        ├── Kanban.md                              # Método Kanban
        ├── Extreme Programming (XP).md            # XP
        ├── Feature-Driven Development (FDD).md   # FDD
        ├── Lean Software Development.md           # Lean
        └── Dynamic Systems Development Method (DSDM).md  # DSDM
```

---

## O que é SDLC

O **SDLC (Software Development Life Cycle)** — Ciclo de Vida do Desenvolvimento de Software — é um conjunto estruturado de fases e processos que guia o desenvolvimento de software desde a concepção da ideia até a entrega final e manutenção.

Ele funciona como um roteiro que define:
- **O que fazer** em cada etapa do desenvolvimento
- **Como estruturar** o processo para garantir qualidade
- **Como organizar** as equipes e os recursos disponíveis

O SDLC cobre as seguintes etapas:
1. Entendimento dos requisitos
2. Design da solução
3. Codificação
4. Testes e validação
5. Implantação
6. Manutenção contínua

---

## História e Evolução do SDLC

| Período     | Marco                                                                                  |
|-------------|----------------------------------------------------------------------------------------|
| 1960–1970   | Desenvolvimento sem metodologia formal; foco em programação pura                       |
| 1970–1980   | Surgimento do conceito de SDLC com fases bem definidas                                 |
| 1980        | Modelos formais como o **Cascata (Waterfall)** e o **RAD** ganham popularidade         |
| 1990–2000   | Limitações dos modelos tradicionais ficam evidentes; surge o movimento **Ágil**        |
| 2000–2010   | Frameworks ágeis como **Scrum** e **Kanban** se consolidam                             |
| 2010–hoje   | **DevOps** emerge como evolução natural, unindo desenvolvimento e operações            |

A evolução reflete a necessidade contínua de entregar software com mais qualidade, mais rápido e com maior capacidade de adaptação às mudanças.

---

## Fases do SDLC

### 1. Planejamento
Identificação das necessidades do cliente, definição de objetivos, levantamento de restrições e elaboração do cronograma.

### 2. Análise
Avaliação detalhada dos requisitos, análise de riscos e definição da arquitetura do software.

### 3. Design
Criação do design detalhado: especificações técnicas e funcionais, interfaces de usuário, ferramentas e estrutura do sistema.

### 4. Desenvolvimento
Codificação e construção do software seguindo o plano de design, com testes unitários durante a implementação.

### 5. Testes
Validação do software através de:
- Testes funcionais
- Testes de integração
- Testes de desempenho
- Testes de segurança

### 6. Implantação
Instalação do software em produção, configuração de parâmetros, migração de dados, testes finais e treinamento dos usuários finais.

### 7. Manutenção
Monitoramento contínuo em produção, correção de erros, atualizações e melhorias para atender às necessidades em constante mudança.

```
[Planejamento] --> [Analise] --> [Design] --> [Desenvolvimento]
      ^                                              |
      |                                              v
[Manutencao] <-- [Implantacao] <-- [Testes] <-------+
```

---

## Objetivos do SDLC

### Garantir a Entrega de Software de Qualidade
Investir em testes contínuos para identificar e corrigir bugs antes que cheguem ao usuário final. A qualidade não é um evento único, mas um processo contínuo de avaliação e aprimoramento.

### Gerenciar o Desenvolvimento de Forma Eficiente
Alinhar todas as etapas do processo, garantindo que a equipe trabalhe em sincronia. Envolve planejamento, acompanhamento e comunicação eficaz, resultando em desenvolvimento sem retrabalho.

### Cumprir os Prazos Estabelecidos
Um SDLC bem estruturado permite:
- Identificar possíveis atrasos antecipadamente
- Tomar medidas corretivas antes que se tornem críticos
- Entregar o software no prazo acordado com qualidade

### Facilitar a Colaboração e Comunicação
O SDLC fornece estruturas e processos que garantem que todas as equipes estejam alinhadas e trabalhando em direção aos mesmos objetivos, evitando retrabalho e minimizando erros.

---

## Benefícios do SDLC

### Controle de Qualidade
Práticas e testes integrados em cada fase garantem que o software seja funcional, estável e livre de bugs antes de chegar ao usuário.

### Eficiência e Produtividade
- Definicao de etapas bem estruturadas
- Uso de ferramentas adequadas
- Fluxo contínuo de trabalho
- Identificação de gargalos e áreas de melhoria
- Automação de tarefas repetitivas

### Gerenciamento de Riscos
- Identificação precoce de riscos
- Medidas preventivas para minimizar problemas
- Reducao de custos evitando retrabalho futuro
- Software mais seguro e robusto

### Comunicação e Colaboração
- Canal aberto entre equipes para troca de informacoes
- Alinhamento constante de metas e prioridades
- Cultura de colaboração que melhora o resultado final

---

## Modelos de SDLC

### Cascata (Waterfall)

Abordagem **sequencial** onde cada fase é completada antes de iniciar a próxima.

```
[Planejamento] --> [Analise] --> [Design] --> [Desenvolvimento] --> [Testes] --> [Implantacao] --> [Manutencao]
```

**Vantagens:**
- Simples de entender e seguir
- Estrutura clara e bem documentada
- Ideal quando os requisitos estão bem definidos desde o início

**Desvantagens:**
- Pouca flexibilidade para mudancas de requisitos
- Cliente só vê o resultado no final
- Erros encontrados tardiamente são caros de corrigir

**Melhor uso:** Projetos com requisitos estáveis e bem definidos.

---

### Iterativo e Incremental

Divide o projeto em **incrementos menores** entregues ao cliente em etapas. Cada incremento é um software funcional com um conjunto limitado de recursos.

```
[Incremento 1] --> [Incremento 2] --> [Incremento 3] --> [Produto Final]
     |                  |                  |
  Feedback           Feedback           Feedback
```

**Vantagens:**
- Resultados visíveis mais rapidamente
- Flexibilidade para mudancas a cada incremento
- Riscos mais controlados
- Maior participação e visibilidade do cliente

**Desvantagens:**
- Difícil estimar tempo e custo total do projeto
- Requer bom gerenciamento de projeto

**Melhor uso:** Projetos em que o cliente quer resultados rápidos e pode fornecer feedback constante.

---

### Espiral

Combina elementos do **Cascata** com o **Iterativo**, repetindo ciclos de planejamento, análise de riscos, engenharia e avaliação.

```
       Planejamento
          |
Avaliacao --> Analise de Riscos
          |
       Engenharia
          |
     (proxima volta)
```

**Vantagens:**
- Excelente para projetos complexos
- Alta flexibilidade para mudancas
- Gerenciamento ativo de riscos a cada ciclo
- Interação contínua com o cliente

**Desvantagens:**
- Pode demandar mais tempo e recursos
- Mais complexo de implementar e gerenciar
- Requer habilidades avancadas de gestao de riscos

**Melhor uso:** Projetos complexos de grande escala com alto risco de falhas.

---

### Modelo em V

Evolução do Cascata que **integra testes em cada fase** de desenvolvimento. O formato em "V" representa a relação entre as fases de desenvolvimento e as fases de testes.

```
Requisitos -----------------------> Testes de Aceitacao
  Analise -----------------------> Testes de Sistema
    Design -----------------> Testes de Integracao
      Codificacao ------> Testes Unitarios
              (centro do V)
```

**Vantagens:**
- Estrutura clara com etapas bem definidas
- Identificação precoce de problemas
- Qualidade é prioridade em cada fase

**Desvantagens:**
- Rigidez diante de mudancas de requisitos
- Pode ser mais demorado

**Melhor uso:** Projetos onde a qualidade é primordial e os requisitos são estáveis.

---

### Ágil

Abordagem **flexível e iterativa** com foco em entrega contínua de valor, colaboração e adaptação rápida a mudancas.

**Características principais:**
- Entregas em iterações curtas (sprints)
- Colaboração constante entre equipe e cliente
- Priorização das funcionalidades mais importantes
- Transparência e comunicação eficaz
- Feedback contínuo e adaptação

**Vantagens:**
- Alta flexibilidade para mudancas
- Entrega contínua de valor ao cliente
- Transparência em todo o processo
- Comunicação eficiente entre as equipes

**Desvantagens:**
- Falta de documentação detalhada pode dificultar manutenção futura
- Requer envolvimento ativo e constante do cliente
- Exige equipe experiente e autogerenciada

**Melhor uso:** Projetos com requisitos flexíveis e necessidade de entregas frequentes.

---

### DevOps

Modelo que **elimina as barreiras** entre as equipes de desenvolvimento (Dev) e operações (Ops), promovendo um ciclo contínuo e colaborativo.

**Princípios:**
- Colaboração desde o início entre Dev e Ops
- Automação de testes, build e deploy
- Integração Contínua (CI) e Entrega Contínua (CD)
- Feedback contínuo sobre o software em produção
- Melhoria contínua baseada em monitoramento

**Pipeline típico DevOps:**
```
[Commit] --> [Build] --> [Test] --> [Release] --> [Deploy] --> [Operate] --> [Monitor]
    ^                                                                            |
    +---------- Feedback Continuo -----------------------------------------------+
```

**Vantagens:**
- Entrega mais rápida e eficiente
- Menos erros por automação
- Maior estabilidade do sistema
- Resposta rápida a falhas em producao

---

## Frameworks Ágeis

### Scrum

Framework ágil organizado em **sprints** (ciclos de 2 semanas). Possui três componentes principais:

| Componente      | Descricao                                              |
|-----------------|--------------------------------------------------------|
| Product Backlog | Lista priorizada de todas as funcionalidades do produto|
| Sprint Backlog  | Tarefas selecionadas para executar no sprint atual     |
| Incremento      | Resultado funcional entregue ao final de cada sprint   |

**Papeis:**

| Papel           | Responsabilidade                                        |
|-----------------|---------------------------------------------------------|
| Product Owner   | Define prioridades e representa o cliente               |
| Scrum Master    | Facilita o processo e remove obstáculos                 |
| Time de Dev     | Executa o trabalho de forma autogerenciada              |

**Cerimônias:**
- **Daily Standup** — reunião diária rápida de alinhamento
- **Sprint Planning** — planejamento do sprint
- **Sprint Review** — apresentação do incremento ao cliente
- **Sprint Retrospective** — avaliação interna do processo

**Vantagens:** Visibilidade do progresso, entrega contínua de valor, flexibilidade e comunicação eficiente.

---

### Kanban

Método de **gerenciamento visual** baseado em um quadro com colunas que representam etapas do fluxo de trabalho.

```
+------------+-------------+----------------+----------+
|  A Fazer   | Em Progresso| Em Revisao     |  Pronto  |
+------------+-------------+----------------+----------+
| [Tarefa A] | [Tarefa C]  | [Tarefa E]     |[Tarefa F]|
| [Tarefa B] | [Tarefa D]  |                |          |
+------------+-------------+----------------+----------+
```

**Componentes:**
- Quadro com colunas (fases do fluxo)
- Cartões (representam tarefas)
- Limites de WIP (Work In Progress) por coluna

**Vantagens:** Visibilidade total do trabalho, flexibilidade, resposta rápida, reducao de sobrecarga.

**Desvantagens:** Requer boa comunicação; pode não ser eficiente para projetos complexos com prazos apertados.

---

### Extreme Programming (XP)

Abordagem ágil com foco em **colaboração intensa** e **qualidade técnica**.

**Práticas principais:**
- **Programação em par** — dois desenvolvedores trabalhando juntos no mesmo código
- **TDD (Test-Driven Development)** — testes escritos antes do código
- **Integração contínua** — builds automatizados com feedback rápido
- **Entregas em sprints curtos** — software funcional a cada iteração
- **Refatoração contínua** — melhoria constante do código

**Vantagens:** Alta qualidade de código, deteccao precoce de bugs, colaboração e compartilhamento de conhecimento.

---

### Feature-Driven Development (FDD)

Metodologia ágil focada na **entrega de funcionalidades específicas** em ciclos curtos.

**Fases do FDD:**

```
[Modelagem do Dominio] --> [Lista de Features] --> [Planejamento por Feature]
       --> [Design por Feature] --> [Implementacao por Feature]
```

**Características:**
- Trabalho organizado em torno de funcionalidades (features)
- Iterações curtas focadas em implementacao e testes de cada feature
- Estrutura clara com sequência bem definida de etapas
- Forte colaboração e compartilhamento de conhecimento

---

### Lean Software Development

Adaptação dos **princípios do Lean Manufacturing** para o desenvolvimento de software, com foco em **eliminar desperdícios** e **maximizar valor**.

**7 Princípios do Lean:**

| Princípio            | Descricao                                              |
|----------------------|--------------------------------------------------------|
| Eliminar desperdícios| Remover atividades que nao agregam valor               |
| Amplificar aprendizado| Feedback rápido e melhoria contínua                  |
| Decidir tarde        | Manter opcoes abertas o maior tempo possível           |
| Entregar rapido      | Reduzir o tempo entre desenvolvimento e entrega        |
| Respeitar pessoas    | Empoderar a equipe e promover colaboracao              |
| Ver o todo           | Otimizar o sistema como um todo                        |
| Construir com qualidade| Qualidade integrada em cada etapa                   |

---

### Dynamic Systems Development Method (DSDM)

Método ágil com foco na **entrega rápida** e na **participação ativa do cliente**.

**Características:**
- Colaboração intensa entre desenvolvedores e usuários finais
- Entrega incremental e iterativa
- Foco na viabilidade: equilibra requisitos de negócio com tempo, custo e qualidade
- Tomada de decisão rápida
- Comunicação aberta e transparente

---

## Tabela Comparativa dos Modelos

| Modelo             | Abordagem            | Flexibilidade | Risco       | Ideal para                              |
|--------------------|----------------------|---------------|-------------|-----------------------------------------|
| Cascata            | Sequencial           | Baixa         | Alto (tardio)| Projetos com requisitos fixos           |
| Incremental        | Iterativa por partes | Media         | Controlado  | Entregas rapidas com feedback constante |
| Espiral            | Iterativa com riscos | Alta          | Gerenciado  | Projetos complexos de grande escala     |
| Modelo em V        | Sequencial com testes| Baixa         | Baixo       | Qualidade como prioridade máxima        |
| Agil               | Iterativa/adaptativa | Muito Alta    | Baixo       | Requisitos flexíveis e mutáveis         |
| DevOps             | Contínua             | Alta          | Muito Baixo | Entrega contínua em producao            |

---

## Papeis e Responsabilidades

### Gerente de Projeto
Supervisiona e coordena todas as atividades do projeto. Responsável por:
- Planejamento e controle do projeto
- Alocacao de recursos
- Monitoramento do progresso
- Gerenciamento de riscos
- Garantir entrega dentro do prazo e orçamento

### Analista de Negócios
- Levanta e documenta os requisitos funcionais e nao funcionais
- Traduz as necessidades dos usuários em especificações claras
- Trabalha em estreita colaboração com os stakeholders

### Arquiteto de Software
- Projeta a estrutura e arquitetura do sistema
- Define diretrizes de design e padrões técnicos
- Toma decisões técnicas importantes
- Garante escalabilidade, segurança e manutenibilidade

### Equipe de Desenvolvimento
- Implementa o software com base nos requisitos
- Realiza testes unitários
- Segue boas práticas de codificação
- Colabora com outras equipes

### Equipe de Testes (QA)
- Projeta e executa casos de teste
- Realiza testes funcionais, de desempenho e de segurança
- Identifica e reporta bugs para correcao

### Especialista em Seguranca (DevSecOps)
- Integra segurança desde as fases iniciais do projeto
- Identifica vulnerabilidades e riscos de seguranca
- Conduz testes de seguranca e revisoes de código
- Implementa boas práticas: criptografia, autenticacao, controle de acesso e monitoramento

### Equipe de Suporte Técnico
- Fornece assistência aos usuários finais após a implantacao
- Responde a solicitacoes de suporte e resolve problemas
- Realiza atualizacoes e manutencao contínua do software

---

## Resumo e Conclusão

O SDLC é um guia estruturado que acompanha o software desde a concepção até a manutenção. Seus principais benefícios são:

- **Controle de qualidade** — software livre de erros e que atende aos requisitos
- **Eficiência e produtividade** — reducao de custos e retrabalho
- **Gerenciamento de riscos** — identificacao e prevencao de problemas futuros
- **Comunicacao e colaboracao** — alinhamento entre equipes e stakeholders

A escolha do modelo de SDLC mais adequado depende de:
- Contexto e complexidade do projeto
- Estabilidade dos requisitos
- Tamanho e experiência da equipe
- Disponibilidade do cliente para feedback
- Prazo e orcamento disponíveis

> **Modelos Tradicionais** (Cascata, V) — melhores para projetos com requisitos definidos e qualidade como prioridade.
> **Modelos Adaptáveis** (Incremental, Espiral) — melhores para projetos com riscos e mudancas ao longo do tempo.
> **Modelo Ágil** — melhor para projetos com requisitos flexíveis e entrega contínua.
> **DevOps** — melhor para integracao entre desenvolvimento e operacoes com entrega contínua em producao.

---

## Referências

- **Sommerville, I. (2016).** Engenharia de Software. Pearson. — Recurso abrangente sobre SDLC, modelos de processo, requisitos, design, teste e manutenção.

- **Elliott, S., & Strachan, R. (2004).** The lifecycle of software objects. — Perspectiva sobre o ciclo de vida dos objetos de software.

- **ISO/IEC/IEEE 12207:2017** — Systems and Software Engineering - Software Life Cycle Processes. Norma internacional com diretrizes e práticas para o ciclo de vida do software.

- **CMMI Institute** — Capability Maturity Model Integration (CMMI). Modelo de maturidade para aprimorar processos de desenvolvimento e manutenção de software.
