# 🏫 EscolaDB — Sistema de Gerenciamento Escolar

![MySQL](https://img.shields.io/badge/MySQL-8.4.9-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Database](https://img.shields.io/badge/Database-Relational-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Em%20desenvolvimento-orange?style=for-the-badge)

## 📌 Sobre o projeto

O **EscolaDB** é um projeto de banco de dados relacional desenvolvido com MySQL, com o objetivo de estruturar e organizar informações de uma instituição de ensino.

O banco foi projetado para representar diferentes áreas do ambiente escolar, incluindo alunos, responsáveis, professores, funcionários, turmas, disciplinas, matrículas, notas, frequências e controle financeiro.

O projeto tem como finalidade aplicar conceitos de modelagem de dados, integridade referencial e consultas SQL, simulando a estrutura de dados de um sistema de gerenciamento escolar.

## 🎯 Objetivos

- Desenvolver uma estrutura de banco de dados relacional.
- Organizar informações acadêmicas e administrativas.
- Implementar relacionamentos entre diferentes entidades.
- Aplicar chaves primárias e estrangeiras.
- Utilizar restrições para garantir a integridade dos dados.
- Desenvolver consultas SQL para extração e análise de informações.

## 🛠️ Tecnologias utilizadas

| Tecnologia | Utilização |
|---|---|
| MySQL 8.4.9 | Sistema gerenciador de banco de dados |
| MySQL Workbench | Administração e execução de consultas SQL |
| SQL | Criação, manipulação e consulta de dados |
| Git / GitHub | Versionamento e documentação do projeto |

## 🗂️ Estrutura do banco de dados

O EscolaDB possui **15 tabelas**, organizadas para representar diferentes áreas de uma instituição escolar.

### 1. Pessoas e relacionamentos

| Tabela | Descrição |
|---|---|
| `alunos` | Cadastro dos alunos |
| `responsaveis` | Cadastro dos responsáveis |
| `aluno_responsavel` | Relacionamento entre alunos e responsáveis |
| `professores` | Cadastro dos professores |
| `funcionarios` | Cadastro dos funcionários |

### 2. Estrutura acadêmica

| Tabela | Descrição |
|---|---|
| `anos_letivos` | Organização dos anos letivos |
| `turmas` | Cadastro das turmas |
| `disciplinas` | Cadastro das disciplinas |
| `turma_disciplina` | Associação entre turmas, disciplinas e professores |

### 3. Matrículas e aprendizagem

| Tabela | Descrição |
|---|---|
| `matriculas` | Registro das matrículas dos alunos |
| `matricula_disciplina` | Associação das matrículas às disciplinas |
| `notas` | Registro das avaliações e notas |
| `frequencias` | Controle de presença e faltas |

### 4. Financeiro

| Tabela | Descrição |
|---|---|
| `mensalidades` | Controle das mensalidades |
| `pagamentos` | Registro dos pagamentos realizados |

## 🔗 Modelo relacional

O banco utiliza relacionamentos entre entidades por meio de chaves primárias (PK) e chaves estrangeiras (FK).

O modelo contempla relacionamentos de um para muitos (1:N) e muitos para muitos (N:N), utilizando tabelas associativas quando necessário.

O relacionamento entre alunos e responsáveis, por exemplo, é representado pela tabela `aluno_responsavel`.

A associação entre turmas, disciplinas e professores é realizada pela tabela `turma_disciplina`.

### Diagrama entidade-relacionamento (DER)

O diagrama apresenta a estrutura das tabelas e seus relacionamentos.

**Arquivo:** `docs/EscolaDB_Diagrama_ER.png`

> Após adicionar o arquivo à pasta `docs`, ele poderá ser exibido aqui:

![Diagrama ER do EscolaDB](docs/EscolaDB_Diagrama_ER.png)

## ⚙️ Recursos SQL aplicados

Durante o desenvolvimento e os exercícios do projeto, foram trabalhados os seguintes recursos:

- `CREATE DATABASE` e `CREATE TABLE`
- `ALTER TABLE`
- `PRIMARY KEY`
- `FOREIGN KEY`
- `UNIQUE`
- `CHECK`
- `DEFAULT`
- `INSERT INTO`
- `SELECT`
- `WHERE`
- `ORDER BY`
- `INNER JOIN`
- `COUNT()`
- `SUM()`
- `AVG()`
- `GROUP BY`
- `HAVING`
- `ROUND()`

## 🛡️ Integridade e organização dos dados

O projeto utiliza mecanismos de integridade do MySQL, incluindo:

- Chaves primárias para identificação dos registros.
- Chaves estrangeiras para estabelecer relacionamentos.
- Restrições `UNIQUE` para evitar duplicidade em campos específicos.
- Restrições `CHECK` para validação de valores.
- Engine InnoDB para suporte a transações e integridade referencial.

## 📊 Informações técnicas

| Característica | Informação |
|---|---|
| Nome do banco | EscolaDB |
| SGBD | MySQL |
| Versão utilizada | 8.4.9 |
| Quantidade de tabelas | 15 |
| Quantidade de colunas | 81 |
| Referências de chaves estrangeiras | 16 |

## 🚀 Próximas etapas

- [ ] Finalizar a documentação técnica do banco.
- [ ] Organizar os scripts SQL de criação das tabelas.
- [ ] Documentar os dados de teste.
- [ ] Ampliar a coleção de consultas SQL.
- [ ] Desenvolver consultas para relatórios acadêmicos e financeiros.
- [ ] Continuar aprimorando o modelo relacional.

## 📚 Finalidade educacional

Este projeto foi desenvolvido com finalidade educacional, como parte do processo de estudo e prática de banco de dados relacionais e linguagem SQL.

---

**EscolaDB** — Projeto de banco de dados relacional desenvolvido com MySQL.

