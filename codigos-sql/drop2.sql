
INSERT INTO Curso (cod_curso, nome_curso)
VALUES (74024, 'Licenciatura em Matemática'),
(21111, 'Sistemas de Informação'), (30157, 'Arquitetura e Urbanismo'),
(16412, 'Engenharia Mecânica'), (20013, 'Bacharelado em Física'),
(33152, 'Licenciatura em Letras/Português'), (91500, 'Engenharia de Controle e Automação'),
(48991, 'Quimica Indistrial'),(78422, 'Administração');


INSERT INTO Campus (cod_campus, campus)
VALUES ('IFES0001', 'Vitoria'), ('IFES0003', 'Serra'),
('IFES0005', 'Colatina'), ('IFES0002', 'Aracruz'), 
('IFES0004', 'Cariacica');


INSERT INTO Disciplina (cod_disciplina, nome_disciplina, horas_disciplina)
VALUES (8, 'Calculo 1', 90), (23, 'Matematica Discreta', 60), (12, 'Maquinas de Fluxo', 60),
(207, 'Arquitetura e Organizaçao de Computadores', 60), (229, 'Filosofia', 30),
(1275, 'Estatistica', 60), (1908, 'Historia da educaçao', 30), (501, 'Urbanismo IV', 60);


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


INSERT INTO Historico_Aula (id_historico_aula, data_aula, presenca, horario_inicio, horario_saida)
VALUES(1, '2018-08-20', 'P', '07:50:00', '09:30:00'), (12, '2018-08-21', 'P', '08:20:00', '10:00:00'),
(3, '2018-08-22', 'F', '09:50:00', '11:30:00'), (22, '2018-08-23', 'P', '16:10:00', '19:00:00'),
(42, '2018-08-24', 'F', '20:00:00', '21:00:00'), (2, '2018-08-25', 'P', '09:50:00', '11:20:00'),
(13, '2018-08-26', 'P', '08:20:00', '10:00:00'), (4, '2018-08-27', 'F', '20:00:00', '21:00:00'),
(5, '2018-08-28', 'P', '08:20:00', '09:40:00'), (6, '2018-08-29', 'F', '18:00:00', '21:00:00');


DROP TABLE IF EXISTS Curso CASCADE;
DROP TABLE IF EXISTS Campus CASCADE;
DROP TABLE IF EXISTS Disciplina CASCADE;
DROP TABLE IF EXISTS Professor CASCADE; 
DROP TABLE IF EXISTS Aluno CASCADE;
DROP TABLE IF EXISTS Historico_Aula CASCADE;
