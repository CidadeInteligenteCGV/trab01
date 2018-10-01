PGDMP         '    
        	    v            teste    10.4    10.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    18860    teste    DATABASE     �   CREATE DATABASE teste WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE teste;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    18866    aluno    TABLE       CREATE TABLE public.aluno (
    cod_matricula character(11) NOT NULL,
    nome_aluno character varying(50),
    cpf_aluno character(11),
    data_nascimento_aluno date,
    sexo_aluno character(1),
    campus character varying(50),
    nome_curso character varying(50)
);
    DROP TABLE public.aluno;
       public         postgres    false    3            �            1259    18876    campus    TABLE     g   CREATE TABLE public.campus (
    cod_campus character(8) NOT NULL,
    campus character varying(50)
);
    DROP TABLE public.campus;
       public         postgres    false    3            �            1259    18871    curso    TABLE     d   CREATE TABLE public.curso (
    cod_curso integer NOT NULL,
    nome_curso character varying(50)
);
    DROP TABLE public.curso;
       public         postgres    false    3            �            1259    18886 
   disciplina    TABLE     �   CREATE TABLE public.disciplina (
    cod_disciplina integer NOT NULL,
    nome_disciplina character varying(50),
    horas_disciplina integer
);
    DROP TABLE public.disciplina;
       public         postgres    false    3            �            1259    18891    historico_aula    TABLE       CREATE TABLE public.historico_aula (
    data_aula date NOT NULL,
    horario_inicio time without time zone,
    horario_fim time without time zone,
    frequencia_aula character(1),
    horas_frequencia_obrigatoria double precision,
    horas_frequencia_aluno double precision
);
 "   DROP TABLE public.historico_aula;
       public         postgres    false    3            �            1259    18861    historico_frequencia    TABLE     "  CREATE TABLE public.historico_frequencia (
    data_aula date NOT NULL,
    horario_chegada time without time zone,
    horario_saida time without time zone,
    frequencia_aula character(1),
    horas_frequencia_obrigatoria double precision,
    horas_frequencia_aluno double precision
);
 (   DROP TABLE public.historico_frequencia;
       public         postgres    false    3            �            1259    18881 	   professor    TABLE     �   CREATE TABLE public.professor (
    cod_servidor character(11) NOT NULL,
    nome_professor character varying(50),
    nome_disciplina character varying(50),
    cpf_professor character(11)
);
    DROP TABLE public.professor;
       public         postgres    false    3                      0    18866    aluno 
   TABLE DATA               |   COPY public.aluno (cod_matricula, nome_aluno, cpf_aluno, data_nascimento_aluno, sexo_aluno, campus, nome_curso) FROM stdin;
    public       postgres    false    197   6                 0    18876    campus 
   TABLE DATA               4   COPY public.campus (cod_campus, campus) FROM stdin;
    public       postgres    false    199   a!                 0    18871    curso 
   TABLE DATA               6   COPY public.curso (cod_curso, nome_curso) FROM stdin;
    public       postgres    false    198   �!                 0    18886 
   disciplina 
   TABLE DATA               W   COPY public.disciplina (cod_disciplina, nome_disciplina, horas_disciplina) FROM stdin;
    public       postgres    false    201   �"                 0    18891    historico_aula 
   TABLE DATA               �   COPY public.historico_aula (data_aula, horario_inicio, horario_fim, frequencia_aula, horas_frequencia_obrigatoria, horas_frequencia_aluno) FROM stdin;
    public       postgres    false    202   `#                 0    18861    historico_frequencia 
   TABLE DATA               �   COPY public.historico_frequencia (data_aula, horario_chegada, horario_saida, frequencia_aula, horas_frequencia_obrigatoria, horas_frequencia_aluno) FROM stdin;
    public       postgres    false    196   �#                 0    18881 	   professor 
   TABLE DATA               a   COPY public.professor (cod_servidor, nome_professor, nome_disciplina, cpf_professor) FROM stdin;
    public       postgres    false    200   �$       �
           2606    18870    aluno aluno_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (cod_matricula);
 :   ALTER TABLE ONLY public.aluno DROP CONSTRAINT aluno_pkey;
       public         postgres    false    197            �
           2606    18880    campus campus_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.campus
    ADD CONSTRAINT campus_pkey PRIMARY KEY (cod_campus);
 <   ALTER TABLE ONLY public.campus DROP CONSTRAINT campus_pkey;
       public         postgres    false    199            �
           2606    18875    curso curso_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (cod_curso);
 :   ALTER TABLE ONLY public.curso DROP CONSTRAINT curso_pkey;
       public         postgres    false    198            �
           2606    18890    disciplina disciplina_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.disciplina
    ADD CONSTRAINT disciplina_pkey PRIMARY KEY (cod_disciplina);
 D   ALTER TABLE ONLY public.disciplina DROP CONSTRAINT disciplina_pkey;
       public         postgres    false    201            �
           2606    18895 "   historico_aula historico_aula_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.historico_aula
    ADD CONSTRAINT historico_aula_pkey PRIMARY KEY (data_aula);
 L   ALTER TABLE ONLY public.historico_aula DROP CONSTRAINT historico_aula_pkey;
       public         postgres    false    202            �
           2606    18865 .   historico_frequencia historico_frequencia_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.historico_frequencia
    ADD CONSTRAINT historico_frequencia_pkey PRIMARY KEY (data_aula);
 X   ALTER TABLE ONLY public.historico_frequencia DROP CONSTRAINT historico_frequencia_pkey;
       public         postgres    false    196            �
           2606    18885    professor professor_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pkey PRIMARY KEY (cod_servidor);
 B   ALTER TABLE ONLY public.professor DROP CONSTRAINT professor_pkey;
       public         postgres    false    200                 x����n�0�g�)�j�C�6*�]��ƗN]�IHbKQ�6m� 2��b=��]����7�LBS(�d��`�);�|4Hʵ�3F����IC>�4��ޒ�o��z��h��M���'��P���~C���+n��4Bhm�Q:C����i�&{�%{?"����!���/�ϐq�� ����l��%�I&@rF�L�KF�C�2t6���:~�|rg��1������Y-��Ȍ���
4��� ��Y&��{m�od5<���b
E������Y�z���|�.����S��P NeF����E������Ƣ��ְ�s=���vu0�"k��/I��JI��c�����h�R����!��q�����A �1��P���H�K�`BT*kf%�(�綮B@��0�:��S
W�i��P&�><��e�#�ᾘ�R)���</
������V�l��Rw��'K8HA�
�:�5%������G��V�P�q�շ�Vo����϶k1O8�J1��s����ש�8(�u~�a���b��� �Z         I   x��ts6000��,�/�L��s�������9�%�yp#NǢ���*��	�s"Ѐ���D�=... ���         �   x�eOKJ1]'��	�$������ ̀"�ܔ�rt��@�B<E.f���{�~��ڰ����R�� }{.�׊�ݸLd1��1yho�5�N�~`Sz���^ܦ{.��թQ����#$‶��/_)U�����q�hy%�N��_�=���*�R���g>�^ʿ�T�<���Td�%�5�qT�:O�a�E�X��5Z�i�.����݆s�	w�cx         �   x��;�0D��)|�8
IJ��@TP�,�A��,�#!.�A�v�ݙ7���J�x�`��#F3a�
���MDXVɜ���1pm��қ�_�6>���~���_�Rhz����	!{��@w�P�鶁]�Y�w����}��[�:�ꤖ�B4����eM��.���c9�?�         �   x�u��� Ϧ�D���P@�) �ױ����rA�<�{2#فv0Ƭ��)�6��@����2�-շc���U�]D�uUHtB(d�P�1MF���_�T\��O�]~���®�Ȅ�>2��l�
K�dcG�{��K�s:�>�:C         �   x�u�A! ���� �������ղ�&�bH�����vŎ��z��J=��c4�&
�@x��c@�e��;j?�`d+�Qu��#٣����/�s`e��]$���d��l���wI���ն�٥�u��ޤ-B�         M  x�-�MN�0���)|��/���JEH�`�摘b)��v�:,8H/��Zof�s`r�۞ 9`D����neD��8�m8 �[�[r������}y�n��ꑺ�2aL�pмa֚��U��	�1t�H�3N>����l5S�rnt�U�� &�}��0_�8��~�D{Gw���6�-���%�X�Ҕc �>�P�i���s���(Ƅ��ٶr���+����j�b��.�e&G��P_�J��ۜ�ѥ�����B�Y��2�|����M�̕�bD�Vh)liZ�ߗ(��0|ѣv����Rx�H�2
,k�y�i���      