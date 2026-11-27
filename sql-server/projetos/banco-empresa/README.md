# Banco_Empresa — SQL Server

Projeto de banco relacional identificado no modelo do arquivo `Banco_Empresa.bacpac`. A versão no repositório é somente estrutural: [estrutura.sql](estrutura.sql) contém as definições do modelo e os triggers revisados, sem linhas de dados.

## Modelo resumido

O esquema inclui entidades de alunos, empregados, endereços, telefones, histórico salarial, histórico de produto, produtos, faixas salariais, lançamentos contábeis e tabelas auxiliares. O modelo original declara PKs, restrições únicas, checks e FKs; veja o script para a definição completa.

## Dados e segurança

O BACPAC original inclui dados associados a nomes, nascimento, e-mail, telefone, endereço e remuneração. Por isso, ele não foi incluído nem versionado. Para preservar a confidencialidade, esta publicação contém DDL sem registros. Não compartilhe o pacote original em um repositório público.

## Execução

Crie um banco vazio e execute o script por SSMS ou `sqlcmd`; os comandos `GO` são separadores de lote do cliente. O script não cria usuários, permissões ou configurações de banco e ainda precisa ser testado no SQL Server de destino.
