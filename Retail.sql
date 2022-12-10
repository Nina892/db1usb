--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-10 05:23:04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- TOC entry 217 (class 1259 OID 24758)
-- Name: pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelanggan (
    id_pelanggan integer NOT NULL,
    nama character varying(30),
    umur integer
);


ALTER TABLE public.pelanggan OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24757)
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pelanggan_id_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelanggan_id_pelanggan_seq OWNER TO postgres;

--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 216
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pelanggan_id_pelanggan_seq OWNED BY public.pelanggan.id_pelanggan;


--
-- TOC entry 219 (class 1259 OID 24772)
-- Name: pesanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pesanan (
    id_pesanan integer NOT NULL,
    id_produk integer,
    id_pelanggan integer,
    jumlah_pesanan integer,
    harga_jual integer
);


ALTER TABLE public.pesanan OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24771)
-- Name: pesanan_id_pesanan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pesanan_id_pesanan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pesanan_id_pesanan_seq OWNER TO postgres;

--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 218
-- Name: pesanan_id_pesanan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pesanan_id_pesanan_seq OWNED BY public.pesanan.id_pesanan;


--
-- TOC entry 215 (class 1259 OID 24749)
-- Name: produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produk (
    id_produk integer NOT NULL,
    nama_produk character varying(30),
    harga numeric
);


ALTER TABLE public.produk OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24748)
-- Name: produk_id_produk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produk_id_produk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produk_id_produk_seq OWNER TO postgres;

--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 214
-- Name: produk_id_produk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produk_id_produk_seq OWNED BY public.produk.id_produk;


--
-- TOC entry 3184 (class 2604 OID 24761)
-- Name: pelanggan id_pelanggan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan ALTER COLUMN id_pelanggan SET DEFAULT nextval('public.pelanggan_id_pelanggan_seq'::regclass);


--
-- TOC entry 3185 (class 2604 OID 24775)
-- Name: pesanan id_pesanan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan ALTER COLUMN id_pesanan SET DEFAULT nextval('public.pesanan_id_pesanan_seq'::regclass);


--
-- TOC entry 3183 (class 2604 OID 24752)
-- Name: produk id_produk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk ALTER COLUMN id_produk SET DEFAULT nextval('public.produk_id_produk_seq'::regclass);


--
-- TOC entry 3337 (class 0 OID 24758)
-- Dependencies: 217
-- Data for Name: pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelanggan (id_pelanggan, nama, umur) FROM stdin;
1	nina	20
2	lina	21
3	amel	19
4	padil	19
5	edwin	19
6	yayat	19
7	putri	20
8	ryan	19
9	ila	19
10	ana	18
11	nuy	19
12	nana	18
13	ici	19
14	mini	19
15	nad	22
\.


--
-- TOC entry 3339 (class 0 OID 24772)
-- Dependencies: 219
-- Data for Name: pesanan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pesanan (id_pesanan, id_produk, id_pelanggan, jumlah_pesanan, harga_jual) FROM stdin;
1	1	1	2	400000
2	2	2	1	1000000
3	3	3	3	900000
4	4	4	1	250000
5	5	5	2	100000
6	6	6	1	200000
7	7	7	2	80000
8	8	8	3	60000
9	9	9	1	5000000
10	10	10	4	200000
11	11	11	1	1000000
12	12	12	2	2000000
13	13	13	1	250000
14	14	14	1	2000000
15	15	15	2	6000000
\.


--
-- TOC entry 3335 (class 0 OID 24749)
-- Dependencies: 215
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produk (id_produk, nama_produk, harga) FROM stdin;
1	helm	200000
2	hp	1000000
3	setrika	300000
4	kipas	250000
5	mouse	50
6	keyboar	200000
7	colokan	40
8	headseat	20
9	laptop	5000000
10	lampu	50
11	printer	2000000
12	sepeda	1000000
13	cctv	2500000
14	proyektor	2000000
15	camera	3000000
\.


--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 216
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pelanggan_id_pelanggan_seq', 15, true);


--
-- TOC entry 3349 (class 0 OID 0)
-- Dependencies: 218
-- Name: pesanan_id_pesanan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pesanan_id_pesanan_seq', 15, true);


--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 214
-- Name: produk_id_produk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produk_id_produk_seq', 15, true);


--
-- TOC entry 3189 (class 2606 OID 24763)
-- Name: pelanggan pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id_pelanggan);


--
-- TOC entry 3191 (class 2606 OID 24777)
-- Name: pesanan pesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (id_pesanan);


--
-- TOC entry 3187 (class 2606 OID 24756)
-- Name: produk produk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (id_produk);


-- Completed on 2022-12-10 05:23:07

--
-- PostgreSQL database dump complete
--

