USE Edux;

--PROFESSOR
INSERT INTO Professor(Nome) VALUES ('Paulo B')
INSERT INTO Professor(Nome) VALUES ('Tsukamoto')
INSERT INTO Professor(Nome) VALUES ('Roberto P')

--ALUNO 
INSERT INTO	Aluno(Nome) VALUES ('bryan')
INSERT INTO	Aluno(Nome) VALUES ('Breno')
INSERT INTO	Aluno(Nome) VALUES ('Theo')
INSERT INTO	Aluno(Nome) VALUES ('Nicolas')
INSERT INTO	Aluno(Nome) VALUES ('Volpe')

--CURSOS
INSERT INTO Curso(Materia) VALUES ('DEV')
INSERT INTO Curso(Materia) VALUES ('Multimidia')
INSERT INTO Curso(Materia) VALUES ('Redes')

--CATEGORIA
INSERT INTO Categoria(Descricao)VALUES ('Socializadores')
INSERT INTO Categoria(Descricao)VALUES ('Assasinos')
INSERT INTO Categoria(Descricao)VALUES ('Exploradores')
INSERT INTO Categoria(Descricao)VALUES ('Conquistadores')

--TURMAS 
INSERT INTO Turma(idCurso) VALUES ('1')

--OBJETIVO
INSERT INTO Objetivo(Nota, Descricao, idCategoria) VALUES ('10/10','Atividade muito boa','1')

--OBJETIVO ALUNO
INSERT INTO ObjetivoAluno(idObjetivo,idAluno)VALUES (1,3)

--PROFTURMA
INSERT INTO ProfTurma(idProfessor, idTurma)VALUES (1,1)

--ALUNOTURMA
INSERT INTO AlunoTurma(idAluno, idTurma)VALUES (1,1)

--DICA
INSERT INTO Dica(Descricao,idProfessor) VALUES ('Ao fazer o DDL, tenha o diagrama logico', 2)

--POSTS
INSERT INTO Posts(Texto, Imagem,idAluno) VALUES ('ATIVIDADE PARA AMANHÃ','print.jpeg',3)

SELECT * FROM Professor;
SELECT * FROM Aluno;
SELECT * FROM Curso;
SELECT * FROM Categoria;
SELECT * FROM Turma;
SELECT * FROM Objetivo;
SELECT * FROM ObjetivoAluno;
SELECT * FROM ProfTurma;
SELECT * FROM AlunoTurma;
SELECT * FROM Dica;
SELECT * FROM Posts;


 


