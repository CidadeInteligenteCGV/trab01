CREATE TABLE Historico_Aula (
	id_historico_aula INT NOT NULL,
	data_aula DATE,
	presenca CHAR(1),
	horario_inicio TIME,
	horario_saida TIME,
	PRIMARY KEY(id_historico_aula),
	FK_Professor_cod_servidor varchar(12) not null,
    	FK_Disciplina_cod_disciplina int not null
);

CREATE TABLE Aluno(
	cod_matricula VARCHAR(11) NOT NULL,
	nome_aluno VARCHAR(50),
	cpf_aluno BIGINT,
	data_nascimento_aluno DATE,
	imei BIGINT,
	sexo_aluno CHAR(1),
	PRIMARY KEY(cod_matricula)
	
);

CREATE TABLE Curso(
	cod_curso INT NOT NULL,
	nome_curso VARCHAR(50),
	PRIMARY KEY(cod_curso),
	FK_Campus_cod_campus varchar(50) not null
	
);

CREATE TABLE Campus(
	cod_campus VARCHAR(8) NOT NULL,
	campus VARCHAR(50),
	PRIMARY KEY(cod_campus)
	

);


CREATE TABLE Professor(
	cod_servidor VARCHAR(11) NOT NULL,
	nome_professor VARCHAR(50),
	cpf_professor BIGINT,
	PRIMARY KEY(cod_servidor)	
	
);

CREATE TABLE Disciplina(
	cod_disciplina INT NOT NULL,
	nome_disciplina VARCHAR(50),
	horas_disciplina INT,
	PRIMARY KEY(cod_disciplina),
	FK_Curso_cod_curso int not null
);

CREATE TABLE Gera (
    FK_Historico_Aula_id_historico_aula int not null,
    FK_Aluno_cod_matricula varchar(12) not null
);

ALTER TABLE Historico_Aula ADD CONSTRAINT FK_Historico_Aula_1
    FOREIGN KEY (FK_Professor_cod_servidor)
    REFERENCES Professor (cod_servidor)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Historico_Aula ADD CONSTRAINT FK_Historico_Aula_2
    FOREIGN KEY (FK_Disciplina_cod_disciplina)
    REFERENCES Disciplina (cod_disciplina)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Disciplina ADD CONSTRAINT FK_Disciplina_1
    FOREIGN KEY (FK_Curso_cod_curso)
    REFERENCES Curso (cod_curso)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Curso ADD CONSTRAINT FK_Curso_1
    FOREIGN KEY (FK_Campus_cod_campus)
    REFERENCES Campus (cod_campus)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Gera ADD CONSTRAINT FK_Gera_0
    FOREIGN KEY (FK_Historico_Aula_id_historico_aula)
    REFERENCES Historico_Aula (id_historico_aula)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Gera ADD CONSTRAINT FK_Gera_1
    FOREIGN KEY (FK_Aluno_cod_matricula)
    REFERENCES Aluno (cod_matricula)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
	