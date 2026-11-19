USE escoladb;
SELECT * FROM alunos;

#Lista de exercícios — EscolaDB
#Questão 1 — SELECT + WHERE

#Consulte todos os alunos cadastrados que possuem um CPF preenchido.

#Exiba:
#- id_aluno
#- nome
#- cpf

#Solução
SELECT id_aluno, nome, cpf
FROM alunos
WHERE cpf IS NOT NULL;

#Próximo desafio — Questão 2
#Consulte todos os professores cadastrados, exibindo:
#- Nome;
#- Especialidade;
#- Salário.
#Ordene os resultados pelo salário, do maior para o menor.

#Slução
SELECT nome, especialidade, salario
FROM professores
ORDER BY  salario DESC;

/*
Questão 3 — COUNT + WHERE
Agora vamos trabalhar com uma função de agregação.

Desafio: conte quantos alunos estão cadastrados na tabela alunos.

O resultado deve apresentar o nome da coluna como total_alunos.

Soloção
*/

SELECT COUNT(*) as total_alunos
FROM alunos;

/*
Questão 4 — INNER JOIN
Novo desafio
Faça uma consulta que apresente:
- Nome do aluno.
- Nome da turma em que está matriculado.
Você precisará utilizar três tabelas:
1. alunos
2. matriculas
3. turmas

Solução
*/
 
 SELECT * FROM matriculas;
 SELECT * FROM turmas;

SELECT alunos.nome, turmas.nome_turma
FROM alunos
INNER JOIN matriculas
    ON alunos.id_aluno = matriculas.id_aluno
INNER JOIN turmas
    ON matriculas.id_turma = turmas.id_turma;

/*
Questão 5 — Disciplinas e professores
Objetivo: listar o nome de cada disciplina e o nome do professor responsável por ela.

Você deverá utilizar três tabelas:
- disciplinas
- turma_disciplina
- professores

Solução
*/

SELECT * FROM disciplinas;
SELECT * FROM professores;
SELECT * FROM turmas;

DESCRIBE turma_disciplina;
DESCRIBE disciplinas;
DESCRIBE professores;

SELECT disciplinas.nome_disciplina, professores.nome
FROM disciplinas
INNER JOIN turma_disciplina
    ON disciplinas.id_disciplina = turma_disciplina.id_disciplina
INNER JOIN professores
    ON turma_disciplina.id_professor = professores.id_professor;

/*
Questão 6 — GROUP BY + COUNT()
(Nível médio)

Objetivo: descobrir quantos alunos estão matriculados em cada turma.

Você deverá utilizar três comandos principais:
- SELECT → selecionar o nome da turma e contar os alunos.
- COUNT() → contar a quantidade de matrículas.
- GROUP BY → agrupar os resultados por turma.
Resultado esperado (exemplo ilustrativo)
*/
SELECT * FROM matricula;


SELECT turmas.nome_turma, COUNT(*) AS total_alunos
FROM matriculas
INNER JOIN turmas
    ON matriculas.id_turma = turmas.id_turma
GROUP BY turmas.nome_turma;  

/*
Questão 7 — GROUP BY + AVG()
Nível médio
Objetivo: calcular a média das notas dos alunos por disciplina.

Você deverá utilizar quatro tabelas:
- notas
- matricula_disciplina
- turma_disciplina
- disciplinas
*/

SELECT * FROM notas;


SELECT disciplinas AVG()
FROM
INNER JOIN

 




