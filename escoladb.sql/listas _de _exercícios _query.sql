USE escoladb;

-- Questão 1 — SELECT + WHERE
-- Liste alunos com CPF preenchido.
SELECT id_aluno, nome, cpf
FROM alunos
WHERE cpf IS NOT NULL;

-- Questão 2 — ORDER BY
-- Liste professores, da maior para a menor remuneração.
SELECT nome, especialidade, salario
FROM professores
ORDER BY salario DESC;

-- Questão 3 — COUNT + WHERE
-- Conte os alunos cadastrados.
SELECT COUNT(*) AS total_alunos
FROM alunos;

-- Questão 4 — INNER JOIN
-- Liste cada aluno e o nome da turma em que está matriculado.
SELECT a.nome AS nome_aluno, t.nome_turma
FROM alunos AS a
INNER JOIN matriculas AS m
    ON m.id_aluno = a.id_aluno
INNER JOIN turmas AS t
    ON t.id_turma = m.id_turma
ORDER BY t.nome_turma, a.nome;

-- Questão 5 — Disciplinas e professores
-- Liste as disciplinas e os professores associados em cada turma.
SELECT d.nome_disciplina, p.nome AS nome_professor
FROM disciplinas AS d
INNER JOIN turma_disciplina AS td
    ON td.id_disciplina = d.id_disciplina
INNER JOIN professores AS p
    ON p.id_professor = td.id_professor
ORDER BY d.nome_disciplina, p.nome;

-- Questão 6 — GROUP BY + COUNT
-- Conte os alunos distintos matriculados em cada turma.
SELECT t.nome_turma, COUNT(DISTINCT m.id_aluno) AS total_alunos
FROM turmas AS t
INNER JOIN matriculas AS m
    ON m.id_turma = t.id_turma
GROUP BY t.id_turma, t.nome_turma
ORDER BY t.nome_turma;

-- Questão 7 — GROUP BY + AVG
-- Calcule a média das notas por disciplina.
SELECT d.nome_disciplina, ROUND(AVG(n.nota), 2) AS media_notas
FROM notas AS n
INNER JOIN matricula_disciplina AS md
    ON md.id_matricula_disciplina = n.id_matricula_disciplina
INNER JOIN turma_disciplina AS td
    ON td.id_turma_disciplina = md.id_turma_disciplina
   AND td.id_turma = md.id_turma
INNER JOIN disciplinas AS d
    ON d.id_disciplina = td.id_disciplina
GROUP BY d.id_disciplina, d.nome_disciplina
ORDER BY d.nome_disciplina;
