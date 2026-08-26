# Projeto Academia - Análise de Aulas Experimentais

Projeto desenvolvido para uma academia com o objetivo de controlar aulas experimentais e analisar a conversão de visitantes em alunos.

O projeto permite acompanhar o tempo médio entre a visita e a matrícula, identificar quais consultores possuem maior taxa de conversão e analisar quais modalidades são mais procuradas.

## Tecnologias utilizadas

- MySQL
- SQL
- Python

## Estrutura do banco

O banco de dados possui três tabelas principais:

### visitantes

Tabela principal do projeto, responsável por armazenar os dados das aulas experimentais e acompanhar o visitante até uma possível matrícula.

Campos:

- `id_visitante` - identificador do visitante
- `nome` - nome do visitante
- `telefone` - telefone para contato
- `dt_visita` - data da visita
- `dt_aula` - data da aula experimental
- `horario` - horário da aula
- `modalidade_id` - modalidade escolhida
- `consultor_id` - consultor responsável
- `matriculou` - informa se o visitante realizou a matrícula
- `dt_matricula` - data em que ocorreu a matrícula

### modalidades

Tabela responsável por armazenar as modalidades disponíveis na academia.

Campos:

- `id_modalidade` - identificador da modalidade
- `nome` - nome da modalidade

### consultores

Tabela responsável por armazenar os consultores responsáveis pelo atendimento.

Campos:

- `id_consultor` - identificador do consultor
- `nome` - nome do consultor

## Relacionamentos

A tabela `visitantes` é a tabela central do banco e possui relacionamento com

- `modalidades`, através de `modalidade_id`
- `consultores`, através de `consultor_id`

## Objetivos do projeto

O sistema permite analisar:

- quantidade de aulas experimentais
- quantidade de matrículas
- taxa de conversão
- desempenho por consultor
- desempenho por modalidade
- tempo médio entre visita e matrícula

## Funcionalidade

Os consultores utilizam uma interface desenvolvida em Python para cadastrar os visitantes.

Os dados são enviados para o banco MySQL e podem ser analisados por meio de consultas SQL.

## Status

Projeto aplicado em ambiente real de academia e sendo utilizado até o presente momento&#x20;

## Aplicação em ambiente real

O projeto foi desenvolvido e implementado em uma academia e está atualmente em utilização.

A implementação do sistema foi formalmente declarada pela empresa.

[📄 Ver declaração de implementação](docs/projeto_academia.sql.pdf)