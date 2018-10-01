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
Sabendo-se dos contratempos na realização das chamadas manualmente e pretendendo otimizar tal tarefa, unindo informações relativas a alunos, disciplinas, campus, professor e frequência em um mesmo banco. 
O sistema contará com sensores localizados nas portas de cada sala de aula, que registrarão a entrada e a saída do aluno através de um microchip na carteirinha do estudante e/ou checagem de qrcode por um aplicativo instalado no smartphone do aluno.
O Sistema de Controle de Frequência de Aulas tem como objetivo gerenciar todas informações referentes a frequência de alunos em diversos campus do Ifes. Para controlar adequadamente essas informações, o sistema deverá armazenar as informações relativas aos alunos, campus, disciplinas e professores, além dos dados sobre frequência, podendo ao final gerar um conjunto de relatórios para análise tanto dos alunos quanto da instituição.


### 3.MINI-MUNDO <br>

Sobre as informações presentes no Sistema de Controle de Frequência de Alunos. Dos alunos serão armazenados os seguintes dados: código de matrícula, nome, CPF, data de nascimento, sexo, campus em que estuda e curso em que está matriculado.  Dos campi: código individual de cada campus, cidade onde se encontra e as disciplinas que oferta. Das disciplinas ofertadas: código da disciplina, nome, curso ao qual está vinculada, nome do professor a lecioná-la e carga horária. Cada disciplina gera um histórico de aula único, no qual a de constar: data da aula, hora de início e fim, carga horária mínima obrigatória, frequência dos alunos por aula e a carga horária cumprida pelos alunos. Os dados relativos aos professores que serão armazenados são: código de matrícula do servidor, nome, matérias que leciona e CPF. Com relação ao histórico de frequência individual do aluno, as informações armazenadas são: data da aula, hora de chegada e saída do aluno nas aulas, a carga horária mínima obrigatória, a frequência do aluno por aula e a carga horária cumprida.

As principais funções do sistema são de controle da entrada e saída do aluno nas salas de aula, e gerar relatórios de frequências e médias de evasão, este último para análise da instituição. Ao realizar sua matrícula no Ifes, o aluno será orientado a baixar o aplicativo que dá acesso a suas informações acadêmicas e assim conseguir a liberação do seu QRCode. O aluno mais tarde receberá ainda sua carteirinha de estudante que terá um micro chip embutido, e assim como o QRCode, esta poderá ser utilizada para registro de presença nas aulas ao ser posicionada no leitor localizados nas portas das salas. A sinalização de falta ou presença respeitará o limite de 15 minutos do horário de início e fim da aula, podendo o aluno sair da sala quantas vezes achar necessário e precisar desde que no sistema não conste um período de ausência demasiado longo.

Se o aluno for desligado do seu curso por qualquer motivo, seu QRCode será automaticamente desativado. E em caso de extravio do smartphone com o acesso do aluno, este deverá requerer na instituição o bloqueio da IMEI do aparelho e uma nova liberação.

As informações obtidas serão salvas localmente caso a rede esteja off-line, até que seja possível realizar seu envio para o sistema on-line, através do qual será possível a visualização e download dos relatórios de frequência. 


### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

[Mockups](https://github.com/ControleFrequencia/trab01/blob/master/Controle%20de%20Frequ%C3%AAncia%20de%20Aulas.pdf)

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

Principais Relatórios do Sistema de Controle de Frequência de Aulas:
    
* Relatório da frequência geral dos alunos por disciplina, incluindo as seguintes informações: código da disciplina, nome da disciplina, carga horária da disciplina, nome do professor, nome do aluno, matrícula do aluno, data da aula, frequência do aluno na disciplina.

* Relatório da frequência individual do aluno por disciplina, incluindo as seguintes informações: código da disciplina, nome da disciplina, carga horária da disciplina, nome do professor, nome do aluno, matrícula do aluno, frequência do aluno na disciplina, data da aula, hora de início e fim da aula, hora de entrada e saída do aluno.

* Relatório com os dados dos alunos por disciplina, incluindo as seguintes informações: código da disciplina, nome da disciplina, carga horária da disciplina, nome do professor, campus onde a disciplina é ofertada, curso da disciplina ofertada, nome do aluno, matrícula do aluno, curso do aluno.

* Relatório de reprovação por falta na disciplina, incluindo as seguintes informações: código da disciplina, nome da disciplina, carga horária da disciplina, nome do professor, campus onde a disciplina foi ofertada, matrícula do aluno, frequência do aluno que reprovou por falta na disciplina.

* Relatório de frequência nas disciplinas ofertadas por professor, incluindo as seguintes informações: código do servidor, nome do professor, código da disciplina, nome da disciplina, carga horária da disciplina, campus onde a disciplina foi ofertada, média de frequência dos alunos, média de reprovação por falta. 

 
#### 4.2 TABELA DE DADOS DO SISTEMA:
 
[Tabela](https://github.com/ControleFrequencia/trab01/blob/master/tabela_frequencia3%20(2).xlsx)

    
>## Marco de Entrega 01 em: (06/09/2018)<br>


### 5.MODELO CONCEITUAL<br>
    
           
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/Modelo_Conceitual-%20Controle%20de%20frequencia.png)
    
      
#### 5.1 VALIDAÇÃO DO MODELO CONCEITUAL
   * [Piscicultura](https://github.com/pisciculturainteligente/trab01): Marcelo Mendes.
   
   * [CargaPesada](https://github.com/cargapesada/trab01): Leonardo Sena e Walace Silva.  
   

#### 5.2 DECISÕES DE PROJETO
    
* Campo data_aula: um campo simples, porque vai guardar apenas o dia da aula.<br>
* Campo horario_chegada: um campo simples, vai guardar o horário da primeira entrada que o aluno deu no sistema para a aula em questão.<br>
* Campo horario_saida: um campo simples, guarda apenas a hora da última saída do aluno na aula em questão.<br>
* Campo frequencia_aula: um campo simples, vai guardar a presença/ausência do aluno na aula em uma aula ou duas.<br>
* Campo horas_frequencia_obrigatoria: um campo simples com o número de horas obrigatórias em determinada matéria.<br>
* Campo horas_frequencia_aluno: um campo simples com o número de horas atual do aluno em determinada matéria.<br>

* Campo cod_matricula: atributo chave, contém uma matrícula única e individual para o aluno no curso em que está inscrito.<br>
* Campo nome_aluno: um campo simples com o nome do aluno.<br>
* Campo cpf_aluno: um campo simples com o número do CPF do aluno.<br>
* Campo data_nascimento_aluno: um campo simples com a data de nascimento do aluno.<br>
* Campo sexo_aluno: um campo simples com o sexo do aluno.<br>

* Campo cod_curso: atributo chave, contém o código único do curso, independente dele aparecer em mais de um campus.<br>
* Campo nome_curso: um campo simples com o nome do curso.<br>

* Campo cod_campus: atributo chave, contém o código único do campus.<br>
* Campo campus: um campo simples com o nome/localidade do campus.<br>

* Campo cod_servidor: atributo chave, contém o código único e individual do servidor que exerce alguma função na instituição.<br>
* Campo nome_professor: um campo simples, contém apenas o nome do professor.<br>
* Campo cpf_professor: um campo simples com o número do CPF do professor.<br>

* Campo cod_disciplina: atributo chave, contém o código da disciplina, uma disciplina pode aparecer em mais de um curso que ainda terá o mesmo código registrado na instituição.<br>
* Campo nome_disciplina: um campo simples, guarda apenas o nome da disciplina.<br>
* Campo horas_disciplina: um campo simples com o total de horas da disciplina.<br>

* Campo horario_inicio: um campo simples, é o registro do horário em que determinada aula começa.<br>
* Campo horario_fim: um campo simples, é o registro do horário em que determinada aula acaba.<br>


>## Marco de Entrega 02 em: (17/09/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    
* Historico_Frequencia: tabela que armazena as informações relativas às aulas frequentadas pelo aluno.<br>
data_aula: campo para o registro do dia em que a aula ocorreu.<br>
horario_chegada: campo que armazena o horário em que o aluno registrou sua primeira presença do dia em determinada aula, por meio do * QRCode ou carteirinha.<br>
horario_saida: campo que armazena o horário em que o aluno registrou sua última saída da sala em determinada aula, por meio do QRCode ou carteirinha.<br>
frequencia_aula: campo que guarda se o aluno esteve ausente da aula ou presente nela.<br>
horas_frequencia_obrigatoria: campo com o número de horas presente que o aluno deve ter em determinada matéria para não ser reprovado por falta.<br>
horas_frequencia_aluno: campo com o número de horas presente que o aluno teve até o momento em determinada matéria.<br>

* Aluno: tabela que armazena as informações relativas ao aluno.<br>
cod_matricula: campo com o código único e individual que representa a matrícula do aluno no curso.<br>
nome_aluno: campo que guarda o nome do aluno.<br>
cpf_aluno: campo que armazena o número do CPF do aluno.<br>
data_nascimento_aluno: campo com a data de nascimento do aluno.<br>
sexo_aluno: campo que guarda o sexo do aluno.<br>
campus: campo com o campus da instituição onde o aluno está matriculado.<br>
nome_curso: campo com o nome do curso em que o aluno está matriculado. <br>

* Curso: tabela que armazena os cursos da instituição.<br>
cod_curso: campo com o código do curso.<br>
nome_curso: campo com o nome do curso.<br>

* Campus: tabela que armazena os campus da instituição.<br>
cod_campus: campo com o código do campus.<br>
campus: campo com o nome campus.<br>

* Professor: tabela que armazena as informações relativas aos professores.<br>
cod_servidor: campo com o código único e individual do professor.<br>
nome_professor: campo que guarda o nome do professor.<br>
nome_disciplina: campo com o nome da disciplina lecionada pelo professor.<br>
cpf_professor: campo com o número do CPF do professor.<br>

* Disciplina: tabela que armazena as disciplinas aplicadas dentro da instituição.<br>
cod_disciplina: campo com o código da disciplina.<br>
nome_disciplina: campo com o nome da disciplina.<br>
horas_disciplina: campo com o número de horas total da disciplina.<br>

* Historico_Aula: tabela que armazena as informações relativas às aulas dadas pelos professores.<br>
data_aula: campo para o registro do dia em que a aula ocorreu.<br>
horario_inicio: campo com o horário em que a aula começou.<br>
horario_fim: campo com o horário em que a aula terminou.<br>
frequencia_aula: campo que guarda se o aluno esteve ausente da aula ou presente nela.<br>
horas_frequencia_obrigatoria: campo com o número de horas presente que o aluno deve ter em determinada matéria para não ser reprovado por falta.<br>
horas_frequencia_aluno: campo com o número de horas presente que o aluno teve até o momento em determinada matéria.<br>


### 6	MODELO LÓGICO<br>
 
![Alt text](https://github.com/ControleFrequencia/trab01/blob/master/Model_L%C3%B3gico_frequencia.png)

### 7	MODELO FÍSICO<br>
  [Script SQL 7](https://github.com/ControleFrequencia/trab01/blob/master/create1.sql) 
       
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
  [Script SQL 8.1](https://github.com/ControleFrequencia/trab01/blob/master/insert.sql)   

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
  [Script SQL 8.2](https://github.com/ControleFrequencia/trab01/blob/master/create%20e%20insert.sql)  
  [Backup](https://github.com/ControleFrequencia/trab01/blob/master/trab.sql)
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
  [Script SQL 8.3](https://github.com/ControleFrequencia/trab01/blob/master/drop.sql) <br>
  [Backup](https://github.com/ControleFrequencia/trab01/blob/master/trabalho.sql)

    
>## Marco de Entrega 03 em: (27/09/18) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11).
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

>## Marco de Entrega 04 em: (18/10/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
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

 
