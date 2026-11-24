# EscolaDB — Sistema de Gerenciamento Escolar

## Sobre o projeto

O **EscolaDB** é um projeto educacional de banco de dados relacional em MySQL, destinado a modelar informações acadêmicas, administrativas e financeiras de uma instituição de ensino. O esquema contempla alunos, responsáveis, professores, funcionários, turmas, disciplinas, matrículas, notas, frequências e pagamentos.

## Tecnologias

| Tecnologia | Utilização |
|---|---|
| MySQL 8.4.9 | Sistema gerenciador de banco de dados usado no projeto |
| MySQL Workbench | Administração e execução de consultas |
| SQL | Definição do esquema, dados de exemplo e consultas |
| Git / GitHub | Versionamento e documentação |

## Estrutura do banco de dados

O esquema contém **15 tabelas**, **81 colunas** e **14 chaves estrangeiras**.

### Pessoas e relacionamentos

| Tabela | Descrição |
|---|---|
| `alunos` | Cadastro dos alunos |
| `responsaveis` | Cadastro dos responsáveis |
| `aluno_responsavel` | Associação entre alunos e responsáveis |
| `professores` | Cadastro dos professores |
| `funcionarios` | Cadastro dos funcionários |

### Estrutura acadêmica

| Tabela | Descrição |
|---|---|
| `anos_letivos` | Anos letivos |
| `turmas` | Turmas vinculadas a um ano letivo |
| `disciplinas` | Disciplinas oferecidas |
| `turma_disciplina` | Associação entre turma, disciplina e professor |

### Matrículas e aprendizagem

| Tabela | Descrição |
|---|---|
| `matriculas` | Matrículas de alunos em turmas |
| `matricula_disciplina` | Disciplinas associadas a cada matrícula |
| `notas` | Avaliações e notas |
| `frequencias` | Presença e faltas por aula |

### Financeiro

| Tabela | Descrição |
|---|---|
| `mensalidades` | Mensalidades vinculadas às matrículas |
| `pagamentos` | Pagamentos associados às mensalidades |

O modelo utiliza chaves primárias e estrangeiras, restrições `UNIQUE` e `CHECK`, tabelas associativas para relações muitos-para-muitos e o mecanismo InnoDB.

## Scripts e carga do banco

Os scripts de criação e carga estão separados por tabela em `escoladb.sql/`. Eles incluem comandos `DROP TABLE IF EXISTS` e substituem as tabelas correspondentes ao serem executados. **Faça backup antes de executar em um banco com dados que deseja preservar.**

Crie o banco uma vez:

```sql
CREATE DATABASE escoladb
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_0900_ai_ci;
```

Em seguida, no Bash, execute os arquivos nesta ordem, que respeita as dependências de chaves estrangeiras. O comando solicita a senha do usuário MySQL:

```bash
for arquivo in \
  escoladb.sql/escoladb_alunos.sql \
  escoladb.sql/escoladb_responsaveis.sql \
  escoladb.sql/escoladb_professores.sql \
  escoladb.sql/escoladb_funcionarios.sql \
  escoladb.sql/escoladb_anos_letivos.sql \
  escoladb.sql/escoladb_disciplinas.sql \
  escoladb.sql/escoladb_turmas.sql \
  escoladb.sql/escoladb_aluno_responsavel.sql \
  escoladb.sql/escoladb_matriculas.sql \
  escoladb.sql/escoladb_turma_disciplina.sql \
  escoladb.sql/escoladb_mensalidades.sql \
  escoladb.sql/escoladb_matricula_disciplina.sql \
  escoladb.sql/escoladb_pagamentos.sql \
  escoladb.sql/escoladb_frequencias.sql \
  escoladb.sql/escoladb_notas.sql
do
  mysql -u seu_usuario -p escoladb < "$arquivo" || exit 1
done
```

O arquivo `escoladb.sql/listas _de _exercícios _query.sql` contém consultas didáticas para executar depois da carga. Os scripts SQL pressupõem MySQL compatível com a collation `utf8mb4_0900_ai_ci` usada pelo MySQL 8.

## Recursos SQL demonstrados

`CREATE TABLE`, `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `CHECK`, `DEFAULT`, `INSERT`, `SELECT`, `WHERE`, `ORDER BY`, `JOIN`, `COUNT`, `AVG`, `GROUP BY`, `HAVING` e `ROUND`.

## Dados e privacidade

Os scripts incluem registros de exemplo com dados pessoais e informações de contato/salário. Não é possível confirmar apenas pelo repositório que todos os valores são fictícios. Antes de compartilhar ou publicar os scripts, confirme a origem dos dados e substitua ou anonimize qualquer informação real; não use esses registros como dados de produção.

## Finalidade educacional

Este projeto foi desenvolvido para praticar modelagem relacional, integridade referencial e consultas SQL. Não deve ser tratado como sistema pronto para uso em produção.
