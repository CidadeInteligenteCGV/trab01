CREATE TABLE Historico_Aula (
	id_historico_aula INT NOT NULL,
	data_aula DATE,
	presenca CHAR(1),
	horario_inicio TIME,
	horario_saida TIME,
	PRIMARY KEY(id_historico_aula)
	
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
	PRIMARY KEY(cod_curso)
	
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
	PRIMARY KEY(cod_disciplina)
);


