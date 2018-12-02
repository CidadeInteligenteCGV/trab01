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


INSERT INTO Campus (cod_campus, campus)
VALUES ('IFES0001', 'Vitoria'), ('IFES0003', 'Serra'),
('IFES0005', 'Colatina'), ('IFES0002', 'Aracruz'), 
('IFES0004', 'Cariacica');

	
INSERT INTO Curso (cod_curso, nome_curso, FK_Campus_cod_campus)
VALUES (74024, 'Licenciatura em Matemática', 'IFES0001'),
(21111, 'Sistemas de Informação', 'IFES0003'), (30157, 'Arquitetura e Urbanismo', 'IFES0005'),
(16412, 'Engenharia Mecânica', 'IFES0002'), (20013, 'Bacharelado em Física','IFES0004' ),
(33152, 'Licenciatura em Letras/Português','IFES0001'), (91500, 'Engenharia de Controle e Automação', 'IFES0003'),
(48991, 'Quimica Indistrial','IFES0002'),(78422, 'Administração', 'IFES0005');


INSERT INTO Disciplina (cod_disciplina, nome_disciplina, horas_disciplina, fk_curso_cod_curso)
VALUES (8, 'Calculo 1', 90, 91500), (23, 'Matematica Discreta', 60,21111), (12, 'Maquinas de Fluxo', 60, 16412),
(207, 'Arquitetura e Organizaçao de Computadores', 60, 21111), (229, 'Filosofia', 30, 33152),
(1275, 'Estatistica', 60, 78422), (1908, 'Historia da educaçao', 30, 33152), (501, 'Urbanismo IV', 60, 30157);


INSERT INTO Professor (cod_servidor, nome_professor, cpf_professor)
VALUES ('2014IFES001', 'Lara Dias', 60905521358), ('2000IFES128', 'Marcos Cavalcanti', 37782702062),
('1997IFES341', 'Mariana Rocha', 48615592276), ('2002IFES653', 'Leonardo Souza', 67053106349),
('2007IFES023', 'Marisa Castro', 75113441198), ('1995IFES325', 'Diego Almeida', 48054961340),
('2005IFES140', 'Cauã Souza', 62836439653), ('1999IFES005', 'Emilly Ribeiro', 15750910970);


INSERT INTO Aluno (cod_matricula, nome_aluno, cpf_aluno, data_nascimento_aluno, imei, sexo_aluno)
VALUES ('20162MAT003', 'Leonardo Ribeiro',28260389231, '1997-01-23', 303705838207270, 'M'),
('20171BSI012','Aline Dias',69558893978,'1994-07-18', 447213888865730, 'F'),
('20142AUR222','Manuela Rocha',61615263101, '1983-10-10', 535424493262428, 'F'),
('20142MEC188','Martim Ribeiro',43979219542, '1998-07-04', 14977429327417, 'M'),
('20182FIS237','Matilde Ferreira',66649022306, '1995-08-31', 869414048411444, 'F'),
('20182LET914', 'Felipe Ribeiro',16587024769, '1987-12-31', 453148464011518, 'M'),
('20171AUT552','Gustavo Santos',47600515547, '1991-06-08', 539301432484741, 'M'),
('20181FIS015','Sofia Costa',12821736770, '1989-01-02', 331716274182071, 'F'),
('20162QUI041', 'Lucas Almeida',32650442115, '1991-09-29', 440580548764603, 'M'),
('20151ADM873', 'Camila Cavalcanti',30377170178, '1987-09-28', 447252797955802, 'F');


INSERT INTO Historico_Aula (id_historico_aula, data_aula, presenca, horario_inicio, horario_saida, fk_professor_cod_servidor, fk_disciplina_cod_disciplina)
VALUES(1, '2018-08-20', 'P', '07:50:00', '09:30:00', '2014IFES001',23 ), (12, '2018-08-21', 'P', '08:20:00', '10:00:00', '1997IFES341',12),
(3, '2018-08-22', 'F', '09:50:00', '11:30:00', '2007IFES023', 8), (22, '2018-08-23', 'P', '16:10:00', '19:00:00','2005IFES140', 229),
(42, '2018-08-24', 'F', '20:00:00', '21:00:00', '2000IFES128', 207), (2, '2018-08-25', 'P', '09:50:00', '11:20:00', '2002IFES653', 207),
(13, '2018-08-26', 'P', '08:20:00', '10:00:00','1995IFES325',1275 ), (4, '2018-08-27', 'F', '20:00:00', '21:00:00','1999IFES005',1908 ),
(5, '2018-08-28', 'P', '08:20:00', '09:40:00', '2002IFES653', 207), (6, '2018-08-29', 'F', '18:00:00', '21:00:00', '2007IFES023', 8);


INSERT INTO Gera (fk_historico_aula_id_historico_aula, fk_aluno_cod_matricula)
VALUES (1, '20162MAT003'), (12, '20171AUT552'),
(3, '20142AUR222'), (22, '20151ADM873'),
(42, '20181FIS015'), (2, '20142MEC188'),
(13, '20151ADM873'), (4, '20162MAT003'),
(5, '20182FIS237'), (6, '20151ADM873');

SELECT * FROM aluno;
SELECT * FROM campus;
SELECT * FROM curso;
SELECT * FROM disciplina;
SELECT * FROM professor;
SELECT * FROM historico_aula;
SELECT * FROM gera;


SELECT * FROM aluno WHERE cod_matricula = '20162QUI041';
SELECT * FROM historico_aula WHERE data_aula > '2018-08-25';
SELECT * FROM curso WHERE cod_curso = 20013;
SELECT * FROM disciplina WHERE horas_disciplina < 50;


select horario_inicio, horario_saida, (horario_saida - horario_inicio) as duracao_aula from historico_aula;

select nome_aluno, cod_matricula, data_nascimento_aluno, (cast(substring(cod_matricula, 0, 5) as int) - extract(year from aluno.data_nascimento_aluno)) as idade_ingresso from aluno;

select cod_matricula, nome_aluno, data_nascimento_aluno, (2018 - extract(year from aluno.data_nascimento_aluno)) as idade_aluno_2018 from aluno;
																 
ALTER TABLE aluno RENAME COLUMN data_nascimento_aluno TO data_nascimento;
select * from aluno;
											 
ALTER TABLE campus RENAME TO campi;
select * from campi;
													 
ALTER TABLE professor RENAME COLUMN cod_servidor TO cod_professor;
select * from professor;												

						 
select * from campi where campus ilike '%c%';

select * from aluno as al where al.nome_aluno ilike '%f%' and al.cod_matricula ilike '%f%';

select * from curso where nome_curso ilike '%l%' and nome_curso like '%em%';

select * from campi where campus ilike '%a%' and campus like '%a';

select * from historico_aula where cast (horario_inicio as varchar) like '%50%';

select * from professor where nome_professor like '_ar%';

select * from disciplina where nome_disciplina like 'M%';

select * from curso where nome_curso like '%o';

select * from aluno where cast (imei as varchar) not like '4%';

select nome_aluno, age('2018-10-1', data_nascimento) as idade from aluno;

select nome_aluno, data_nascimento, date_part('month', data_nascimento) as nasceu_mes_primeiro_semestre_ano from aluno where date_part('month', data_nascimento) < 7;

select nome_aluno, extract('year' from data_nascimento) as ano_nascimento from aluno;




ALTER TABLE curso DROP CONSTRAINT fk_curso_1;
ALTER TABLE disciplina DROP CONSTRAINT fk_disciplina_1;
ALTER TABLE gera DROP CONSTRAINT fk_gera_0;
ALTER TABLE gera DROP CONSTRAINT fk_gera_1;
ALTER TABLE historico_aula DROP CONSTRAINT fk_historico_aula_1;
ALTER TABLE historico_aula DROP CONSTRAINT fk_historico_aula_2;


ALTER TABLE Historico_Aula ADD CONSTRAINT FK_Historico_Aula_1
FOREIGN KEY (FK_Professor_cod_servidor)
REFERENCES Professor (cod_professor) MATCH FULL
ON UPDATE CASCADE ON DELETE CASCADE;
 
ALTER TABLE Historico_Aula ADD CONSTRAINT FK_Historico_Aula_2
FOREIGN KEY (FK_Disciplina_cod_disciplina)
REFERENCES Disciplina (cod_disciplina) MATCH FULL
ON UPDATE CASCADE ON DELETE CASCADE;
 
ALTER TABLE Disciplina ADD CONSTRAINT FK_Disciplina_1
FOREIGN KEY (FK_Curso_cod_curso)
REFERENCES Curso (cod_curso) MATCH FULL
ON UPDATE CASCADE ON DELETE CASCADE;
 
ALTER TABLE Curso ADD CONSTRAINT FK_Curso_1
FOREIGN KEY (FK_Campus_cod_campus)
REFERENCES Campi (cod_campus) MATCH FULL
ON UPDATE CASCADE ON DELETE CASCADE;
 
ALTER TABLE Gera ADD CONSTRAINT FK_Gera_0
FOREIGN KEY (FK_Historico_Aula_id_historico_aula)
REFERENCES Historico_Aula (id_historico_aula) MATCH FULL
ON UPDATE CASCADE ON DELETE CASCADE;
 
ALTER TABLE Gera ADD CONSTRAINT FK_Gera_1
FOREIGN KEY (FK_Aluno_cod_matricula)
REFERENCES Aluno (cod_matricula) MATCH FULL
ON UPDATE CASCADE ON DELETE CASCADE;



DELETE FROM disciplina WHERE cod_disciplina = 229 OR cod_disciplina = 8;
select * from disciplina;

DELETE FROM professor WHERE cpf_professor = '67053106349' AND nome_professor = 'Leonardo Souza';
select * from professor;

UPDATE curso SET cod_curso =53000, nome_curso ='Engenharia Civil' WHERE cod_curso=30157;
select * from curso;

DELETE FROM campi WHERE cod_campus = 'IFES0003';
select * from campi;

UPDATE historico_aula SET data_aula = '2018-10-17' WHERE id_historico_aula=48;
select * from historico_aula;

UPDATE aluno SET nome_aluno = 'Matilde Ferreira Santos' WHERE nome_aluno = 'Matilde Ferreira';
select * from aluno;



ALTER TABLE curso DROP CONSTRAINT fk_curso_1;
ALTER TABLE disciplina DROP CONSTRAINT fk_disciplina_1;
ALTER TABLE gera DROP CONSTRAINT fk_gera_0;
ALTER TABLE gera DROP CONSTRAINT fk_gera_1;
ALTER TABLE historico_aula DROP CONSTRAINT fk_historico_aula_1;
ALTER TABLE historico_aula DROP CONSTRAINT fk_historico_aula_2;



ALTER TABLE Historico_Aula ADD CONSTRAINT FK_Historico_Aula_1
FOREIGN KEY (FK_Professor_cod_servidor)
REFERENCES Professor (cod_professor)
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
REFERENCES Campi (cod_campus)
ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Gera ADD CONSTRAINT FK_Gera_0
FOREIGN KEY (FK_Historico_Aula_id_historico_aula)
REFERENCES Historico_Aula (id_historico_aula)
ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Gera ADD CONSTRAINT FK_Gera_1
FOREIGN KEY (FK_Aluno_cod_matricula)
REFERENCES Aluno (cod_matricula)
ON DELETE RESTRICT ON UPDATE RESTRICT;


select cod_matricula, nome_aluno, nome_disciplina, nome_professor, presenca, nome_curso, campus from aluno inner join gera on (gera.fk_aluno_cod_matricula = aluno.cod_matricula) inner join historico_aula on (historico_aula.id_historico_aula = gera.fk_historico_aula_id_historico_aula) inner join disciplina on (disciplina.cod_disciplina = historico_aula.fk_disciplina_cod_disciplina) inner join professor on (professor.cod_professor = historico_aula.fk_professor_cod_servidor) inner join curso on (curso.cod_curso = disciplina.fk_curso_cod_curso) inner join campi on (campi.cod_campus = curso.fk_campus_cod_campus) order by cod_matricula;


select cod_matricula, nome_aluno, nome_disciplina from aluno inner join gera on (gera.fk_aluno_cod_matricula = aluno.cod_matricula) inner join historico_aula on (historico_aula.id_historico_aula = gera.fk_historico_aula_id_historico_aula) inner join disciplina on (disciplina.cod_disciplina = historico_aula.fk_disciplina_cod_disciplina) order by cod_matricula;


select cod_campus, campus, count(cod_disciplina) as quantidade_disciplinas from campi inner join curso on (curso.fk_campus_cod_campus = campi.cod_campus) inner join disciplina on (disciplina.fk_curso_cod_curso = curso.cod_curso) group by cod_campus order by campus;


select cod_disciplina, nome_disciplina, count(distinct cod_professor) as quantidade_professores from disciplina inner join historico_aula on (historico_aula.fk_disciplina_cod_disciplina = disciplina.cod_disciplina) inner join professor on (professor.cod_professor = historico_aula.fk_professor_cod_servidor) group by cod_disciplina order by nome_disciplina;


select cod_matricula, nome_aluno, extract(year from aluno.data_nascimento) as aluno_mais_velho from aluno order by extract(year from aluno.data_nascimento) limit 1;


select * from aluno order by (cast(substring(cod_matricula, 0, 5) as int)) desc;









