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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ExamPeriod; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ExamPeriod" (
    "Id" uuid NOT NULL,
    "ExamDate" date NOT NULL,
    "StartHour" smallint NOT NULL,
    "FinishHour" smallint NOT NULL,
    "TermId" uuid NOT NULL,
    "ExamProgramId" uuid NOT NULL,
    "CX" bigint NOT NULL
);


ALTER TABLE public."ExamPeriod" OWNER TO postgres;

--
-- Name: ExamPeriod_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ExamPeriod_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ExamPeriod_CX_seq" OWNER TO postgres;

--
-- Name: ExamPeriod_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ExamPeriod_CX_seq" OWNED BY public."ExamPeriod"."CX";


--
-- Name: ExamProgram; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ExamProgram" (
    "Id" uuid NOT NULL,
    "Name" character varying(500) NOT NULL,
    "SemesterId" uuid NOT NULL,
    "CX" bigint NOT NULL
);


ALTER TABLE public."ExamProgram" OWNER TO postgres;

--
-- Name: ExamProgram_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ExamProgram_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ExamProgram_CX_seq" OWNER TO postgres;

--
-- Name: ExamProgram_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ExamProgram_CX_seq" OWNED BY public."ExamProgram"."CX";


--
-- Name: ExamRoom; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ExamRoom" (
    "Id" uuid NOT NULL,
    "RoomNumber" smallint NOT NULL,
    "AmphitheaterName" character varying(50) NOT NULL,
    "ComputerNumber" integer NOT NULL,
    "CX" bigint NOT NULL
);


ALTER TABLE public."ExamRoom" OWNER TO postgres;

--
-- Name: ExamRoomExamPeriod; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ExamRoomExamPeriod" (
    "ExamRoomId" uuid NOT NULL,
    "ExamPeriodId" uuid NOT NULL,
    "CX" bigint NOT NULL
);


ALTER TABLE public."ExamRoomExamPeriod" OWNER TO postgres;

--
-- Name: ExamRoomExamPeriod_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ExamRoomExamPeriod_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ExamRoomExamPeriod_CX_seq" OWNER TO postgres;

--
-- Name: ExamRoomExamPeriod_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ExamRoomExamPeriod_CX_seq" OWNED BY public."ExamRoomExamPeriod"."CX";


--
-- Name: ExamRoom_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ExamRoom_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ExamRoom_CX_seq" OWNER TO postgres;

--
-- Name: ExamRoom_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ExamRoom_CX_seq" OWNED BY public."ExamRoom"."CX";


--
-- Name: Semester; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Semester" (
    "Id" uuid NOT NULL,
    "StartYear" smallint NOT NULL,
    "EndYear" smallint NOT NULL,
    "IsFirstHalf" boolean NOT NULL,
    "CX" bigint NOT NULL
);


ALTER TABLE public."Semester" OWNER TO postgres;

--
-- Name: Semester_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Semester_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Semester_CX_seq" OWNER TO postgres;

--
-- Name: Semester_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Semester_CX_seq" OWNED BY public."Semester"."CX";


--
-- Name: Student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Student" (
    "Id" uuid NOT NULL,
    "StudentNumber" integer NOT NULL,
    "LastName" character varying(100) NOT NULL,
    "GivenName" character varying(100) NOT NULL,
    "Birthday" date NOT NULL,
    "Email" character varying(500) NOT NULL,
    "CX" bigint NOT NULL,
    "ExamPeriodId" uuid,
    "ExamRoomId" uuid
);


ALTER TABLE public."Student" OWNER TO postgres;

--
-- Name: StudentTerm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentTerm" (
    "StudentId" uuid NOT NULL,
    "TermId" uuid NOT NULL,
    "CX" bigint NOT NULL,
    "IsQualified" boolean NOT NULL
);


ALTER TABLE public."StudentTerm" OWNER TO postgres;

--
-- Name: StudentTerm_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."StudentTerm_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StudentTerm_CX_seq" OWNER TO postgres;

--
-- Name: StudentTerm_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."StudentTerm_CX_seq" OWNED BY public."StudentTerm"."CX";


--
-- Name: Student_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Student_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Student_CX_seq" OWNER TO postgres;

--
-- Name: Student_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Student_CX_seq" OWNED BY public."Student"."CX";


--
-- Name: Term; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Term" (
    "Id" uuid NOT NULL,
    "SubjectName" character varying(500) NOT NULL,
    "SemesterId" uuid NOT NULL,
    "CX" bigint NOT NULL
);


ALTER TABLE public."Term" OWNER TO postgres;

--
-- Name: Term_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Term_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Term_CX_seq" OWNER TO postgres;

--
-- Name: Term_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Term_CX_seq" OWNED BY public."Term"."CX";


--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    "Id" uuid NOT NULL,
    "Username" character varying(500) NOT NULL,
    "Password" character varying(500) NOT NULL,
    "IsAdmin" boolean NOT NULL,
    "StudentId" uuid,
    "CX" bigint NOT NULL
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
-- Name: ExamPeriod CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamPeriod" ALTER COLUMN "CX" SET DEFAULT nextval('public."ExamPeriod_CX_seq"'::regclass);


--
-- Name: ExamProgram CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamProgram" ALTER COLUMN "CX" SET DEFAULT nextval('public."ExamProgram_CX_seq"'::regclass);


--
-- Name: ExamRoom CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamRoom" ALTER COLUMN "CX" SET DEFAULT nextval('public."ExamRoom_CX_seq"'::regclass);


--
-- Name: ExamRoomExamPeriod CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamRoomExamPeriod" ALTER COLUMN "CX" SET DEFAULT nextval('public."ExamRoomExamPeriod_CX_seq"'::regclass);


--
-- Name: Semester CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Semester" ALTER COLUMN "CX" SET DEFAULT nextval('public."Semester_CX_seq"'::regclass);


--
-- Name: Student CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Student" ALTER COLUMN "CX" SET DEFAULT nextval('public."Student_CX_seq"'::regclass);


--
-- Name: StudentTerm CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentTerm" ALTER COLUMN "CX" SET DEFAULT nextval('public."StudentTerm_CX_seq"'::regclass);


--
-- Name: Term CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Term" ALTER COLUMN "CX" SET DEFAULT nextval('public."Term_CX_seq"'::regclass);


--
-- Name: User CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN "CX" SET DEFAULT nextval('public."User_CX_seq"'::regclass);


--
-- Data for Name: ExamPeriod; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ExamPeriod" ("Id", "ExamDate", "StartHour", "FinishHour", "TermId", "ExamProgramId", "CX") FROM stdin;
\.


--
-- Data for Name: ExamProgram; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ExamProgram" ("Id", "Name", "SemesterId", "CX") FROM stdin;
\.


--
-- Data for Name: ExamRoom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ExamRoom" ("Id", "RoomNumber", "AmphitheaterName", "ComputerNumber", "CX") FROM stdin;
\.


--
-- Data for Name: ExamRoomExamPeriod; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ExamRoomExamPeriod" ("ExamRoomId", "ExamPeriodId", "CX") FROM stdin;
\.


--
-- Data for Name: Semester; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Semester" ("Id", "StartYear", "EndYear", "IsFirstHalf", "CX") FROM stdin;
\.


--
-- Data for Name: Student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Student" ("Id", "StudentNumber", "LastName", "GivenName", "Birthday", "Email", "CX", "ExamPeriodId", "ExamRoomId") FROM stdin;
\.


--
-- Data for Name: StudentTerm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentTerm" ("StudentId", "TermId", "CX", "IsQualified") FROM stdin;
\.


--
-- Data for Name: Term; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Term" ("Id", "SubjectName", "SemesterId", "CX") FROM stdin;
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" ("Id", "Username", "Password", "IsAdmin", "StudentId", "CX") FROM stdin;
\.


--
-- Name: ExamPeriod_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ExamPeriod_CX_seq"', 1, false);


--
-- Name: ExamProgram_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ExamProgram_CX_seq"', 1, false);


--
-- Name: ExamRoomExamPeriod_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ExamRoomExamPeriod_CX_seq"', 1, false);


--
-- Name: ExamRoom_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ExamRoom_CX_seq"', 1, false);


--
-- Name: Semester_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Semester_CX_seq"', 1, false);


--
-- Name: StudentTerm_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."StudentTerm_CX_seq"', 1, false);


--
-- Name: Student_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Student_CX_seq"', 1, false);


--
-- Name: Term_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Term_CX_seq"', 1, false);


--
-- Name: User_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_CX_seq"', 1, false);


--
-- Name: ExamPeriod examperiod_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamPeriod"
    ADD CONSTRAINT examperiod_pk PRIMARY KEY ("Id");


--
-- Name: ExamPeriod examperiod_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamPeriod"
    ADD CONSTRAINT examperiod_un UNIQUE ("CX");


--
-- Name: ExamProgram examprogram_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamProgram"
    ADD CONSTRAINT examprogram_pk PRIMARY KEY ("Id");


--
-- Name: ExamProgram examprogram_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamProgram"
    ADD CONSTRAINT examprogram_un UNIQUE ("CX");


--
-- Name: ExamRoom examroom_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamRoom"
    ADD CONSTRAINT examroom_pk PRIMARY KEY ("Id");


--
-- Name: ExamRoom examroom_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamRoom"
    ADD CONSTRAINT examroom_un UNIQUE ("CX");


--
-- Name: ExamRoomExamPeriod examroomexamperiod_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamRoomExamPeriod"
    ADD CONSTRAINT examroomexamperiod_pk PRIMARY KEY ("ExamRoomId", "ExamPeriodId");


--
-- Name: ExamRoomExamPeriod examroomexamperiod_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamRoomExamPeriod"
    ADD CONSTRAINT examroomexamperiod_un UNIQUE ("CX");


--
-- Name: Semester semester_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Semester"
    ADD CONSTRAINT semester_pk PRIMARY KEY ("Id");


--
-- Name: Semester semester_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Semester"
    ADD CONSTRAINT semester_un UNIQUE ("CX");


--
-- Name: Student student_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT student_pk PRIMARY KEY ("Id");


--
-- Name: Student student_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT student_un UNIQUE ("StudentNumber", "CX");


--
-- Name: StudentTerm studentterm_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentTerm"
    ADD CONSTRAINT studentterm_pk PRIMARY KEY ("StudentId", "TermId");


--
-- Name: StudentTerm studentterm_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentTerm"
    ADD CONSTRAINT studentterm_un UNIQUE ("CX");


--
-- Name: Term term_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Term"
    ADD CONSTRAINT term_pk PRIMARY KEY ("Id");


--
-- Name: Term term_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Term"
    ADD CONSTRAINT term_un UNIQUE ("CX");


--
-- Name: User user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT user_pk PRIMARY KEY ("Id");


--
-- Name: User user_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT user_un UNIQUE ("CX");


--
-- Name: term_cx_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX term_cx_idx ON public."Term" USING btree ("CX");


--
-- Name: ExamPeriod examperiod_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamPeriod"
    ADD CONSTRAINT examperiod_fk FOREIGN KEY ("TermId") REFERENCES public."Term"("Id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: ExamPeriod examperiod_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamPeriod"
    ADD CONSTRAINT examperiod_fk_1 FOREIGN KEY ("ExamProgramId") REFERENCES public."ExamProgram"("Id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: ExamProgram examprogram_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamProgram"
    ADD CONSTRAINT examprogram_fk FOREIGN KEY ("SemesterId") REFERENCES public."Semester"("Id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: ExamRoomExamPeriod examroomexamperiod_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamRoomExamPeriod"
    ADD CONSTRAINT examroomexamperiod_fk FOREIGN KEY ("ExamRoomId") REFERENCES public."ExamRoom"("Id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: ExamRoomExamPeriod examroomexamperiod_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ExamRoomExamPeriod"
    ADD CONSTRAINT examroomexamperiod_fk_1 FOREIGN KEY ("ExamPeriodId") REFERENCES public."ExamPeriod"("Id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: Student student_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT student_fk FOREIGN KEY ("ExamRoomId", "ExamPeriodId") REFERENCES public."ExamRoomExamPeriod"("ExamRoomId", "ExamPeriodId") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: StudentTerm student_studentterm_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentTerm"
    ADD CONSTRAINT student_studentterm_fk FOREIGN KEY ("StudentId") REFERENCES public."Student"("Id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: Term term_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Term"
    ADD CONSTRAINT term_fk FOREIGN KEY ("SemesterId") REFERENCES public."Semester"("Id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: StudentTerm term_studentterm_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentTerm"
    ADD CONSTRAINT term_studentterm_fk FOREIGN KEY ("TermId") REFERENCES public."Term"("Id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: User user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT user_fk FOREIGN KEY ("StudentId") REFERENCES public."Student"("Id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

