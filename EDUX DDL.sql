/* Criar o banco de dados*/
CREATE DATABASE Edux

/*Usar o banco criado*/
USE Edux

/*Tabela dica*/
CREATE TABLE Dica(
	idDica INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(140) NOT NULL
);

/*Tabela posts com inserção de imagem*/
CREATE TABLE Posts(
	idPosts INT PRIMARY KEY IDENTITY NOT NULL,
	Texto VARCHAR(140) NOT NULL,
	Imagem VARCHAR(250)
);

/*Tabela curso*/
CREATE TABLE Curso(
	idCurso INT PRIMARY KEY IDENTITY NOT NULL,
	Materia VARCHAR(50) NOT NULL
);

/*Tabela categoria*/
CREATE TABLE Categoria(
	idCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(50) NOT NULL
);

/*Tabela turma*/
CREATE TABLE Turma(
	idTurma INT PRIMARY KEY IDENTITY NOT NULL,
	
	--FK
	idCurso INT FOREIGN KEY REFERENCES Curso (idCurso)
);

/*Tabela objetivo*/
CREATE TABLE Objetivo(
	idObjetivo INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(150) NOT NULL,
	Nota VARCHAR(15),
	--FK
	idCategoria INT FOREIGN KEY REFERENCES Categoria (idCategoria)
);

CREATE TABLE ObjetivoAluno(
	idObjetivoAluno INT PRIMARY KEY IDENTITY NOT NULL,
	--FK
	idObjetivo INT FOREIGN KEY REFERENCES Objetivo (idObjetivo),
);
/*Tabela professor*/
CREATE TABLE Professor(
	idProfessor INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(150) NOT NULL,
	--FK
	idDicas INT FOREIGN KEY REFERENCES Dica (idDica),
	idPost INT FOREIGN KEY REFERENCES Posts (idPosts),
	idTurma INT FOREIGN KEY REFERENCES Turma (idTurma),
);

/*Tabela auxiliar de professor*/
CREATE TABLE ProfTurma(
	idProfTurma INT PRIMARY KEY IDENTITY NOT NULL,
	--FK
	idProfessor INT FOREIGN KEY REFERENCES Professor (idProfessor),
	idTurma INT FOREIGN KEY REFERENCES Turma (idTurma),
);

/*Tabela aluno*/
CREATE TABLE Aluno(
	idAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(150) NOT NULL,
	--FK
	idObjetivo INT FOREIGN KEY REFERENCES Objetivo (idObjetivo),
	idPost INT FOREIGN KEY REFERENCES Posts (idPosts),
	idTurma INT FOREIGN KEY REFERENCES Turma (idTurma),
);

/*Tabela auxiliar de aluno*/
CREATE TABLE AlunoTurma(
	idAlunoTurma INT PRIMARY KEY IDENTITY NOT NULL,
	--FK
	idObjetivoAluno INT FOREIGN KEY REFERENCES ObjetivoAluno (idObjetivoAluno),
	idTurma INT FOREIGN KEY REFERENCES Turma (idTurma),
	idAluno INT FOREIGN KEY REFERENCES Aluno (idAluno),
);
