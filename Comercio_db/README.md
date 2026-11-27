# ­ƒøÆ comercio_db ÔÇö Banco de Dados Comercial

Banco de dados relacional desenvolvido com **MySQL** para representar a estrutura de um sistema de gerenciamento comercial, organizando informa├º├Áes de **clientes, categorias, produtos, vendas e itens comercializados**.

O projeto aplica conceitos fundamentais de **modelagem relacional, chaves prim├írias, chaves estrangeiras, integridade referencial e relacionamentos entre entidades**, simulando a estrutura b├ísica de um ambiente comercial.

---

## ­ƒôî Sobre o projeto

O `comercio_db` foi desenvolvido como projeto de **estudo e pr├ítica de Banco de Dados e SQL**, com foco na constru├º├úo de uma estrutura relacional organizada e coerente.

A modelagem permite representar o fluxo b├ísico de uma opera├º├úo comercial:

**Categoria ÔåÆ Produto ÔåÆ Item da Venda ÔåÆ Venda ÔåÉ Cliente**

Dessa forma, os dados s├úo distribu├¡dos entre diferentes tabelas e conectados por meio de relacionamentos, evitando a duplica├º├úo desnecess├íria de informa├º├Áes e facilitando a consulta e manuten├º├úo dos dados.

---

## ­ƒøá´©Å Tecnologias e recursos

- **MySQL Community Server 8.4.9**
- **MySQL Workbench**
- **InnoDB** ÔÇö mecanismo de armazenamento
- **utf8mb4** ÔÇö conjunto de caracteres
- **SQL** ÔÇö cria├º├úo, consulta e manipula├º├úo dos dados
- **Chaves prim├írias e estrangeiras**
- **Integridade referencial**

---

## ­ƒôè Estrutura do banco de dados

O banco de dados ├® composto por **5 tabelas**, respons├íveis por representar as principais entidades do sistema comercial.

| Caracter├¡stica | Quantidade |
|---|---:|
| Tabelas | 5 |
| Colunas | 18 |
| Chaves prim├írias | 5 |
| Chaves estrangeiras | 4 |

### ­ƒôï Tabelas

| Tabela | Responsabilidade |
|---|---|
| `categorias` | Armazena as categorias utilizadas para classificar os produtos. |
| `clientes` | Armazena os dados dos clientes cadastrados. |
| `produtos` | Registra os produtos, seus pre├ºos, estoque e categoria. |
| `vendas` | Registra as vendas realizadas e o cliente relacionado ├á opera├º├úo. |
| `itens_venda` | Registra os produtos pertencentes a cada venda e suas respectivas quantidades. |

---

## ­ƒöù Relacionamentos e fluxo dos dados

A estrutura do `comercio_db` utiliza **chaves estrangeiras (`FOREIGN KEY`)** para conectar as tabelas e representar o relacionamento entre as entidades.

### 1. Categorias ÔåÆ Produtos

A tabela `categorias` est├í relacionada ├á tabela `produtos`.

Uma categoria pode possuir **v├írios produtos**, enquanto cada produto pode estar associado a uma categoria.

Esse relacionamento permite organizar os produtos por categorias, facilitando sua classifica├º├úo e consulta.

```text
categorias
    Ôöé
    Ôöé 1:N
    Ôû╝
produtos
```

---

### 2. Clientes ÔåÆ Vendas

A tabela `clientes` est├í relacionada ├á tabela `vendas`.

Um cliente pode realizar **v├írias vendas**, enquanto cada venda est├í associada a um cliente.

Esse relacionamento permite identificar quais vendas foram realizadas por determinado cliente.

```text
clientes
    Ôöé
    Ôöé 1:N
    Ôû╝
vendas
```

---

### 3. Vendas ÔåÆ Itens da venda

A tabela `vendas` possui relacionamento com `itens_venda`.

Uma venda pode possuir **v├írios itens**, permitindo registrar diferentes produtos dentro da mesma opera├º├úo comercial.

Por exemplo, uma ├║nica venda pode conter tr├¬s ou mais produtos diferentes.

```text
vendas
    Ôöé
    Ôöé 1:N
    Ôû╝
itens_venda
```

---

### 4. Produtos ÔåÆ Itens da venda

A tabela `produtos` tamb├®m se relaciona com `itens_venda`.

Um produto pode aparecer em **v├írios itens de diferentes vendas**, permitindo registrar quantas unidades daquele produto foram comercializadas em cada opera├º├úo.

```text
produtos
    Ôöé
    Ôöé 1:N
    Ôû╝
itens_venda
```

---

## ­ƒöä Fluxo geral do relacionamento

Considerando todos os relacionamentos, o fluxo principal do banco pode ser representado da seguinte maneira:

```text
ÔöîÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÉ
Ôöé  categorias  Ôöé
ÔööÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔö¼ÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÿ
       Ôöé
       Ôöé 1:N
       Ôû╝
ÔöîÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÉ
Ôöé   produtos   Ôöé
ÔööÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔö¼ÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÿ
       Ôöé
       Ôöé 1:N
       Ôû╝
ÔöîÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÉ
Ôöé  itens_venda   Ôöé
ÔööÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔö¼ÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÿ
        Ôöé
        Ôöé N:1
        Ôû╝
ÔöîÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÉ
Ôöé    vendas    Ôöé
ÔööÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔö¼ÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÿ
       Ôû▓
       Ôöé N:1
       Ôöé
ÔöîÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔö┤ÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÉ
Ôöé   clientes   Ôöé
ÔööÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÇÔöÿ
```

O fluxo demonstra como as informa├º├Áes s├úo conectadas dentro do sistema:

**Clientes** realizam **vendas**, cada venda possui **itens**, e cada item referencia um **produto**, que por sua vez pode estar associado a uma **categoria**.

Essa estrutura permite representar uma opera├º├úo comercial de forma organizada e mant├®m a rela├º├úo entre os dados por meio das chaves estrangeiras.

---

## ­ƒº® Integridade dos dados

A utiliza├º├úo de **chaves prim├írias (`PRIMARY KEY`)** permite identificar cada registro de forma ├║nica.

As **chaves estrangeiras (`FOREIGN KEY`)** estabelecem os v├¡nculos entre as tabelas, garantindo que os registros relacionados mantenham uma estrutura consistente.

Essa organiza├º├úo contribui para:

- Evitar registros duplicados;
- Manter relacionamentos consistentes;
- Facilitar consultas entre diferentes tabelas;
- Organizar os dados de forma normalizada;
- Permitir consultas utilizando `JOIN`;
- Facilitar futuras expans├Áes do sistema.

---

## ­ƒôü Organiza├º├úo do projeto

```text
comercio_db/
Ôöé
Ôö£ÔöÇÔöÇ README.md
Ôöé
Ôö£ÔöÇÔöÇ comercio_db.sql
Ôöé
Ôö£ÔöÇÔöÇ docs/
Ôöé   ÔööÔöÇÔöÇ diagrama_ER.png
Ôöé
ÔööÔöÇÔöÇ queries/
    ÔööÔöÇÔöÇ consultas.sql
```

### ­ƒôé Estrutura dos arquivos

| Arquivo/Pasta | Descri├º├úo |
|---|---|
| `README.md` | Documenta├º├úo do projeto. |
| `comercio_db.sql` | Script SQL respons├ível pela cria├º├úo e/ou exporta├º├úo do banco. |
| `docs/` | Documenta├º├úo complementar do projeto. |
| `queries/` | Consultas SQL utilizadas para testes e estudos. |

---

## ÔÜÖ´©Å Como utilizar

### 1. Requisitos

Para executar o projeto, ├® necess├írio possuir:

- **MySQL Server 8.4.9** ou vers├úo compat├¡vel;
- **MySQL Workbench** ou outro cliente MySQL;
- Acesso ao arquivo `comercio_db.sql`.

### 2. Criar o banco

```sql
CREATE DATABASE comercio_db;
```

### 3. Selecionar o banco

```sql
USE comercio_db;
```

### 4. Importar o script

Ap├│s criar o banco, execute o arquivo:

```text
comercio_db.sql
```

O script cont├®m a estrutura necess├íria para cria├º├úo das tabelas e, caso existam registros de exemplo no arquivo, tamb├®m poder├í realizar a inser├º├úo desses dados.

---

## ­ƒÄ» Objetivos de aprendizagem

Este projeto foi desenvolvido para praticar conceitos fundamentais de **Banco de Dados Relacionais e SQL**, incluindo:

- Modelagem de bancos de dados;
- Cria├º├úo de tabelas;
- Defini├º├úo de tipos de dados;
- `PRIMARY KEY`;
- `FOREIGN KEY`;
- Relacionamentos `1:N`;
- Integridade referencial;
- ├ìndices;
- Comandos SQL;
- Consultas entre tabelas;
- `JOIN`;
- Organiza├º├úo e estrutura├º├úo de dados relacionais.

---

## ­ƒÜÇ Poss├¡veis evolu├º├Áes

A estrutura atual pode ser expandida futuramente para representar outras funcionalidades de um sistema comercial, como:

- Consultas e relat├│rios de vendas;
- Relat├│rios de produtos mais vendidos;
- Controle mais detalhado de estoque;
- Hist├│rico de movimenta├º├Áes;
- Diferentes formas de pagamento;
- Cadastro de fornecedores;
- Controle de usu├írios;
- Relat├│rios utilizando `GROUP BY` e fun├º├Áes de agrega├º├úo;
- Consultas avan├ºadas utilizando m├║ltiplos `JOINs`.

---

## ­ƒôÜ Finalidade do projeto

O `comercio_db` faz parte dos estudos pr├íticos de **Banco de Dados e SQL**, tendo como objetivo consolidar conhecimentos sobre modelagem relacional e constru├º├úo de estruturas de dados utilizadas em sistemas reais.

O projeto tamb├®m serve como parte do **portf├│lio de desenvolvimento**, demonstrando a aplica├º├úo pr├ítica dos conceitos de banco de dados utilizando MySQL.

---

## ­ƒæ¿ÔÇì­ƒÆ╗ Autor

**Henrique Oliveira**

Projeto desenvolvido para estudo e aprimoramento de conhecimentos em:

**Banco de Dados ÔÇó SQL ÔÇó MySQL ÔÇó Modelagem Relacional**

---

<p align="center">
  <strong>­ƒøÆ comercio_db</strong><br>
  Banco de Dados Comercial desenvolvido com MySQL
</p>
