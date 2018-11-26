# Controle de Frequência de Aulas
Trabalho desenvolvido durante a disciplina de Banco de Dados I no semestre 2018/2.

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo:
* Brunna Dalzini de Oliveira: bdalzini@gmail.com <br>
* Daniela Salomão Santa Clara: danisantaclara@gmail.com <br>
* Leonir dos Reis Alves: lreis.ti@gmail.com <br>
* Mayannara Trindade Carvalho: mayannara@outlook.com <br>


### 2. INTRODUÇÃO E MOTIVAÇAO<br>
 
### Controle de Frequência de Aulas <br>
O Sistema de Controle de Frequência de Aulas (CFA) visa colaborar com o professor no ato de realizar
a chamada dos alunos em sala. 
Sabendo-se dos contratempos na realização das chamadas manualmente e pretendendo otimizar essa tarefa, unindo informações relativas a alunos, disciplinas, campus, professor e frequência em um mesmo banco. 
O sistema contará com sensores localizados nas portas de cada sala de aula, que registrarão a entrada e a saída do aluno através de um microchip na carteirinha do estudante e/ou checagem de qrcode através de um aplicativo instalado no smartphone do aluno.
O Sistema de Controle de Frequência de Aulas tem como objetivo gerenciar todas as informações referentes a frequência de alunos em diversos campus do Ifes. Para controlar adequadamente essas informações, o sistema deverá armazenar as informações relativa aos alunos, campus, disciplinas e professores, além dos dados sobre frequência, podendo ao final gerar um relatório para análise tanto dos alunos quanto da instituição.


### 3.MINI-MUNDO <br>

Sobre as informações presentes no Sistema de Controle de Frequência de Alunos. Dos alunos serão armazenados os seguintes dados: código de matrícula, nome, CPF, data de nascimento, sexo e imei (identificador do celular).  Do campus: código único para cada campus e nome do campus. Dos cursos: código do curso e nome do curso. Das disciplinas ofertadas: código da disciplina, nome, carga horária. Cada disciplina irá possuir um histórico de aula único, no qual constará: id do histórico gerado da aula, data da aula, presença do aluno e horário de início e saída das aulas. Os dados relativos aos professores que serão armazenados são: código único do servidor, nome e CPF. 

As principais funções do sistema são de controle da entrada e saída do aluno nas salas de aula, e gerar relatório de frequência dos alunos e realizar a chamada em sala de aula de uma forma mais prática. Ao realizar sua matrícula no Ifes, o aluno será orientado a baixar o aplicativo que dá acesso a suas informações acadêmicas e assim conseguir a liberação do seu QRCode. O aluno mais tarde receberá ainda sua carteirinha de estudante que terá um micro chip embutido, e assim como o QRCode, esta poderá ser utilizada para registro de presença nas aulas ao ser posicionada no leitor localizado nas portas das salas. A sinalização de falta ou presença respeitará o limite de 15 minutos do horário de início e fim da aula, podendo o aluno sair da sala quantas vezes achar necessário e precisar desde que no sistema não conste um período de ausência demasiadamente longo.

Para evitar casos onde o aluno registre sua entrada, mas permanece fora de sala durante o período da aula e só retorne ao final da mesma para conseguir a presença, os alunos serão notificados ao decorrer da aula para fazer um check in de permanência. Essa comprovação será por meio de um QRCode localizado na parede da porta, dentro da sala.

Se o aluno for desligado do seu curso por qualquer motivo, seu QRCode será automaticamente desativado. E em caso de extravio do smartphone com o acesso do aluno, este deverá requerer na instituição o bloqueio da IMEI do aparelho e uma nova liberação.

As informações obtidas serão salvas localmente caso a rede esteja off-line, até que seja possível realizar seu envio para o sistema on-line, através do qual será possível a visualização e download do relatório de frequência.  

OBS.: Sistema de Controle de Frquência usando o Ifes como exemplo, mas podendo ser adquirido por qualquer instituicão. 


### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

[Mockups - Desktop](https://github.com/ControleFrequencia/trab01/blob/master/mockups/Controle%20de%20Freque%CC%82ncia%20de%20Aulas%20-%20Desktop.pdf)

[Mockups - Mobile](https://github.com/ControleFrequencia/trab01/blob/master/mockups/Controle%20de%20Frequ%C3%AAncia%20de%20Aulas%20-%20Telas%20Mobile.pdf)

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

Principais Relatórios do Sistema de Controle de Frequência de Aulas:

*  **Relatório da frequência geral dos alunos por disciplina, incluindo as seguintes informações:** campus onde a disciplina é ofertada, curso a qual a disciplina pertence, código da disciplina, nome da disciplina, carga horária da disciplina, nome do professor, nome do aluno, matrícula do aluno, data da aula, frequência do aluno na disciplina. 
    
* **Relatório da frequência individual do aluno por disciplina, incluindo as seguintes informações:** código da disciplina, nome da disciplina, carga horária da disciplina, nome do professor, nome do aluno, código de matrícula do aluno, frequência do aluno na disciplina, data da aula, horas disciplina, hora de entrada e saída do aluno.

* **Relatório geral de dados dos alunos por disciplina, incluindo as seguintes informações:** código da disciplina, nome da disciplina, carga horária da disciplina, nome do professor, campus onde a disciplina é ofertada, curso da disciplina ofertada, nome do aluno, matrícula do aluno, curso do aluno.

* **Relatório de reprovação por falta na disciplina, incluindo as seguintes informações:** código da disciplina, nome da disciplina, carga horária da disciplina, nome do professor, campus onde a disciplina foi ofertada, matrícula do aluno, frequência do aluno que reprovou por falta na disciplina.

* **Relatório de frequência nas disciplinas ofertadas por professor, incluindo as seguintes informações:** código do servidor, nome do professor, código da disciplina, nome da disciplina, carga horária da disciplina, campus onde a disciplina foi ofertada, média de frequência dos alunos, média de reprovação por falta. 

* **Relatório de todas as disciplinas ofertadas por campus, incluindo as seguintes informações:**  código da disciplina, nome da disciplina, carga horária da disciplina, nome do professor, curso onde a disciplina está alocada, campus onde a disciplina é ofertada.

 
#### 4.2 TABELA DE DADOS DO SISTEMA:
 
[Tabela](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/tabela_frequencia4.xlsx)

    
>## Marco de Entrega 01 em: (06/09/2018)<br>


### 5.MODELO CONCEITUAL<br>
    
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/modelos/modelo4.png)
    
      
#### 5.1 VALIDAÇÃO DO MODELO CONCEITUAL
   
   * [CargaPesada](https://github.com/pulseirasaude/trab01): Leonardo Sena e Walace Silva.  
   
   * [Managua](https://github.com/Earth-Aid/Managua): Anne Caroline Silva.
   

#### 5.2 DECISÕES DE PROJETO
    
* **Campo id_historico_aula:** um campo simples, contém o identificador do histórico da aula.<br>    
* **Campo data_aula:** um campo simples, porque vai guardar apenas o dia da aula.<br>
* **Campo presenca:** um campo simples que armazena presença ou falta do aluno.<br>

* **Campo cod_matricula:** atributo chave, contém uma matrícula única e individual para o aluno no curso em que está inscrito.<br>
* **Campo nome_aluno:** um campo simples com o nome do aluno.<br>
* **Campo cpf_aluno:** um campo simples com o número do CPF do aluno.<br>
* **Campo data_nascimento_aluno:** um campo simples com a data de nascimento do aluno.<br>
* **Campo sexo_aluno:** um campo simples com o sexo do aluno.<br>
* **Campo imei:** um campo simples que armazenará o identificador do celular do aluno.<br>

* **Campo cod_curso:** atributo chave, contém o código único do curso, independente dele aparecer em mais de um campus.<br>
* **Campo nome_curso:** um campo simples com o nome do curso.<br>

* **Campo cod_campus:** atributo chave, contém o código único do campus.<br>
* **Campo campus:** um campo simples com o nome/localidade do campus.<br>

* **Campo cod_professor:** atributo chave, contém o código único e individual do professor que leciona a disciplina.<br>
* **Campo nome_professor:** um campo simples, contém apenas o nome do professor.<br>
* **Campo cpf_professor:** um campo simples com o número do CPF do professor.<br>

* **Campo cod_disciplina:** atributo chave, contém o código da disciplina, uma disciplina pode aparecer em mais de um curso que ainda terá o mesmo código registrado na instituição.<br>
* **Campo nome_disciplina:** um campo simples, guarda apenas o nome da disciplina.<br>
* **Campo horas_disciplina:** um campo simples com o total de horas da disciplina.<br>

* **Campo horario_inicio:** um campo simples, é o registro do horário em que determinada aula começa.<br>
* **Campo horario_saida:** um campo simples, é o registro do horário em que determinada aula acaba.<br>



>## Marco de Entrega 02 em: (17/09/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    
* **Aluno:** tabela que armazena as informações relativas ao aluno.<br>
    - **cod_matricula:** campo com o código único e individual que representa a matrícula do aluno no curso.<br>
    - **nome_aluno:** campo que guarda o nome do aluno.<br>
    - **cpf_aluno:** campo que armazena o número do CPF do aluno.<br>
    - **data_nascimento_aluno:** campo com a data de nascimento do aluno.<br>
    - **sexo_aluno:** campo que guarda o sexo do aluno.<br>
    - **imei:** campo que armazena o número identificador do celular do aluno.<br>

* **Curso:** tabela que armazena os cursos da instituição.<br>
    - **cod_curso:** campo com o código do curso.<br>
    - **nome_curso:** campo com o nome do curso.<br>

* **Campus:** tabela que armazena os campus da instituição.<br>
    - **cod_campus:** campo com o código do campus.<br>
    - **campus:** campo com o nome do campus.<br>

* **Professor:** tabela que armazena as informações relativas aos professores.<br>
    - **cod_servidor:** campo com o código único e individual do professor.<br>
    - **nome_professor:** campo que guarda o nome do professor.<br>
    - **cpf_professor:** campo com o número do CPF do professor.<br>

* **Disciplina:** tabela que armazena as disciplinas aplicadas dentro da instituição.<br>
    - **cod_disciplina:** campo com o código da disciplina.<br>
    - **nome_disciplina:** campo com o nome da disciplina.<br>
    - **horas_disciplina:** campo com o número de horas total da disciplina.<br>

* **Historico_Aula:** tabela que armazena as informações relativas às aulas dadas pelos professores.<br>
    - **id_historico_aula:** campo que armazena o identificador do histórico gerado da aula.<br>
    - **data_aula:** campo para o registro do dia em que a aula ocorreu.<br>
    - **presenca:** campo com a informação se o aluno estava ou não presente da sala de aula.<br>
    - **horario_inicio:** campo com o horário de início da disciplina.<br>
    - **horario_saida:** campo com o horário de fim da disciplina.<br>


### 6	MODELO LÓGICO<br>
 
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/modelos/L%C3%B3gico_2.png)

### 7	MODELO FÍSICO<br>
  [Script SQL 7](https://github.com/ControleFrequencia/trab01/blob/master/modelos/create3.sql) 
       
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
  [Script SQL 8.1](https://github.com/ControleFrequencia/trab01/blob/master/codigos-sql/insert2.sql)   

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
  [Script SQL 8.2](https://github.com/ControleFrequencia/trab01/blob/master/codigos-sql/create%20e%20insert2.sql)  
  [Backup](https://github.com/ControleFrequencia/trab01/blob/master/codigos-sql/insertcreate.sql)
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
  [Script SQL 8.3](https://github.com/ControleFrequencia/trab01/blob/master/codigos-sql/drop2.sql) <br>
  [Backup](https://github.com/ControleFrequencia/trab01/blob/master/codigos-sql/dropbackup.sql)

#### 8.4 PRINCIPAIS FLUXOS DE INFORMAÇÃO E PRINCIPAIS TABELAS DO SISTEMA
    a) Quais os principais fluxos de dados de informação no sistema em densenvolvimento (mínimo 3)
    b) Quais as tabelas que conterão mais dados no sistema em densenvolvimento (mínimo 3)
    c) informe quais as 5 principais tabelas do sistema em densenvolvimento.
    
>## Marco de Entrega 03 em: (27/09/18) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

SELECT * FROM aluno;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/select_aluno.png)

SELECT * FROM campus;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/select_campus.png)

SELECT * FROM curso;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/select_curso.png)

SELECT * FROM disciplina;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/select_disciplina.png)

SELECT * FROM professor;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/select_professor.png)

SELECT * FROM historico_aula;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/select_historico_aula.png)


#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

1ª Consulta:

SELECT * FROM aluno WHERE cod_matricula = '20162QUI041';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/aluno%20where%20cod%20matricula.PNG)

2ª Consulta:

SELECT * FROM historico_aula WHERE data_aula > '2018-08-25';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/histo%20aula%20where%20maior2.PNG)

3ª Consulta:

SELECT * FROM curso WHERE cod_curso = 20013;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/curso%20where%20codigo.PNG)

4ª Consulta:

SELECT * FROM disciplina WHERE horas_disciplina < 50;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/disciplina%20where%20horas.PNG)

5ª Consulta:

SELECT * FROM historico_frequencia WHERE horario_saida = '10:00:00';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/hist%20freq%20where%20horario.PNG)

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11).

Consultas que envolvam os operadores lógicos AND, OR e Not

1ª Consulta:

SELECT * FROM historico_aula WHERE data_aula > '2018-08-21' AND horario_inicio = '09:50:00';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/histo%20where%20and.PNG)

2ª Consulta:

SELECT * FROM historico_frequencia WHERE horario_chegada < '08:00:00' OR horario_saida > '17:00:00' ;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/histo%20freq%20where%20or.PNG)

3ª Consulta:

SELECT * FROM disciplina WHERE NOT horas_disciplina > 40;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/disciplina%20where%20not.PNG)

4ª Consulta:

SELECT * FROM professor WHERE cod_servidor = '2007IFES023' OR nome_professor = 'Mariana Rocha';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/professor%20where%20or.PNG)

5ª Consulta:

SELECT * FROM campus WHERE cod_campus = 'IFES0005' AND campus = 'Colatina';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/campus%20where%20and.PNG)

Consultas com operadores aritméticos

1ª Consulta:

select horario_inicio, horario_fim, 
	(horario_fim - horario_inicio) as duracao_aula
	from historico_aula;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/aritmetica1.png)

2ª Consulta:

select nome_aluno, cod_matricula, data_nascimento_aluno,
	(cast(substring(cod_matricula, 0, 5) as int) - extract(year from aluno.data_nascimento_aluno)) as idade_ingresso
	from aluno;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/aritmetica2.png)

3ª Consulta:

select data_aula, horario_chegada, horario_saida,
	(horario_saida - horario_chegada) as tempo_em_sala
	from historico_frequencia;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/aritmetica3.png)


Consultas com operação de renomear nomes de campos ou tabelas

1ª Consulta:

ALTER TABLE aluno RENAME COLUMN data_nascimento_aluno TO data_nascimento;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/alter%20aluno%20data.PNG)

2ª Consulta:

ALTER TABLE campus RENAME TO campi;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/alter%20campus%20rename.PNG)

3ª Consulta:

ALTER TABLE professor RENAME COLUMN cod_servidor TO cod_professor;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/Capturar.PNG)


    
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

Consultas que envolvam like ou ilike

1ª Consulta:

select * from campus where campus ilike '%c%';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/ilike1.png)

2ª Consulta:

select * from aluno as al where al.nome_aluno ilike '%f%' and al.cod_matricula ilike '%f%';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/ilike2.png)

3ª Consulta:

select * from curso where nome_curso ilike '%l%' and nome_curso like '%em%';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/ilikelike1.png)

4ª Consulta:

select * from campus where campus ilike '%a%' and campus like '%a';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/ilikelike2.png)

5ª Consulta:

select * from aluno where nome_aluno like '%Ribeiro%' and campus = 'Vitória';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/like1.png)

6ª Consulta:

select * from professor where nome_professor like '_ar%';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/like2.png)

7ª Consulta:

select * from disciplina where nome_disciplina like 'M%';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/like3.png)

8ª Consulta:

select * from curso where nome_curso like '%o';<br>	
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/like4.png)

9ª Consulta:

select * from professor where nome_disciplina not like '%o';<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/notlike.png)

Consulta para cada tipo de função data apresentada

1ª Consulta:

select nome_aluno, 
	age('2018-10-1', data_nascimento_aluno) as idade
	from aluno;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/dataAge.png)

2ª Consulta:

select nome_aluno, data_nascimento_aluno,
	date_part('month', data_nascimento_aluno) as nasceu_mes_primeiro_semestre_ano
	from aluno
	where date_part('month', data_nascimento_aluno) < 7;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/dataDatePart.png)

3ª Consulta:

select nome_aluno, 
	extract('year' from data_nascimento_aluno) as ano_nascimento
	from aluno;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/dataExtract.png)

    

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

1ª Consulta:

DELETE FROM disciplina WHERE cod_disciplina = 229 OR cod_disciplina = 8;

Antes:<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/select%20disciplina.PNG)

Depois:<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/depois%20disciplina.PNG)

2ª Consulta:

DELETE FROM professor WHERE cpf_professor = '67053106349' AND nome_professor = 'Leonardo Souza';

Antes:<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/antes%20professor.PNG)

Depois:<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/depois%20professor.PNG)

3ª Consulta:

UPDATE curso SET cod_curso =53000, nome_curso ='Engenharia Civil' WHERE cod_curso=30157;

Antes:<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/select%20curso.PNG)

Depois:<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/depois%20curso.PNG)

4ª Consulta:

UPDATE historico_frequencia SET id_historico_frequencia =181018, data_aula = '2018-10-18', horario_chegada = '19:00:00', horario_saida = '21:00:00' WHERE id_historico_frequencia=210818;

Antes:<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/select%20historico%20frequencia.PNG)

Depois:<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/histo%20depois.PNG)

5ª Consulta:

DELETE FROM campus WHERE cod_campus = 'IFES0003';

Antes:<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/select%20campus.PNG)

Depois:<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/depois%20campus.PNG)

6ª Consulta:

UPDATE historico_aula SET data_aula = '2018-10-17' WHERE id_historico_aula=48;

Antes:<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/select%20historico%20aula.PNG)

Depois:<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/tabelas-consultas/imagens/depois%20hist%20aula.PNG)

>## Marco de Entrega 04 em: (18/10/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>

1ª Consulta:

SELECT nome_aluno, data_nascimento_aluno FROM aluno WHERE UPPER(nome_aluno) LIKE UPPER('%r%') GROUP BY nome_aluno, data_nascimento_aluno;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/group1.PNG)

2ª Consulta:

SELECT nome_professor, cpf_professor FROM professor WHERE UPPER(nome_professor) LIKE UPPER('%a%') AND UPPER(cod_professor) LIKE UPPER('%00%') GROUP BY nome_professor, cpf_professor;<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/group2.PNG)

3ª Consulta:


![Alt text]()

4ª Consulta:


![Alt text]()

5ª Consulta:


![Alt text]()

6ª Consulta:


![Alt text]()

#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>

1ª Consulta:


![Alt text]()

2ª Consulta:


![Alt text]()

3ª Consulta:


![Alt text]()

4ª Consulta:


![Alt text]()

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
	
1ª Consulta:


![Alt text]()

2ª Consulta:


![Alt text]()

3ª Consulta:


![Alt text]()

4ª Consulta:


![Alt text]()

5ª Consulta:


![Alt text]()

6ª Consulta:


![Alt text]()

#### 9.10	SUBCONSULTAS (Mínimo 3)<br>

1ª Consulta:

SELECT * FROM historico_aula WHERE horario_inicio IN( SELECT horario_inicio FROM historico_aula WHERE horario_fim > '11:40:00');<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/subc1.PNG)

2ª Consulta:


SELECT nome_disciplina, cod_disciplina from disciplina WHERE cod_disciplina IN( SELECT cod_disciplina from disciplina WHERE nome_disciplina ILIKE '%m%');<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/subc2.PNG)

3ª Consulta:

SELECT nome_aluno, sexo_aluno from aluno WHERE data_nascimento_aluno IN( SELECT data_nascimento_aluno from aluno WHERE sexo_aluno = 'M');<br>
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/subc3.PNG)


### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (08/11/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo..

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu12, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")

 
