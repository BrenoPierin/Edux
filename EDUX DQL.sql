USE Edux

--INNER JOIN
SELECT * FROM Turma
	INNER JOIN Aluno ON Aluno.Nome = Aluno.Nome
	INNER JOIN Professor ON Professor.Nome = Professor.Nome
;
-- Ordenar por forma crescente padr�o
SELECT * FROM Aluno ORDER BY Nome;
SELECT * FROM Professor ORDER BY Nome;

-- Selecionar como uma busca espec�fica
SELECT * FROM Aluno WHERE Nome LIKE 'bryan'

--RIGHT JOIN
SELECT * FROM Turma
	RIGHT JOIN  Aluno ON Aluno.Nome = Aluno.Nome