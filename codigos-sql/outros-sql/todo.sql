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
	PRIMARY KEY(cod_matricula),
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
	PRIMARY KEY(cod_servidor),
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

INSERT INTO curso (cod_curso, nome_curso)
VALUES (74024, 'Licenciatura em Matemática'),
(21111, 'Sistemas de Informação'), (30157, 'Arquitetura e Urbanismo'),
(16412, 'Engenharia Mecânica'), (20013, 'Bacharelado em Física'),
(33152, 'Licenciatura em Letras/Português'), (91500, 'Engenharia de Controle e Automação'),
(20013, 'Bacharelado em Física'), (48991, 'Quimica Indistrial'),
(78422, 'Administração');


INSERT INTO campus (cod_campus, campus)
VALUES ('IFES0001', 'Vitoria'), ('IFES0003', 'Serra'),
('IFES0005', 'Colatina'), ('IFES0002', 'Aracruz'), 
('IFES0004', 'Cariacica');


INSERT INTO disciplina (cod_disciplina, nome_disciplina, horas_disciplina)
VALUES (8, 'Calculo 1', 90), (23, 'Matematica Discreta', 60), (12, 'Maquinas de Fluxo', 60),
(207, 'Arquitetura e Organizaçao de Computadores', 60), (229, 'Filosofia', 30),
(1275, 'Estatistica', 60), (1908, 'Historia da educaçao', 30), (501, 'Urbanismo IV', 60);


INSERT INTO professor (cod_servidor, nome_professor, nome_disciplina, cpf_professor)
VALUES ('2014IFES001', 'Lara Dias', 'Calculo 1', 60905521358), ('2000IFES128', 'Marcos Cavalcanti', 'Matematica Discreta', 37782702062),
('1997IFES341', 'Mariana Rocha', 'Urbanismo IV', 48615592276), ('2002IFES653', 'Leonardo Souza', 'Maquinas de Fluxo', 67053106349),
('2007IFES023', 'Marisa Castro', 'Historia da educaçao', 75113441198), ('1995IFES325', 'Diego Almeida', 'Arquitetura e Organizaçao de Computadores', 48054961340),
('2005IFES140', 'Cauã Souza', 'Estatistica', 62836439653), ('1999IFES005', 'Emilly Ribeiro', 'Filosofia', 15750910970);


INSERT INTO aluno(cod_matricula,nome_aluno,cpf_aluno, data_nascimento_aluno, sexo_aluno, campus, nome_curso)
VALUES ('20162MAT003', 'Leonardo Ribeiro',28260389231, '1997-01-23', 'M', 'Vitória', 'Licenciatura em Matemática'),
('20171BSI012','Aline Dias',69558893978,'1994-07-18','F','Serra','Sistemas de Informação'),
('20142AUR222','Manuela Rocha',61615263101, '1983-10-10', 'F', 'Colatina', 'Arquitetura e Urbanismo'),
('20142MEC188','Martim Ribeiro',43979219542, '1998-07-04', 'M', 'Aracruz','Engenharia Mecânica'),
('20182FIS237','Matilde Ferreira',66649022306, '1995-08-31','F','Cariacica','Bacharelado em Física'),
('20182LET914', 'Felipe Ribeiro',16587024769, '1987-12-31','M','Vitória', 'Licenciatura em Letras/Português'),
('20171AUT552','Gustavo Santos',47600515547, '1991-06-08', 'M', 'Serra','Engenharia de Controle e Automação'),
('20181FIS015','Sofia Costa',12821736770, '1989-01-02','F', 'Cariacica','Bacharelado em Física'),
('20162QUI041', 'Lucas Almeida',32650442115, '1991-09-29', 'M', 'Aracruz', 'Química Industrial'),
('20151ADM873', 'Camila Cavalcanti',30377170178, '1987-09-28','F','Colatina','Administraçao' );
