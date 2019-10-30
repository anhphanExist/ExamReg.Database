--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

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

--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Category" (
    "Id" uuid NOT NULL,
    "CX" bigint NOT NULL,
    "Name" character varying(500) NOT NULL,
    "Type" boolean NOT NULL,
    "Image" bytea
);


ALTER TABLE public."Category" OWNER TO postgres;

--
-- Name: Category_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Category_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Category_CX_seq" OWNER TO postgres;

--
-- Name: Category_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Category_CX_seq" OWNED BY public."Category"."CX";


--
-- Name: Transaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Transaction" (
    "Id" uuid NOT NULL,
    "CX" bigint NOT NULL,
    "WalletId" uuid NOT NULL,
    "CategoryId" uuid NOT NULL,
    "Amount" numeric NOT NULL,
    "Note" character varying(500),
    "Date" timestamp without time zone NOT NULL
);


ALTER TABLE public."Transaction" OWNER TO postgres;

--
-- Name: Transaction_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Transaction_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Transaction_CX_seq" OWNER TO postgres;

--
-- Name: Transaction_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Transaction_CX_seq" OWNED BY public."Transaction"."CX";


--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    "Id" uuid NOT NULL,
    "CX" bigint NOT NULL,
    "Username" character varying(500) NOT NULL,
    "Password" character varying(500) NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Name: User_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."User_CX_seq" OWNER TO postgres;

--
-- Name: User_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_CX_seq" OWNED BY public."User"."CX";


--
-- Name: Wallet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Wallet" (
    "Id" uuid NOT NULL,
    "CX" bigint NOT NULL,
    "Name" character varying(500) NOT NULL,
    "Balance" numeric NOT NULL,
    "UserId" uuid NOT NULL
);


ALTER TABLE public."Wallet" OWNER TO postgres;

--
-- Name: Wallet_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Wallet_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Wallet_CX_seq" OWNER TO postgres;

--
-- Name: Wallet_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Wallet_CX_seq" OWNED BY public."Wallet"."CX";


--
-- Name: Category CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Category" ALTER COLUMN "CX" SET DEFAULT nextval('public."Category_CX_seq"'::regclass);


--
-- Name: Transaction CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transaction" ALTER COLUMN "CX" SET DEFAULT nextval('public."Transaction_CX_seq"'::regclass);


--
-- Name: User CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN "CX" SET DEFAULT nextval('public."User_CX_seq"'::regclass);


--
-- Name: Wallet CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Wallet" ALTER COLUMN "CX" SET DEFAULT nextval('public."Wallet_CX_seq"'::regclass);


--
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Category" ("Id", "CX", "Name", "Type", "Image") FROM stdin;
c2efbdb0-8b15-922c-4183-203cb33a5a26	1	Wallet Transfer	f	\N
f9946c00-105b-f2ff-f008-1e69392f0f82	2	Wallet Transfer	t	\N
7f9bd030-bc2a-dd3d-7f9c-651fe074f813	3	Category0	t	\N
e1541184-e899-a409-b05b-edc679ef99b8	4	Category1	f	\N
20ca9787-8a2e-60bc-902e-e31e298b4561	5	Category2	t	\N
ca889dd9-6ead-bbdd-629b-b7143cb03db6	6	Category3	f	\N
befd2ff7-02e1-cd76-ea27-cd6a84f2ae2e	7	Category4	t	\N
1ea2d02f-d81c-119c-4ad4-2e37fa7b8ca2	8	Category5	f	\N
ec1acf6c-3835-c844-b9b7-fa44c0604e88	9	Category6	t	\N
3aa52dd1-f6c2-4abc-1bfc-48a4c291619d	10	Category7	f	\N
c40c0194-7e58-6e6a-9b20-0bba69afbda6	11	Category8	t	\N
0a5c5f29-de74-cfbc-3414-7d6f533801cd	12	Category9	f	\N
\.


--
-- Data for Name: Transaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Transaction" ("Id", "CX", "WalletId", "CategoryId", "Amount", "Note", "Date") FROM stdin;
fc19eec9-357b-e030-52fa-5e3b02fc38e5	2	cad38b42-0366-b6dd-4e29-7acaa33d5efe	c40c0194-7e58-6e6a-9b20-0bba69afbda6	20000	Category8.User0.Wallet0.Transaction1	2000-02-02 00:00:00
8073d176-108f-bdc7-a88f-846fef18dca8	3	cad38b42-0366-b6dd-4e29-7acaa33d5efe	c40c0194-7e58-6e6a-9b20-0bba69afbda6	10000	Category8.User0.Wallet0.Transaction0	2000-01-01 00:00:00
aecca4ef-7c73-da88-1428-17d0853a459a	4	cad38b42-0366-b6dd-4e29-7acaa33d5efe	3aa52dd1-f6c2-4abc-1bfc-48a4c291619d	20000	Category7.User0.Wallet0.Transaction1	2000-02-02 00:00:00
65cc104d-05eb-96e9-4de6-9e65c4dcd0bb	5	cad38b42-0366-b6dd-4e29-7acaa33d5efe	3aa52dd1-f6c2-4abc-1bfc-48a4c291619d	10000	Category7.User0.Wallet0.Transaction0	2000-01-01 00:00:00
838e4b8a-d6f9-f8c7-96de-02568b4d25f5	6	cad38b42-0366-b6dd-4e29-7acaa33d5efe	ec1acf6c-3835-c844-b9b7-fa44c0604e88	20000	Category6.User0.Wallet0.Transaction1	2000-02-02 00:00:00
108245f5-2d2b-1022-3512-b9342fd81dcc	7	cad38b42-0366-b6dd-4e29-7acaa33d5efe	ec1acf6c-3835-c844-b9b7-fa44c0604e88	10000	Category6.User0.Wallet0.Transaction0	2000-01-01 00:00:00
6f60d4e4-3340-ea33-0421-374d1b4e6d72	8	cad38b42-0366-b6dd-4e29-7acaa33d5efe	1ea2d02f-d81c-119c-4ad4-2e37fa7b8ca2	20000	Category5.User0.Wallet0.Transaction1	2000-02-02 00:00:00
2e02c138-2e92-b78c-fe56-501d8140c46a	9	cad38b42-0366-b6dd-4e29-7acaa33d5efe	1ea2d02f-d81c-119c-4ad4-2e37fa7b8ca2	10000	Category5.User0.Wallet0.Transaction0	2000-01-01 00:00:00
f706fc04-432b-5721-e54c-55ba68918584	10	cad38b42-0366-b6dd-4e29-7acaa33d5efe	befd2ff7-02e1-cd76-ea27-cd6a84f2ae2e	20000	Category4.User0.Wallet0.Transaction1	2000-02-02 00:00:00
9f4deb2e-783d-6430-f445-ee8fb99ca654	11	cad38b42-0366-b6dd-4e29-7acaa33d5efe	befd2ff7-02e1-cd76-ea27-cd6a84f2ae2e	10000	Category4.User0.Wallet0.Transaction0	2000-01-01 00:00:00
b980b426-861f-ab17-b3b9-bb6238e592d1	12	cad38b42-0366-b6dd-4e29-7acaa33d5efe	ca889dd9-6ead-bbdd-629b-b7143cb03db6	20000	Category3.User0.Wallet0.Transaction1	2000-02-02 00:00:00
0f6bfea8-b6c1-76dd-d0af-ffc4009f4b42	13	cad38b42-0366-b6dd-4e29-7acaa33d5efe	ca889dd9-6ead-bbdd-629b-b7143cb03db6	10000	Category3.User0.Wallet0.Transaction0	2000-01-01 00:00:00
9b322c3b-cff6-7d07-afce-78ba2d4ef7d1	14	cad38b42-0366-b6dd-4e29-7acaa33d5efe	20ca9787-8a2e-60bc-902e-e31e298b4561	20000	Category2.User0.Wallet0.Transaction1	2000-02-02 00:00:00
b7eaf88c-2a1d-1e3e-77a2-61d6fc25bbd3	15	cad38b42-0366-b6dd-4e29-7acaa33d5efe	20ca9787-8a2e-60bc-902e-e31e298b4561	10000	Category2.User0.Wallet0.Transaction0	2000-01-01 00:00:00
0cd1b398-a4a2-fe0b-0b9b-c2887c88b337	16	cad38b42-0366-b6dd-4e29-7acaa33d5efe	e1541184-e899-a409-b05b-edc679ef99b8	20000	Category1.User0.Wallet0.Transaction1	2000-02-02 00:00:00
a7218420-b0a2-090d-1f53-dd93759d68d4	17	cad38b42-0366-b6dd-4e29-7acaa33d5efe	e1541184-e899-a409-b05b-edc679ef99b8	10000	Category1.User0.Wallet0.Transaction0	2000-01-01 00:00:00
3afcf0d4-975f-216c-4be7-fd686fb904ed	18	cad38b42-0366-b6dd-4e29-7acaa33d5efe	7f9bd030-bc2a-dd3d-7f9c-651fe074f813	20000	Category0.User0.Wallet0.Transaction1	2000-02-02 00:00:00
fea2b1de-dee1-7d79-146e-fc6a8ce559c9	19	cad38b42-0366-b6dd-4e29-7acaa33d5efe	7f9bd030-bc2a-dd3d-7f9c-651fe074f813	10000	Category0.User0.Wallet0.Transaction0	2000-01-01 00:00:00
47b4e35f-cf6a-3404-d886-19da4c772ff4	23	cad38b42-0366-b6dd-4e29-7acaa33d5efe	0a5c5f29-de74-cfbc-3414-7d6f533801cd	10000	Category9.User0.Wallet0.Transaction0	2000-01-01 00:00:00
9bfbfeda-713d-67a5-5a89-5c43fa7be509	24	cad38b42-0366-b6dd-4e29-7acaa33d5efe	0a5c5f29-de74-cfbc-3414-7d6f533801cd	20000	Category9.User0.Wallet0.Transaction1	2000-02-02 00:00:00
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" ("Id", "CX", "Username", "Password") FROM stdin;
c81a46fc-e3b6-9af1-9f64-800389e202fe	1	User0	User0
\.


--
-- Data for Name: Wallet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Wallet" ("Id", "CX", "Name", "Balance", "UserId") FROM stdin;
be781018-a93a-4da7-b9a1-62a71895a7ae	4	Anh Phan	9222	c81a46fc-e3b6-9af1-9f64-800389e202fe
cad38b42-0366-b6dd-4e29-7acaa33d5efe	1	User0.Wallet0	1170	c81a46fc-e3b6-9af1-9f64-800389e202fe
\.


--
-- Name: Category_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Category_CX_seq"', 12, true);


--
-- Name: Transaction_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Transaction_CX_seq"', 32, true);


--
-- Name: User_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_CX_seq"', 1, true);


--
-- Name: Wallet_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Wallet_CX_seq"', 4, true);


--
-- Name: Category category_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT category_pk PRIMARY KEY ("Id");


--
-- Name: Transaction transaction_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transaction"
    ADD CONSTRAINT transaction_pk PRIMARY KEY ("Id");


--
-- Name: User user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT user_pk PRIMARY KEY ("Id");


--
-- Name: Wallet wallet_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Wallet"
    ADD CONSTRAINT wallet_pk PRIMARY KEY ("Id");


--
-- Name: category_cx_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX category_cx_idx ON public."Category" USING btree ("CX");


--
-- Name: transaction_cx_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX transaction_cx_idx ON public."Transaction" USING btree ("CX");


--
-- Name: user_cx_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX user_cx_idx ON public."User" USING btree ("CX");


--
-- Name: wallet_cx_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX wallet_cx_idx ON public."Wallet" USING btree ("CX");


--
-- Name: Transaction transaction_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transaction"
    ADD CONSTRAINT transaction_fk FOREIGN KEY ("CategoryId") REFERENCES public."Category"("Id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: Transaction transaction_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transaction"
    ADD CONSTRAINT transaction_fk_1 FOREIGN KEY ("WalletId") REFERENCES public."Wallet"("Id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: Wallet wallet_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Wallet"
    ADD CONSTRAINT wallet_fk FOREIGN KEY ("UserId") REFERENCES public."User"("Id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

