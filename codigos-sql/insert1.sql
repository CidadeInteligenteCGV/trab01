INSERT INTO curso (cod_curso, nome_curso)
VALUES (74024, 'Licenciatura em Matemática'),
(21111, 'Sistemas de Informação'), (30157, 'Arquitetura e Urbanismo'),
(16412, 'Engenharia Mecânica'), (20013, 'Bacharelado em Física'),
(33152, 'Licenciatura em Letras/Português'), (91500, 'Engenharia de Controle e Automação'),
(48991, 'Quimica Indistrial'),(78422, 'Administração');


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


INSERT INTO historico_aula (data_aula,horario_inicio, horario_fim, frequencia_aula, horas_frequencia_obrigatoria, horas_frequencia_aluno)
VALUES( '2018-08-20', '07:50:00', '09:30:00', 'P', '67.5', 10), ( '2018-08-21', '08:20:00', '10:00:00', 'P', '45', 50),
( '2018-08-22', '09:50:00', '11:30:00', 'F', '45', 45), ( '2018-08-23', '16:10:00', '19:00:00', 'P', '45', 5),
( '2018-08-24', '20:00:00', '22:10:00', 'F', '67.5', 70), ( '2018-08-25', '09:50:00', '11:30:00', 'P', '22.5', 23),
( '2018-08-26', '08:20:00', '10:00:00', 'P', '45', 44), ( '2018-08-27', '20:00:00', '22:10:00', 'F', '67.5', 68),
( '2018-08-28', '08:20:00', '10:00:00', 'P', '45', 60), ( '2018-08-29', '18:00:00', '19:30:00', 'F', '22.5', 5);


INSERT INTO historico_frequencia (data_aula,horario_chegada, horario_saida, frequencia_aula, horas_frequencia_obrigatoria, horas_frequencia_aluno)
VALUES( '2018-08-20', '07:50:00', '09:30:00', 'P', '67.5', 10), ( '2018-08-21', '08:50:00', '10:00:00', 'P', '45', 50),
( '2018-08-22', '00:00:00', '00:00:00', 'F', '45', 45), ( '2018-08-23', '17:00:00', '19:00:00', 'P', '45', 5),
( '2018-08-24', '00:00:00', '00:00:00', 'F', '67.5', 70), ( '2018-08-25', '09:50:00', '11:20:00', 'P', '22.5', 23),
( '2018-08-26', '08:20:00', '10:00:00', 'P', '45', 44), ( '2018-08-27', '00:00:00', '00:00:00', 'F', '67.5', 68),
( '2018-08-28', '08:35:00', '09:40:00', 'P', '45', 60), ( '2018-08-29', '00:00:00', '00:00:00', 'F', '22.5', 5);
