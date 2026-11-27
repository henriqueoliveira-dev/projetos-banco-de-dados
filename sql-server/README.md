# SQL Server

Esta pasta contém uma versão de esquema do banco `Banco_Empresa`, derivada localmente do modelo de `Banco_Empresa.bacpac`. O pacote original **não foi copiado para o repositório**: ele contém dados em tabelas relacionadas a alunos, contatos, endereços e remuneração/histórico salarial.

## Conteúdo

- [`projetos/banco-empresa/estrutura.sql`](projetos/banco-empresa/estrutura.sql): script T-SQL de criação das 13 tabelas, restrições e três triggers, sem registros.

O modelo contém seis chaves primárias, duas restrições `UNIQUE`, duas chaves estrangeiras e três restrições `CHECK`. As relações incluem endereço-aluno e uma referência de gerente para empregado. As tabelas `MAQUINAS`, `TB_EMPRESA`, `TB_MKT` e `TB_VENDAS` não tinham arquivos BCP no pacote recebido; não se inferiu nem se adicionou conteúdo para elas.

## Correções identificadas

Os triggers `TG_RANGE` e `TRG_ATUALIZA_PRECO` originalmente copiavam valores de `inserted`/`deleted` para variáveis escalares, podendo validar ou registrar somente uma linha quando um único comando alterasse vários empregados ou produtos. No script publicável, a validação salarial e o registro de histórico foram reescritos em forma set-based, preservando as regras e campos existentes. O trigger `TG_SALARIO` já era set-based e foi preservado.

`TG_RANGE` continua assumindo que `SALARIO_RANGE` representa uma única faixa configurada, como no código de origem; a cardinalidade dessa tabela não foi alterada.

## Requisitos e execução

O modelo do pacote identifica o provedor `Sql170DatabaseSchemaProvider`. O script contém DDL T-SQL convencional e separadores `GO`, que devem ser executados por SQL Server Management Studio ou `sqlcmd` (não envie `GO` diretamente por uma API que espera T-SQL puro). Crie primeiro um banco vazio e execute:

```bash
sqlcmd -S SERVIDOR -d Banco_Empresa -E -b -i sql-server/projetos/banco-empresa/estrutura.sql
```

Depois da criação do esquema, por exemplo, consulte a estrutura de produtos:

```sql
SELECT TOP (10) [IDPRODUTO], [NOME], [CATEGORIA], [PRECO]
FROM [dbo].[PRODUTOS]
ORDER BY [IDPRODUTO];
```

Use autenticação e privilégios apropriados no seu ambiente. O script não configura usuários/permissões nem opções de banco, e não importa dados.

## Segurança e validação

O `.bacpac` original foi mantido fora do repositório e está coberto pelo `.gitignore`. A integridade ZIP e a leitura do XML de modelo foram verificadas; **não foi possível importar o pacote ou executar o script em uma instância SQL Server** neste ambiente. Portanto, as correções de trigger foram revisadas, mas não declaradas como testadas em execução. Os registros do BACPAC não foram exportados nem publicados.
