
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
																 
											 
select * from campi;

																		 
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


select cod_matricula, nome_aluno, nome_disciplina, nome_professor, presenca, nome_curso, campus from aluno inner join gera on (gera.fk_aluno_cod_matricula = aluno.cod_matricula) inner join historico_aula on (historico_aula.id_historico_aula = gera.fk_historico_aula_id_historico_aula) inner join disciplina on (disciplina.cod_disciplina = historico_aula.fk_disciplina_cod_disciplina) inner join professor on (professor.cod_professor = historico_aula.fk_professor_cod_servidor) inner join curso on (curso.cod_curso = disciplina.fk_curso_cod_curso) inner join campi on (campi.cod_campus = curso.fk_campus_cod_campus) order by cod_matricula;

select cod_matricula, nome_aluno, nome_disciplina from aluno inner join gera on (gera.fk_aluno_cod_matricula = aluno.cod_matricula) inner join historico_aula on (historico_aula.id_historico_aula = gera.fk_historico_aula_id_historico_aula) inner join disciplina on (disciplina.cod_disciplina = historico_aula.fk_disciplina_cod_disciplina) order by cod_matricula;

select cod_campus, campus, count(cod_disciplina) as quantidade_disciplinas from campi inner join curso on (curso.fk_campus_cod_campus = campi.cod_campus) inner join disciplina on (disciplina.fk_curso_cod_curso = curso.cod_curso) group by cod_campus order by campus;

select cod_disciplina, nome_disciplina, count(distinct cod_professor) as quantidade_professores from disciplina inner join historico_aula on (historico_aula.fk_disciplina_cod_disciplina = disciplina.cod_disciplina) inner join professor on (professor.cod_professor = historico_aula.fk_professor_cod_servidor) group by cod_disciplina order by nome_disciplina;

select cod_matricula, nome_aluno, extract(year from aluno.data_nascimento) as aluno_mais_velho from aluno order by extract(year from aluno.data_nascimento) limit 1;

select * from aluno order by (cast(substring(cod_matricula, 0, 5) as int)) desc;

SELECT nome_aluno, data_nascimento FROM aluno WHERE UPPER(nome_aluno) LIKE UPPER('%r%') GROUP BY nome_aluno, data_nascimento;

SELECT nome_professor, cpf_professor FROM professor WHERE UPPER(nome_professor) LIKE UPPER('%a%') AND UPPER(cod_professor) LIKE UPPER('%00%') GROUP BY nome_professor, cpf_professor;

select cod_professor, nome_professor, cod_disciplina, nome_disciplina from professor inner join historico_aula on (historico_aula.fk_professor_cod_servidor = professor.cod_professor) inner join disciplina on (disciplina.cod_disciplina = historico_aula.fk_disciplina_cod_disciplina) group by cod_professor, cod_disciplina order by nome_professor;

select (cast(substring(cod_matricula, 0, 5) as int)) as ano_ingresso, count(cod_matricula) as quantidade_aluno from aluno group by ano_ingresso order by ano_ingresso;
			 
select min(cast(substring(cod_matricula, 0, 6) as int)) as periodo_ingresso_aluno_mais_antigo from aluno;
							 
select avg(cast(substring(cod_matricula, 0, 5) as int) - extract(year from aluno.data_nascimento)) as media_idade_ingresso_alunos from aluno;
								   

SELECT a.nome_curso, c.campus FROM curso a RIGHT JOIN campi c ON a.fk_campus_cod_campus = c.cod_campus ORDER BY c.cod_campus;

SELECT a.nome_curso, c.nome_disciplina FROM curso a LEFT JOIN disciplina c ON a.cod_curso = c.fk_curso_cod_curso ORDER BY c.nome_disciplina;

SELECT a.data_aula, c.nome_professor FROM historico_aula a LEFT JOIN professor c ON a.fk_professor_cod_servidor = c.cod_professor ORDER BY a.data_aula;

SELECT c.nome_disciplina, a.data_aula, a.horario_inicio, a.horario_saida FROM historico_aula a RIGHT JOIN disciplina c ON a.fk_disciplina_cod_disciplina = c.cod_disciplina ORDER BY C.nome_disciplina;


select *from alunos_matriculados;
select * from disciplinas_curso;
select * from cargaHoraria_materia_professor;
select * from imei_smartphone_aluno;
select * from curso_do_campus;

SELECT DISTINCT ha1.data_aula, ha1.horario_inicio, (ha2.horario_saida - '00:50:00') AS hora_aula_50min FROM historico_aula AS ha1 INNER JOIN historico_aula AS ha2 ON (ha2.horario_saida = ha1.horario_inicio + '01:40:00') ORDER BY ha1.data_aula;


SELECT * FROM historico_aula WHERE horario_inicio IN( SELECT horario_inicio FROM historico_aula WHERE horario_saida > '11:40:00');

SELECT nome_disciplina, cod_disciplina from disciplina WHERE cod_disciplina IN( SELECT cod_disciplina from disciplina WHERE nome_disciplina ILIKE '%m%');

SELECT nome_aluno, sexo_aluno from aluno WHERE data_nascimento IN( SELECT data_nascimento from aluno WHERE sexo_aluno = 'M');






