CREATE DATABASE Proj_Individual
Default character ser utf8
Default collate utf8_general_ci;

USE Proj_Individual;

/* criando tabelas ——————————————————————*/

— Aluno —————————
CREATE TABLE Aluno(	
	Id_Aluno INT NOT NULL,
	Nome VARCHAR(60) NOT NULL,
	Turno VARCHAR(5) NOT NULL,
	Id_Curso INT NOT NULL,
	Id_Turma INT NOT NULL,
	Media DEC(2,1) NOT NULL,
	PRIMARY KEY(Id_Aluno),
	FOREIGN KEY(Id_Curso),
	FOREIGN KEY(Id_Turma)
)engine=innoDB charset=utf8;

— Curso —————————
CREATE TABLE Curso(
	Id_Curso INT NOT NULL,
	Curso VARCHAR(50) NOT NULL,
	Orientador VARCHAR(20)NOT NULL,
	Professor VARCHAR(20)NOT NULL,
	Turno VARCHAR(5) NOT NULL,
	PRIMARY KEY(Id_Curso)
)engine=innoDB charset=utf8;


— Turma —————————
CREATE TABLE Turma(
	Id_Turma INT NOT NULL,
	Quant_Aluno INT(25) NOT NULL,
	Professor VARCHAR(20)NOT NULL,
	Monitores VARCHAR(20)NOT NULL,
	Media DEC(2,1) NOT NULL,
	Turno VARCHAR(5) NOT NULL,
	PRIMARY KEY(Id_Turma)
)engine=innoDB charset=utf8;


— Funcionarios —————————
CREATE TABLE Funcionarios(	
	Id_Func INT NOT NULL,
	Cargo VARCHAR(20) NOT NULL,
	Hora_Trab TIME NOT NULL,
	Id_Curso INT NOT NULL,
	Id_Turma INT NOT NULL,
	PRIMARY KEY(Id_Func),
	FOREIGN KEY(Id_Curso),
	FOREIGN KEY(Id_Turma)
)engine=innoDB charset=utf8;