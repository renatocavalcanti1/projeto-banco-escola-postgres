--
-- PostgreSQL database dump
--

\restrict LzulVehJUFV1tbg52aoqan7oNJiOTF5ZUvY1qmsVKeYdJqLIj3wqwQ2c2ABEQQ1

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-09-03 15:08:53

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16388)
-- Name: aluno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aluno (
    id_aluno integer NOT NULL,
    nome character varying(50),
    idade integer,
    email character varying(50)
);


ALTER TABLE public.aluno OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16387)
-- Name: aluno_id_aluno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aluno_id_aluno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aluno_id_aluno_seq OWNER TO postgres;

--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 217
-- Name: aluno_id_aluno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aluno_id_aluno_seq OWNED BY public.aluno.id_aluno;


--
-- TOC entry 220 (class 1259 OID 16395)
-- Name: curso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.curso (
    id_curso integer NOT NULL,
    nome_curso character varying(50),
    descricao text,
    carga_horaria integer
);


ALTER TABLE public.curso OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16394)
-- Name: curso_id_curso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.curso_id_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.curso_id_curso_seq OWNER TO postgres;

--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 219
-- Name: curso_id_curso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.curso_id_curso_seq OWNED BY public.curso.id_curso;


--
-- TOC entry 224 (class 1259 OID 16418)
-- Name: inscricao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inscricao (
    id_inscricao integer NOT NULL,
    id_aluno integer,
    id_curso integer,
    data_inscricao date
);


ALTER TABLE public.inscricao OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16417)
-- Name: inscricao_id_inscricao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inscricao_id_inscricao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inscricao_id_inscricao_seq OWNER TO postgres;

--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 223
-- Name: inscricao_id_inscricao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inscricao_id_inscricao_seq OWNED BY public.inscricao.id_inscricao;


--
-- TOC entry 222 (class 1259 OID 16404)
-- Name: modulo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.modulo (
    id_modulo integer NOT NULL,
    id_curso integer,
    nome_modulo character varying(50),
    descricao_modulo text
);


ALTER TABLE public.modulo OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16403)
-- Name: modulo_id_modulo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.modulo_id_modulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modulo_id_modulo_seq OWNER TO postgres;

--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 221
-- Name: modulo_id_modulo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.modulo_id_modulo_seq OWNED BY public.modulo.id_modulo;


--
-- TOC entry 4757 (class 2604 OID 16391)
-- Name: aluno id_aluno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno ALTER COLUMN id_aluno SET DEFAULT nextval('public.aluno_id_aluno_seq'::regclass);


--
-- TOC entry 4758 (class 2604 OID 16398)
-- Name: curso id_curso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso ALTER COLUMN id_curso SET DEFAULT nextval('public.curso_id_curso_seq'::regclass);


--
-- TOC entry 4760 (class 2604 OID 16421)
-- Name: inscricao id_inscricao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscricao ALTER COLUMN id_inscricao SET DEFAULT nextval('public.inscricao_id_inscricao_seq'::regclass);


--
-- TOC entry 4759 (class 2604 OID 16407)
-- Name: modulo id_modulo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modulo ALTER COLUMN id_modulo SET DEFAULT nextval('public.modulo_id_modulo_seq'::regclass);


--
-- TOC entry 4918 (class 0 OID 16388)
-- Dependencies: 218
-- Data for Name: aluno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aluno (id_aluno, nome, idade, email) FROM stdin;
1	Roberval Silva	61	roberval.silva@gmail.com
2	Sebastião Cabral	90	sebastiao.cabral@gmail.com
3	Maria Silva	82	maria.silva@gmail.com
\.


--
-- TOC entry 4920 (class 0 OID 16395)
-- Dependencies: 220
-- Data for Name: curso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.curso (id_curso, nome_curso, descricao, carga_horaria) FROM stdin;
1	História	Introdução aos principais eventos e figuras da história mundial	100
2	Filosofia	Explore conceitos fundamentais e pensadores-chave da filosofia	100
3	Sociologia	Estudo das estruturas sociais e como influenciam o comportamento humano	90
\.


--
-- TOC entry 4924 (class 0 OID 16418)
-- Dependencies: 224
-- Data for Name: inscricao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inscricao (id_inscricao, id_aluno, id_curso, data_inscricao) FROM stdin;
1	1	1	2019-03-01
2	2	2	2019-03-02
3	3	3	2019-03-03
4	1	3	2019-03-04
5	2	1	2019-03-05
\.


--
-- TOC entry 4922 (class 0 OID 16404)
-- Dependencies: 222
-- Data for Name: modulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.modulo (id_modulo, id_curso, nome_modulo, descricao_modulo) FROM stdin;
1	1	História Antiga	Introdução às primeiras civilizações e seus legados
2	1	Idade Média	Estudo dos eventos e mudanças sociais da Idade Média
3	2	Filosofia Antiga	Exploração das ideias dos filósofos gregos e romanos
4	2	Ética	Discussão sobre conceitos de moralidade e ética
5	3	Fundamentos da Sociologia	Introdução aos conceitos básicos da sociologia
6	3	Estratificação Social	Análise das classes e desigualdades sociais
\.


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 217
-- Name: aluno_id_aluno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aluno_id_aluno_seq', 3, true);


--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 219
-- Name: curso_id_curso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.curso_id_curso_seq', 3, true);


--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 223
-- Name: inscricao_id_inscricao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inscricao_id_inscricao_seq', 5, true);


--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 221
-- Name: modulo_id_modulo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.modulo_id_modulo_seq', 6, true);


--
-- TOC entry 4762 (class 2606 OID 16393)
-- Name: aluno aluno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (id_aluno);


--
-- TOC entry 4764 (class 2606 OID 16402)
-- Name: curso curso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (id_curso);


--
-- TOC entry 4768 (class 2606 OID 16423)
-- Name: inscricao inscricao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscricao
    ADD CONSTRAINT inscricao_pkey PRIMARY KEY (id_inscricao);


--
-- TOC entry 4766 (class 2606 OID 16411)
-- Name: modulo modulo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modulo
    ADD CONSTRAINT modulo_pkey PRIMARY KEY (id_modulo);


--
-- TOC entry 4770 (class 2606 OID 16424)
-- Name: inscricao inscricao_id_aluno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscricao
    ADD CONSTRAINT inscricao_id_aluno_fkey FOREIGN KEY (id_aluno) REFERENCES public.aluno(id_aluno);


--
-- TOC entry 4771 (class 2606 OID 16429)
-- Name: inscricao inscricao_id_curso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscricao
    ADD CONSTRAINT inscricao_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.curso(id_curso);


--
-- TOC entry 4769 (class 2606 OID 16412)
-- Name: modulo modulo_id_curso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modulo
    ADD CONSTRAINT modulo_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.curso(id_curso);


-- Completed on 2025-09-03 15:08:53

--
-- PostgreSQL database dump complete
--

\unrestrict LzulVehJUFV1tbg52aoqan7oNJiOTF5ZUvY1qmsVKeYdJqLIj3wqwQ2c2ABEQQ1

