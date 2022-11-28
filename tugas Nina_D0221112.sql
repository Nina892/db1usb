--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: costumer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.costumer (
    no_pelanggan integer,
    jns_kelamin text,
    status text
);


ALTER TABLE public.costumer OWNER TO postgres;

--
-- Name: order_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_item (
    transaksi integer,
    unit_terjual integer
);


ALTER TABLE public.order_item OWNER TO postgres;

--
-- Name: produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produk (
    kategori text,
    tgl_pembelian integer,
    pendapatan integer
);


ALTER TABLE public.produk OWNER TO postgres;

--
-- Data for Name: costumer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.costumer (no_pelanggan, jns_kelamin, status) FROM stdin;
1	perempuan	mahasiswa
2	laki-laki	pelajar
3	perempuan	menikah
\.


--
-- Data for Name: order_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_item (transaksi, unit_terjual) FROM stdin;
1	50
2	55
3	60
\.


--
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produk (kategori, tgl_pembelian, pendapatan) FROM stdin;
kesehatan	20	500000
aksesoris	10	200000
elektorik	30	100000
\.


--
-- PostgreSQL database dump complete
--

