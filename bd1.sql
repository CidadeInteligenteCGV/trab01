CREATE TABLE historico_frequencia (
	data_aula DATE,
	horario_chegada TIME,
	horario_saida TIME,
	frequencia_aula CHAR(1),
	horas_frequencia_obrigatoria FLOAT,
	horas_frequencia_aluno FLOAT,
	PRIMARY KEY(data_aula)
	
);

CREATE TABLE aluno(
	cod_matricula CHAR(11),
	nome_aluno VARCHAR(50),
	cpf_aluno CHAR(11),
	data_nascimento_aluno DATE,
	sexo_aluno CHAR(1),
	campus VARCHAR (50),
	nome_curso VARCHAR(50),
	PRIMARY KEY(cod_matricula)
	FOREIGN KEY(campus) REFERENCES campus(campus),
	FOREIGN KEY(nome_curso) REFERENCES curso(nome_curso)
);

CREATE TABLE curso(
	cod_curso INT,
	nome_curso VARCHAR(50),
	PRIMARY KEY(cod_curso),
	FOREIGN KEY(nome_curso) REFERENCES aluno(nome_curso)
);

CREATE TABLE campus(
	cod_campus CHAR(8),
	campus VARCHAR(50),
	PRIMARY KEY(cod_campus),
	FOREIGN KEY(campus) REFERENCES aluno(campus)
);


CREATE TABLE professor(
	cod_servidor CHAR(11),
	nome_professor VARCHAR(50),
	nome_disciplina VARCHAR(50),
	cpf_professor CHAR(11),
	PRIMARY KEY(cod_servidor)
	FOREIGN KEY(nome_disciplina) REFERENCES disciplina(nome_disciplina)
	
);

CREATE TABLE disciplina(
	cod_disciplina INT,
	nome_disciplina VARCHAR(50),
	horas_disciplina INT,
	PRIMARY KEY(cod_disciplina)
);

CREATE TABLE historico_aula(
	data_aula DATE,
	horario_inicio TIME,
	horario_fim TIME,
	frequencia_aula CHAR(1),
	horas_frequencia_obrigatoria FLOAT,
	horas_frequencia_aluno FLOAT,
	PRIMARY KEY(data_aula)
);
