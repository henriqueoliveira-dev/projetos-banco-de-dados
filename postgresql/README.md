# PostgreSQL

Esta pasta reúne o material PostgreSQL identificado nesta revisão: uma versão **somente de esquema** do dump `data_science`. O dump original contém registros de funcionários com campos de identificação/contato e remuneração; as linhas de dados não foram incluídas nesta versão do portfólio.

## Conteúdo

- [`projetos/data-science/estrutura.sql`](projetos/data-science/estrutura.sql): DDL e metadados de sequência do banco. Inclui as tabelas `departamentos`, `filme`, `funcionarios`, `genero`, `locacao`, `localizacao`, `maquinas` e `rel_locadora`, além de `seq_locacao`.

O esquema representa dados de departamentos e funcionários, filmes/gêneros/locações e tabelas auxiliares de localização, máquinas e relatórios. Não foram inventados registros para substituir os dados omitidos.

## Conceitos observados

O dump declara chaves primárias em seis tabelas e chaves estrangeiras de `filme.id_genero` para `genero.idgenero` e de `locacao.id_filme` para `filme.idfilme`. Também contém uma sequência (`seq_locacao`). As tabelas `maquinas` e `rel_locadora` não declaram chave primária no material recebido; isso foi preservado, sem inferir uma regra de unicidade.

## Requisitos e execução

O arquivo foi produzido por `pg_dump` 18.6 e contém diretivas próprias do `psql` 18.6. Use PostgreSQL/`psql` 18.6 ou mais recente. Crie primeiro um banco vazio e execute o script como uma conta com privilégios suficientes para criar objetos e definir o proprietário `postgres`:

```bash
createdb data_science
psql -X -v ON_ERROR_STOP=1 -d data_science -f postgresql/projetos/data-science/estrutura.sql
```

Exemplo de consulta à tabela de filmes (o resultado ficará vazio até que sejam inseridos dados autorizados):

```sql
SELECT idfilme, nome, ano
FROM public.filme
ORDER BY idfilme;
```

O script usa `ALTER ... OWNER TO postgres`; em ambientes que não possuem esse papel, importe como administrador ou gere uma cópia apropriada ao ambiente, sem alterar esta versão de portfólio.

## Revisão e observações

A sintaxe foi analisada com um parser compatível com PostgreSQL; não foi executada em uma instância PostgreSQL. As verificações dos dados originais encontraram 1.104 linhas em oito blocos `COPY`, sem duplicidades nas chaves primárias nem referências órfãs nas duas FKs declaradas. Essas linhas foram omitidas desta versão publicável.

A sequência `seq_locacao` não está associada por `DEFAULT` a `locacao.idlocacao` nem declarada `OWNED BY`. Como não é possível concluir se ela foi criada para uso manual ou automático, essa relação não foi inventada nem alterada. Se a intenção for geração automática, a regra deverá ser confirmada antes de modificar o esquema.
