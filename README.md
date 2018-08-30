# Controle de Frequência de Aulas
Trabalho desenvolvido durante a disciplina de BD1 no semestre de 2018/2.

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo:
* Brunna Dalzini de Oliveira: bdalzini@gmail.com <br>
* Daniela Salomâo Santa Clara: danisantaclara@gmail.com <br>
* Leonir dos Reis Alves: lreis.ti@gmail.com <br>
* Mayannara Trindade Carvalho: mayannara@outlook.com <br>

### 2. INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> 
<br>e motivação da escolha realizada. <br>
 
### Controle de Frequência de Aulas <br>
O Sistema de Controle de Frequência de Aulas tem como objetivo auxiliar o professor no ato de realizar a chamada dos alunos em sala. 
O professor perde cerca de 10 minutos para realizar a chamada a cada aula, o que além de requerer a atenção do aluno no momento de respondê-la, também é atrasada por vezes pela falta de rede ou mesmo de computador. 
Pensando nesses contratempos e no horário disponível para a aula, o presente sistema visa a automatização de todo o processo de chamada. 
O sistema contará com sensores localizados nas portas de cada sala de aula, que registrarão a entrada e saída do aluno através de um microchip na carteirinha do estudante e/ou checagem de qrcode por um aplicativo instalado no smartphone do aluno. O lançamento de presença ou falta será feito com base na primeira entrada e última saída registrada em sala no horário da aula. Além de controlar e registrar a entrada e saída do aluno na portaria por meio de catraca eletrônica.

#### Porque usar controle de acesso <br>

Segurança, Tranquilidade, Proteção ao Patrimônio e Registro de Pessoas
A implantação do controle de acesso em escolas pode ser feito por catracas, pontos de acesso instalados nas portas das salas de aula, tudo gerido através de uma sistema de controle de acesso integrado ao servidor e banco de dados da instituição de ensino.
Este tipo de sistema normalmente  é instalado na entrada (portaria) do Estabelecimento de Ensino, monitorando e controlando a entrada de alunos, professores e demais funcionários com precisão e segurança. 

#### Vantagens das Catracas Eletrônicas nas Escolas <br>

Relatórios de acesso em tempo real
O Sistema de Controle de Acesso quando implementado de forma a contabilizar a frequência dos alunos disponibiliza relatórios precisos dos ingressos realizados para dentro ou para fora da instituição. Possibilitando assim, um maior acompanhamento da frequência que é disponibilizado para o aluno e/ou pais de alunos, e também para todo equipe pedagógica e professores.

Maior segurança para alunos e professores
A catraca eletrônica instalada na estrada da escola, controla o acesso de alunos, professores, pais e demais funcionários com tranquilidade e segurança. Todas as pessoas que frequentam a instituição cadastram seus dados no sistema de controle de acesso, e tem sua entrada liberada quando utilizam um cartão de acesso. Quando a pessoa é identificada pelo sistema, há liberação da sua na instituição.

Não permite o acesso de pessoas desconhecidas
Pessoas que não são cadastradas no sistema ou não recebem o cartão de acesso ficam impedidas de entrar na instituição. Esse ponto é muito positivo e traz diversos benefícios para quem frequenta o ambiente escolar, pois evita, por exemplo, o tráfico de drogas, sequestros, assaltos e outros tipos de violência.
 

### 3.MINI-MUNDO <br>

O Sistema consiste no Controle de Frequência de Aulas, e tem como objetivo principal, registrar a frequências dos alunos durante o período letivo. Sua principais funções são: cadastro de pessoas (aluno), controle de entrada e saída do aluno na instituição (portaria), controle de entrada e saída do aluno na sala de aula, relatórios de frequências.
Ao se matricular na instituição (IFES), o aluno é orientado a baixar o app que dá acesso a suas informações acadêmicas e realizar a liberação ID para utilização de QRCode disponibilizado para smartphones. Dentro de 5 dias e antes do ínicio das aulas, o aluno recebe a carteirinha do estudante, esta carteirinha além de conter os seus dados pessoais, vem com um micro chip que se comunica com o sistema e servidores da instituição. 
Ao iniciar o período letivo, quando o aluno chegar a instituição, deverá acessar a catraca eletrônica e por meio de aproximação deverá posicionar a carteirinha de estudante ou o código QRcode para leitura e liberação da catraca. Neste momento o sistema registra a sua entrada no Campus. De acordo com a disciplina matriculada, o aluno deverá se deslocar até a sala correta onde a disciplina será lecionada e para ter acesso a sala de aula e registrar sua frequência, o mesmo deverá mais uma vez posicionar sua carteirinha ou QRcode no leitor localizada na entrada da sala de aula. O aluno poderá sair da sala quantos vezes achar necessário e precisar, porém para que o sistema registre sua frequência é necessário que sua última saída registrada seja dentro dos últimos 15 minutos de aula, esta mesma regra também é aplicada no momento do início da aula, o aluno disponibiliza de até 15 minutos de tolerância para que o sistema processe sua frequência (entrada). Via de regra, o aluno deverá ir até o professor para que o mesmo acesse o sistema e realize qualquer tipo de alteração de dados lançados no sistema. 
O sistema deverá guardar o status dos alunos mesmo se a rede estiver off-line, até que seja possível fazer seu envio para o banco de dados on-line, e assim, gerar um relatório de frequência.
O aluno pode optar acessar o Campus com a carteirinha de estudante ou o código QRcode, sendo necessário apenas uma das modalidades.
Caso haja extravio de carteirinha, o aluno deverá comunicar o registro acadêmico para que seja confeccionada uma nova carteirinha. Se o aluno for desligado do seu curso por qualquer motivo, automaticamente o seu QRcode é inativado e sua carteirinha perde a validação de acesso ao Campus. A carteirinha é válida até o fim de sua graduação e a confecção de novas carteirinhas são cobrados valor a parte. Caso ocorra também o extravio do smartphone portador ID de acesso do aluno, o mesmo deve comunicar a instituição para que haja bloqueio da IDE do aparelho e uma nova liberação.

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/EmpresaDevcom.pdf?raw=true "Empresa Devcom")
#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que informe quais são os gerentes de cada departamento incluindo as seguintes informações: número do departamento,  nome do departamento, e nome do gerente.
* Relatório de empregados por projeto incluindo as seguintes informações: número do projeto, nome do projeto, rg do empregado, nome do empregado e quantidade de horas de trabalho do empregado alocadas ao projeto.
* Relatório de empregados com dependentes incluindo as seguintes informações: rg do empregado, nome do empregado, nome do dependente, tipo de relação, data de nascimento do dependente e sexo do dependente.
* Relatório com a quantidade de empregados por cada departamento incluindo as seguintes informações: nome do departamento, supervisor e quantidade de empregados alocados no departamento.
* Relatório de supervisores e supervisionados incluindo as seguintes informações: nome do supervisor e nome do supervisionado.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
>## Marco de Entrega 01 em: (30/08/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/CidadeInteligenteCGV/trab01/blob/master/images/Modelo_Conceitual.png)
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

>## Marco de Entrega 02 em: (13/09/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico 
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script
        (Drop para exclusão de tabelas + create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
>## Marco de Entrega 03 em: (27/09/18) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
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
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


