# Portfólio de Estudos em Bancos de Dados

Este repositório reúne estudos e projetos de bancos de dados relacionais, com foco em modelagem, integridade e SQL. Os arquivos PostgreSQL e SQL Server adicionados neste portfólio contêm **somente estrutura**, sem linhas de dados.

## Organização e evolução

Os materiais estão separados por tecnologia e por projeto. A evolução documentada nesta revisão foi validar os esquemas recebidos, preservar as regras existentes, remover os registros dos anexos antes de preparar cópias publicáveis e corrigir triggers SQL Server que não tratavam corretamente alterações em múltiplas linhas. Os estudos seguem em evolução; pontos que dependem de regra de negócio estão registrados nos READMEs.

## Tecnologias e projetos

- [PostgreSQL](postgresql/README.md) — esquema do projeto `data_science`.
- [SQL Server](sql-server/README.md) — esquema derivado do pacote `Banco_Empresa.bacpac`; o pacote original não é publicado.
- **MySQL (conteúdo preexistente):** [EscolaDB](#projeto-escoladb--mysql) e [Comercio_db](Comercio_db/README.md) permanecem nos caminhos atuais e fora desta reorganização.

> Os dados de exemplo dos anexos PostgreSQL e SQL Server foram excluídos das versões publicáveis por conterem informações pessoais aparentes. O BACPAC original não está no repositório.

---

## Projeto EscolaDB — MySQL

## 📌 Sobre o projeto

O **EscolaDB** é um projeto de banco de dados relacional desenvolvido com **MySQL**, criado para representar a estrutura de dados de uma instituição de ensino.

O projeto foi desenvolvido com foco na aplicação prática de conceitos de **modelagem de dados, relacionamentos entre entidades, integridade referencial e consultas SQL**.

A estrutura contempla diferentes áreas de uma instituição escolar, incluindo:

- 👨‍🎓 Alunos
- 👨‍👩‍👧 Responsáveis
- 👨‍🏫 Professores
- 👷 Funcionários
- 🏫 Turmas
- 📚 Disciplinas
- 📝 Matrículas
- 📊 Notas
- 📅 Frequências
- 💰 Mensalidades
- 💳 Pagamentos

O objetivo é simular uma estrutura de banco de dados utilizada por um sistema de gerenciamento escolar, permitindo trabalhar com informações acadêmicas, administrativas e financeiras.

---

## 🎯 Objetivos

O projeto tem como principais objetivos:

- Desenvolver um banco de dados relacional estruturado.
- Aplicar conceitos de modelagem de dados.
- Criar relacionamentos entre diferentes entidades.
- Utilizar chaves primárias e estrangeiras.
- Aplicar restrições para garantir a integridade dos dados.
- Praticar comandos SQL para criação, manipulação e consulta.
- Desenvolver consultas para análise das informações.
- Organizar um projeto de banco de dados utilizando boas práticas de versionamento.

---

## 🛠️ Tecnologias utilizadas

| Tecnologia | Utilização |
|---|---|
| **MySQL 8.4.9** | Sistema gerenciador de banco de dados |
| **MySQL Workbench** | Desenvolvimento e administração do banco |
| **SQL** | Criação, manipulação e consulta dos dados |
| **Git** | Controle de versão |
| **GitHub** | Versionamento e documentação |

---

## 🗂️ Estrutura do banco

O **EscolaDB** possui **15 tabelas**, organizadas de acordo com as principais áreas do sistema.

### 👥 Pessoas e relacionamentos

| Tabela | Descrição |
|---|---|
| `alunos` | Cadastro dos alunos |
| `responsaveis` | Cadastro dos responsáveis |
| `aluno_responsavel` | Relacionamento entre alunos e responsáveis |
| `professores` | Cadastro dos professores |
| `funcionarios` | Cadastro dos funcionários |

### 🏫 Estrutura acadêmica

| Tabela | Descrição |
|---|---|
| `anos_letivos` | Organização dos anos letivos |
| `turmas` | Cadastro das turmas |
| `disciplinas` | Cadastro das disciplinas |
| `turma_disciplina` | Associação entre turmas, disciplinas e professores |

### 📚 Matrículas e aprendizagem

| Tabela | Descrição |
|---|---|
| `matriculas` | Registro das matrículas dos alunos |
| `matricula_disciplina` | Associação das matrículas às disciplinas |
| `notas` | Registro das avaliações e notas |
| `frequencias` | Controle de presença e faltas |

### 💰 Controle financeiro

| Tabela | Descrição |
|---|---|
| `mensalidades` | Controle das mensalidades |
| `pagamentos` | Registro dos pagamentos realizados |

---

## 🔗 Modelo relacional

O banco foi estruturado utilizando **chaves primárias (PK)** e **chaves estrangeiras (FK)** para estabelecer os relacionamentos entre as entidades.

Foram utilizados relacionamentos:

- **1:N — Um para muitos**
- **N:N — Muitos para muitos**

Nos relacionamentos muitos para muitos, foram utilizadas **tabelas associativas** para organizar as relações entre as entidades.

Exemplos:

```text
alunos
   │
   └── aluno_responsavel ── responsáveis

turmas
   │
   └── turma_disciplina ── disciplinas
              │
              └── professores

matriculas
   │
   └── matricula_disciplina ── disciplinas
```

A documentação visual do modelo e os arquivos relacionados ao banco estão organizados dentro das pastas correspondentes do projeto.

---

## ⚙️ Conceitos SQL aplicados

Durante o desenvolvimento foram utilizados diferentes recursos da linguagem SQL, incluindo:

### Estrutura do banco

- `CREATE DATABASE`
- `CREATE TABLE`
- `ALTER TABLE`

### Integridade

- `PRIMARY KEY`
- `FOREIGN KEY`
- `UNIQUE`
- `CHECK`
- `DEFAULT`

### Manipulação de dados

- `INSERT INTO`
- `SELECT`
- `WHERE`
- `ORDER BY`

### Consultas e análises

- `INNER JOIN`
- `COUNT()`
- `SUM()`
- `AVG()`
- `GROUP BY`
- `HAVING`
- `ROUND()`

---

## 🛡️ Integridade dos dados

O projeto utiliza recursos do MySQL para manter a consistência das informações armazenadas.

Entre eles:

- **Primary Keys** para identificação dos registros.
- **Foreign Keys** para relacionamentos entre tabelas.
- **UNIQUE** para evitar duplicidade em campos específicos.
- **CHECK** para validação de determinados valores.
- **DEFAULT** para definição de valores padrão.
- **InnoDB** para suporte a transações e integridade referencial.

---

## 📊 Informações técnicas

| Característica | Informação |
|---|---|
| **Nome do banco** | EscolaDB |
| **SGBD** | MySQL |
| **Versão** | 8.4.9 |
| **Tabelas** | 15 |
| **Colunas** | 81 |
| **Chaves estrangeiras** | 16 |

---

## 📁 Organização do projeto

A estrutura do projeto foi organizada para separar os scripts, documentação e arquivos relacionados ao banco de dados.

```text
EscolaDB/
│
├── docs/
│   └── arquivos de documentação e modelagem
│
├── scripts/
│   └── scripts SQL
│
└── README.md
```

> A estrutura acima representa a organização conceitual do projeto. Os arquivos disponíveis no repositório podem variar conforme a evolução do desenvolvimento.

---

## 🚀 Próximas etapas

- [ ] Finalizar a documentação técnica.
- [ ] Organizar os scripts SQL de criação do banco.
- [ ] Documentar os dados utilizados nos testes.
- [ ] Ampliar a coleção de consultas SQL.
- [ ] Criar consultas para relatórios acadêmicos.
- [ ] Criar consultas para análises financeiras.
- [ ] Continuar aprimorando o modelo relacional.

---

## 📚 Finalidade do projeto

O **EscolaDB** foi desenvolvido com finalidade educacional e prática, como parte do processo de aprendizado e desenvolvimento de conhecimentos em **bancos de dados relacionais e SQL**.

O projeto busca demonstrar a aplicação prática de conceitos fundamentais de banco de dados por meio da construção de uma estrutura que simula um cenário real de gerenciamento escolar.

---

## 👨‍💻 Autor

**Henrique Oliveira**

Estudante de **Análise e Desenvolvimento de Sistemas**, com foco em desenvolvimento utilizando **Python, backend, APIs, bancos de dados e automação de processos**.

---

⭐ Projeto desenvolvido para estudo, prática e construção de portfólio em desenvolvimento de software e banco de dados.
