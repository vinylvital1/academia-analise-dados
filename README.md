# Projeto Academia: análise de aulas experimentais

Sistema criado para registrar aulas experimentais e acompanhar a conversão de visitantes em alunos de uma academia.

Os dados permitem saber quanto tempo, em média, um visitante leva para fazer a matrícula, quais consultores apresentam as melhores taxas de conversão e quais modalidades recebem mais procura.

## Tecnologias

- MySQL
- SQL
- Python

## Banco de dados

O banco possui três tabelas principais.

### `visitantes`

Reúne os dados de cada visitante, desde o primeiro contato até uma possível matrícula.

| Campo | Descrição |
|---|---|
| `id_visitante` | Identificador do visitante |
| `nome` | Nome do visitante |
| `telefone` | Telefone para contato |
| `dt_visita` | Data da visita |
| `dt_aula` | Data da aula experimental |
| `horario` | Horário da aula |
| `modalidade_id` | Modalidade escolhida |
| `consultor_id` | Consultor responsável pelo atendimento |
| `matriculou` | Indica se o visitante fez a matrícula |
| `dt_matricula` | Data da matrícula |

### `modalidades`

Armazena as modalidades oferecidas pela academia.

| Campo | Descrição |
|---|---|
| `id_modalidade` | Identificador da modalidade |
| `nome` | Nome da modalidade |

### `consultores`

Armazena os consultores responsáveis pelos atendimentos.

| Campo | Descrição |
|---|---|
| `id_consultor` | Identificador do consultor |
| `nome` | Nome do consultor |

## Relacionamentos

A tabela `visitantes` ocupa a posição central no banco de dados e possui dois relacionamentos:

- `modalidade_id` referencia a tabela `modalidades`;
- `consultor_id` referencia a tabela `consultores`.

## Indicadores analisados

Com os dados registrados, é possível acompanhar:

- número de aulas experimentais;
- número de matrículas;
- taxa de conversão;
- desempenho por consultor;
- desempenho por modalidade;
- tempo médio entre a visita e a matrícula.

## Como funciona

Os consultores cadastram os visitantes em uma interface desenvolvida em HTML e CSS. O sistema envia os dados ao banco MySQL, onde eles ficam disponíveis para análise por meio de consultas SQL.

## Uso em ambiente real

O projeto foi desenvolvido e implementado em uma academia e continua em uso. A empresa formalizou sua utilização em uma declaração de implementação.


[📄 Ver declaração de implementação](docs/projeto_academia.sql.pdf)