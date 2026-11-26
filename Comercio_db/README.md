# 🛒 comercio_db — Banco de Dados Comercial

Projeto de banco de dados relacional desenvolvido com **MySQL**, com o objetivo de representar a estrutura de um sistema de gerenciamento comercial.

O banco organiza informações de clientes, categorias, produtos, vendas e itens comercializados, utilizando relacionamentos entre tabelas, chaves primárias e chaves estrangeiras para estruturar os dados.

---

## 📌 Sobre o projeto

O `comercio_db` foi desenvolvido como projeto de estudo e prática de banco de dados relacionais, aplicando conceitos fundamentais de modelagem, organização e integridade dos dados.

A estrutura permite representar operações básicas de um ambiente comercial, relacionando clientes às vendas, produtos às categorias e produtos aos itens de cada venda.

## 🛠️ Tecnologias utilizadas

- **MySQL Community Server 8.4.9**
- **InnoDB** — mecanismo de armazenamento.
- **utf8mb4** — conjunto de caracteres.
- **MySQL Workbench** — gerenciamento e consultas ao banco de dados.

## 📊 Estrutura do banco

O banco de dados possui:

| Característica | Quantidade |
|---|---:|
| Tabelas | 5 |
| Colunas | 18 |
| Chaves primárias | 5 |
| Chaves estrangeiras | 4 |

### Tabelas

| Tabela | Descrição |
|---|---|
| `categorias` | Armazena as categorias dos produtos. |
| `clientes` | Armazena os dados dos clientes. |
| `produtos` | Registra produtos, preços, estoque e categoria. |
| `vendas` | Registra as vendas realizadas e seus clientes. |
| `itens_venda` | Relaciona os produtos às vendas e registra as quantidades. |

## 🔗 Relacionamentos

O banco possui quatro relacionamentos principais:

- `categorias` → `produtos`: uma categoria pode estar associada a vários produtos. Um produto pode não possuir categoria.
- `clientes` → `vendas`: um cliente pode realizar várias vendas.
- `vendas` → `itens_venda`: uma venda pode possuir vários itens.
- `produtos` → `itens_venda`: um produto pode aparecer em vários itens de venda.

Os relacionamentos são implementados por meio de chaves estrangeiras (`FOREIGN KEY`).

## 📁 Organização do projeto

```text
comercio_db/
│
├── README.md
│
├── comercio_db.sql
│
├── docs/
│   └── diagrama_ER.png
│
└── queries/
    └── consultas.sql
```

## ⚙️ Como utilizar o projeto

### 1. Requisitos

- MySQL Server 8.4.9 ou compatível.
- MySQL Workbench ou outro cliente MySQL.

### 2. Criar o banco de dados

```sql
CREATE DATABASE comercio_db;
```

### 3. Selecionar o banco

```sql
USE comercio_db;
```

### 4. Importar a estrutura

Após disponibilizar o arquivo `comercio_db.sql`, importe-o pelo MySQL Workbench ou pelo terminal MySQL.

O arquivo de exportação deverá conter a estrutura e, se incluídos no backup, os registros de exemplo.

## 🎯 Objetivos de aprendizagem

Este projeto permite praticar:

- Criação e organização de bancos de dados.
- Criação de tabelas e definição de colunas.
- Chaves primárias (`PRIMARY KEY`).
- Chaves estrangeiras (`FOREIGN KEY`).
- Relacionamentos entre tabelas.
- Tipos de dados do MySQL.
- Índices e integridade referencial.
- Consultas SQL e manipulação de dados.

## 🚀 Possíveis melhorias futuras

- Desenvolver consultas SQL para relatórios comerciais.
- Implementar consultas com `JOIN`, `GROUP BY` e funções de agregação.
- Aprimorar as regras de validação dos dados.
- Expandir a estrutura conforme novas necessidades do sistema.

## 👨‍💻 Autor

Projeto desenvolvido para fins de estudo e aprimoramento dos conhecimentos em **Banco de Dados e SQL**.

---

**comercio_db — Projeto de Banco de Dados Relacional com MySQL.**
