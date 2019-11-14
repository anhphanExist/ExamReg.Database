toc.dat                                                                                             0000600 0004000 0002000 00000062607 13563176611 0014463 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       6                
    w            ExamReg    11.5    11.5 ]    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         �           1262    16812    ExamReg    DATABASE     �   CREATE DATABASE "ExamReg" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "ExamReg";
             postgres    false         �            1259    16874 
   ExamPeriod    TABLE     �   CREATE TABLE public."ExamPeriod" (
    "Id" uuid NOT NULL,
    "ExamDate" date NOT NULL,
    "StartHour" smallint NOT NULL,
    "FinishHour" smallint NOT NULL,
    "TermId" uuid NOT NULL,
    "ExamProgramId" uuid NOT NULL,
    "CX" bigint NOT NULL
);
     DROP TABLE public."ExamPeriod";
       public         postgres    false         �            1259    16872    ExamPeriod_CX_seq    SEQUENCE     |   CREATE SEQUENCE public."ExamPeriod_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ExamPeriod_CX_seq";
       public       postgres    false    205         �           0    0    ExamPeriod_CX_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."ExamPeriod_CX_seq" OWNED BY public."ExamPeriod"."CX";
            public       postgres    false    204         �            1259    16904    ExamProgram    TABLE     �   CREATE TABLE public."ExamProgram" (
    "Id" uuid NOT NULL,
    "Name" character varying(500) NOT NULL,
    "SemesterId" uuid NOT NULL,
    "CX" bigint NOT NULL
);
 !   DROP TABLE public."ExamProgram";
       public         postgres    false         �            1259    16902    ExamProgram_CX_seq    SEQUENCE     }   CREATE SEQUENCE public."ExamProgram_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."ExamProgram_CX_seq";
       public       postgres    false    211         �           0    0    ExamProgram_CX_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ExamProgram_CX_seq" OWNED BY public."ExamProgram"."CX";
            public       postgres    false    210         �            1259    16894    ExamRoom    TABLE     �   CREATE TABLE public."ExamRoom" (
    "Id" uuid NOT NULL,
    "RoomNumber" smallint NOT NULL,
    "AmphitheaterName" character varying(50) NOT NULL,
    "ComputerNumber" integer NOT NULL,
    "CX" bigint NOT NULL
);
    DROP TABLE public."ExamRoom";
       public         postgres    false         �            1259    16917    ExamRoomExamPeriod    TABLE     �   CREATE TABLE public."ExamRoomExamPeriod" (
    "ExamRoomId" uuid NOT NULL,
    "ExamPeriodId" uuid NOT NULL,
    "CX" bigint NOT NULL
);
 (   DROP TABLE public."ExamRoomExamPeriod";
       public         postgres    false         �            1259    16915    ExamRoomExamPeriod_CX_seq    SEQUENCE     �   CREATE SEQUENCE public."ExamRoomExamPeriod_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."ExamRoomExamPeriod_CX_seq";
       public       postgres    false    213         �           0    0    ExamRoomExamPeriod_CX_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."ExamRoomExamPeriod_CX_seq" OWNED BY public."ExamRoomExamPeriod"."CX";
            public       postgres    false    212         �            1259    16892    ExamRoom_CX_seq    SEQUENCE     z   CREATE SEQUENCE public."ExamRoom_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."ExamRoom_CX_seq";
       public       postgres    false    209         �           0    0    ExamRoom_CX_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."ExamRoom_CX_seq" OWNED BY public."ExamRoom"."CX";
            public       postgres    false    208         �            1259    16864    Semester    TABLE     �   CREATE TABLE public."Semester" (
    "Id" uuid NOT NULL,
    "StartYear" smallint NOT NULL,
    "EndYear" smallint NOT NULL,
    "IsFirstHalf" boolean NOT NULL,
    "CX" bigint NOT NULL
);
    DROP TABLE public."Semester";
       public         postgres    false         �            1259    16862    Semester_CX_seq    SEQUENCE     z   CREATE SEQUENCE public."Semester_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Semester_CX_seq";
       public       postgres    false    203         �           0    0    Semester_CX_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Semester_CX_seq" OWNED BY public."Semester"."CX";
            public       postgres    false    202         �            1259    16841    Student    TABLE     &  CREATE TABLE public."Student" (
    "Id" uuid NOT NULL,
    "StudentNumber" integer NOT NULL,
    "LastName" character varying(100) NOT NULL,
    "GivenName" character varying(100) NOT NULL,
    "Birthday" date NOT NULL,
    "Email" character varying(500) NOT NULL,
    "CX" bigint NOT NULL
);
    DROP TABLE public."Student";
       public         postgres    false         �            1259    16884    StudentExamPeriod    TABLE     �   CREATE TABLE public."StudentExamPeriod" (
    "StudentId" uuid NOT NULL,
    "ExamPeriodId" uuid NOT NULL,
    "CX" bigint NOT NULL
);
 '   DROP TABLE public."StudentExamPeriod";
       public         postgres    false         �            1259    16882    StudentExamPeriod_CX_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentExamPeriod_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."StudentExamPeriod_CX_seq";
       public       postgres    false    207         �           0    0    StudentExamPeriod_CX_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."StudentExamPeriod_CX_seq" OWNED BY public."StudentExamPeriod"."CX";
            public       postgres    false    206         �            1259    16928    StudentExamRoom    TABLE     �   CREATE TABLE public."StudentExamRoom" (
    "StudentId" uuid NOT NULL,
    "ExamRoomId" uuid NOT NULL,
    "CX" bigint NOT NULL
);
 %   DROP TABLE public."StudentExamRoom";
       public         postgres    false         �            1259    16926    StudentExamRoom_CX_seq    SEQUENCE     �   CREATE SEQUENCE public."StudentExamRoom_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."StudentExamRoom_CX_seq";
       public       postgres    false    215         �           0    0    StudentExamRoom_CX_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."StudentExamRoom_CX_seq" OWNED BY public."StudentExamRoom"."CX";
            public       postgres    false    214         �            1259    16854    StudentTerm    TABLE     �   CREATE TABLE public."StudentTerm" (
    "StudentId" uuid NOT NULL,
    "TermId" uuid NOT NULL,
    "CX" bigint NOT NULL,
    "IsQualified" boolean NOT NULL
);
 !   DROP TABLE public."StudentTerm";
       public         postgres    false         �            1259    16852    StudentTerm_CX_seq    SEQUENCE     }   CREATE SEQUENCE public."StudentTerm_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."StudentTerm_CX_seq";
       public       postgres    false    201         �           0    0    StudentTerm_CX_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."StudentTerm_CX_seq" OWNED BY public."StudentTerm"."CX";
            public       postgres    false    200         �            1259    16839    Student_CX_seq    SEQUENCE     y   CREATE SEQUENCE public."Student_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Student_CX_seq";
       public       postgres    false    199         �           0    0    Student_CX_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Student_CX_seq" OWNED BY public."Student"."CX";
            public       postgres    false    198         �            1259    16829    Term    TABLE     �   CREATE TABLE public."Term" (
    "Id" uuid NOT NULL,
    "SubjectName" character varying(500) NOT NULL,
    "SemesterId" uuid NOT NULL,
    "CX" bigint NOT NULL
);
    DROP TABLE public."Term";
       public         postgres    false         �            1259    16827    Term_CX_seq    SEQUENCE     v   CREATE SEQUENCE public."Term_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Term_CX_seq";
       public       postgres    false    197         �           0    0    Term_CX_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Term_CX_seq" OWNED BY public."Term"."CX";
            public       postgres    false    196         �            1259    17294    User    TABLE     �   CREATE TABLE public."User" (
    "Id" uuid NOT NULL,
    "Username" character varying(500) NOT NULL,
    "Password" character varying(500) NOT NULL,
    "IsAdmin" boolean NOT NULL,
    "StudentId" uuid,
    "CX" bigint NOT NULL
);
    DROP TABLE public."User";
       public         postgres    false         �            1259    17292    User_CX_seq    SEQUENCE     v   CREATE SEQUENCE public."User_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_CX_seq";
       public       postgres    false    217         �           0    0    User_CX_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."User_CX_seq" OWNED BY public."User"."CX";
            public       postgres    false    216         �
           2604    16877    ExamPeriod CX    DEFAULT     t   ALTER TABLE ONLY public."ExamPeriod" ALTER COLUMN "CX" SET DEFAULT nextval('public."ExamPeriod_CX_seq"'::regclass);
 @   ALTER TABLE public."ExamPeriod" ALTER COLUMN "CX" DROP DEFAULT;
       public       postgres    false    204    205    205         �
           2604    16907    ExamProgram CX    DEFAULT     v   ALTER TABLE ONLY public."ExamProgram" ALTER COLUMN "CX" SET DEFAULT nextval('public."ExamProgram_CX_seq"'::regclass);
 A   ALTER TABLE public."ExamProgram" ALTER COLUMN "CX" DROP DEFAULT;
       public       postgres    false    210    211    211         �
           2604    16897    ExamRoom CX    DEFAULT     p   ALTER TABLE ONLY public."ExamRoom" ALTER COLUMN "CX" SET DEFAULT nextval('public."ExamRoom_CX_seq"'::regclass);
 >   ALTER TABLE public."ExamRoom" ALTER COLUMN "CX" DROP DEFAULT;
       public       postgres    false    208    209    209         �
           2604    16920    ExamRoomExamPeriod CX    DEFAULT     �   ALTER TABLE ONLY public."ExamRoomExamPeriod" ALTER COLUMN "CX" SET DEFAULT nextval('public."ExamRoomExamPeriod_CX_seq"'::regclass);
 H   ALTER TABLE public."ExamRoomExamPeriod" ALTER COLUMN "CX" DROP DEFAULT;
       public       postgres    false    213    212    213         �
           2604    16867    Semester CX    DEFAULT     p   ALTER TABLE ONLY public."Semester" ALTER COLUMN "CX" SET DEFAULT nextval('public."Semester_CX_seq"'::regclass);
 >   ALTER TABLE public."Semester" ALTER COLUMN "CX" DROP DEFAULT;
       public       postgres    false    203    202    203         �
           2604    16844 
   Student CX    DEFAULT     n   ALTER TABLE ONLY public."Student" ALTER COLUMN "CX" SET DEFAULT nextval('public."Student_CX_seq"'::regclass);
 =   ALTER TABLE public."Student" ALTER COLUMN "CX" DROP DEFAULT;
       public       postgres    false    198    199    199         �
           2604    16887    StudentExamPeriod CX    DEFAULT     �   ALTER TABLE ONLY public."StudentExamPeriod" ALTER COLUMN "CX" SET DEFAULT nextval('public."StudentExamPeriod_CX_seq"'::regclass);
 G   ALTER TABLE public."StudentExamPeriod" ALTER COLUMN "CX" DROP DEFAULT;
       public       postgres    false    207    206    207         �
           2604    16931    StudentExamRoom CX    DEFAULT     ~   ALTER TABLE ONLY public."StudentExamRoom" ALTER COLUMN "CX" SET DEFAULT nextval('public."StudentExamRoom_CX_seq"'::regclass);
 E   ALTER TABLE public."StudentExamRoom" ALTER COLUMN "CX" DROP DEFAULT;
       public       postgres    false    215    214    215         �
           2604    16857    StudentTerm CX    DEFAULT     v   ALTER TABLE ONLY public."StudentTerm" ALTER COLUMN "CX" SET DEFAULT nextval('public."StudentTerm_CX_seq"'::regclass);
 A   ALTER TABLE public."StudentTerm" ALTER COLUMN "CX" DROP DEFAULT;
       public       postgres    false    200    201    201         �
           2604    16832    Term CX    DEFAULT     h   ALTER TABLE ONLY public."Term" ALTER COLUMN "CX" SET DEFAULT nextval('public."Term_CX_seq"'::regclass);
 :   ALTER TABLE public."Term" ALTER COLUMN "CX" DROP DEFAULT;
       public       postgres    false    196    197    197         �
           2604    17297    User CX    DEFAULT     h   ALTER TABLE ONLY public."User" ALTER COLUMN "CX" SET DEFAULT nextval('public."User_CX_seq"'::regclass);
 :   ALTER TABLE public."User" ALTER COLUMN "CX" DROP DEFAULT;
       public       postgres    false    216    217    217         w          0    16874 
   ExamPeriod 
   TABLE DATA               t   COPY public."ExamPeriod" ("Id", "ExamDate", "StartHour", "FinishHour", "TermId", "ExamProgramId", "CX") FROM stdin;
    public       postgres    false    205       2935.dat }          0    16904    ExamProgram 
   TABLE DATA               I   COPY public."ExamProgram" ("Id", "Name", "SemesterId", "CX") FROM stdin;
    public       postgres    false    211       2941.dat {          0    16894    ExamRoom 
   TABLE DATA               d   COPY public."ExamRoom" ("Id", "RoomNumber", "AmphitheaterName", "ComputerNumber", "CX") FROM stdin;
    public       postgres    false    209       2939.dat           0    16917    ExamRoomExamPeriod 
   TABLE DATA               R   COPY public."ExamRoomExamPeriod" ("ExamRoomId", "ExamPeriodId", "CX") FROM stdin;
    public       postgres    false    213       2943.dat u          0    16864    Semester 
   TABLE DATA               W   COPY public."Semester" ("Id", "StartYear", "EndYear", "IsFirstHalf", "CX") FROM stdin;
    public       postgres    false    203       2933.dat q          0    16841    Student 
   TABLE DATA               n   COPY public."Student" ("Id", "StudentNumber", "LastName", "GivenName", "Birthday", "Email", "CX") FROM stdin;
    public       postgres    false    199       2929.dat y          0    16884    StudentExamPeriod 
   TABLE DATA               P   COPY public."StudentExamPeriod" ("StudentId", "ExamPeriodId", "CX") FROM stdin;
    public       postgres    false    207       2937.dat �          0    16928    StudentExamRoom 
   TABLE DATA               L   COPY public."StudentExamRoom" ("StudentId", "ExamRoomId", "CX") FROM stdin;
    public       postgres    false    215       2945.dat s          0    16854    StudentTerm 
   TABLE DATA               S   COPY public."StudentTerm" ("StudentId", "TermId", "CX", "IsQualified") FROM stdin;
    public       postgres    false    201       2931.dat o          0    16829    Term 
   TABLE DATA               I   COPY public."Term" ("Id", "SubjectName", "SemesterId", "CX") FROM stdin;
    public       postgres    false    197       2927.dat �          0    17294    User 
   TABLE DATA               \   COPY public."User" ("Id", "Username", "Password", "IsAdmin", "StudentId", "CX") FROM stdin;
    public       postgres    false    217       2947.dat �           0    0    ExamPeriod_CX_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."ExamPeriod_CX_seq"', 1, false);
            public       postgres    false    204         �           0    0    ExamProgram_CX_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ExamProgram_CX_seq"', 1, false);
            public       postgres    false    210         �           0    0    ExamRoomExamPeriod_CX_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ExamRoomExamPeriod_CX_seq"', 1, false);
            public       postgres    false    212         �           0    0    ExamRoom_CX_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."ExamRoom_CX_seq"', 1, false);
            public       postgres    false    208         �           0    0    Semester_CX_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Semester_CX_seq"', 1, false);
            public       postgres    false    202         �           0    0    StudentExamPeriod_CX_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."StudentExamPeriod_CX_seq"', 1, false);
            public       postgres    false    206         �           0    0    StudentExamRoom_CX_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."StudentExamRoom_CX_seq"', 1, false);
            public       postgres    false    214         �           0    0    StudentTerm_CX_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."StudentTerm_CX_seq"', 1, false);
            public       postgres    false    200         �           0    0    Student_CX_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Student_CX_seq"', 1, false);
            public       postgres    false    198         �           0    0    Term_CX_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Term_CX_seq"', 1, false);
            public       postgres    false    196         �           0    0    User_CX_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."User_CX_seq"', 1, false);
            public       postgres    false    216         �
           2606    16879    ExamPeriod examperiod_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public."ExamPeriod"
    ADD CONSTRAINT examperiod_pk PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."ExamPeriod" DROP CONSTRAINT examperiod_pk;
       public         postgres    false    205         �
           2606    16881    ExamPeriod examperiod_un 
   CONSTRAINT     U   ALTER TABLE ONLY public."ExamPeriod"
    ADD CONSTRAINT examperiod_un UNIQUE ("CX");
 D   ALTER TABLE ONLY public."ExamPeriod" DROP CONSTRAINT examperiod_un;
       public         postgres    false    205         �
           2606    16912    ExamProgram examprogram_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public."ExamProgram"
    ADD CONSTRAINT examprogram_pk PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public."ExamProgram" DROP CONSTRAINT examprogram_pk;
       public         postgres    false    211         �
           2606    16914    ExamProgram examprogram_un 
   CONSTRAINT     W   ALTER TABLE ONLY public."ExamProgram"
    ADD CONSTRAINT examprogram_un UNIQUE ("CX");
 F   ALTER TABLE ONLY public."ExamProgram" DROP CONSTRAINT examprogram_un;
       public         postgres    false    211         �
           2606    16899    ExamRoom examroom_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public."ExamRoom"
    ADD CONSTRAINT examroom_pk PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."ExamRoom" DROP CONSTRAINT examroom_pk;
       public         postgres    false    209         �
           2606    16901    ExamRoom examroom_un 
   CONSTRAINT     Q   ALTER TABLE ONLY public."ExamRoom"
    ADD CONSTRAINT examroom_un UNIQUE ("CX");
 @   ALTER TABLE ONLY public."ExamRoom" DROP CONSTRAINT examroom_un;
       public         postgres    false    209         �
           2606    16922 (   ExamRoomExamPeriod examroomexamperiod_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public."ExamRoomExamPeriod"
    ADD CONSTRAINT examroomexamperiod_pk PRIMARY KEY ("ExamRoomId", "ExamPeriodId");
 T   ALTER TABLE ONLY public."ExamRoomExamPeriod" DROP CONSTRAINT examroomexamperiod_pk;
       public         postgres    false    213    213         �
           2606    16924 (   ExamRoomExamPeriod examroomexamperiod_un 
   CONSTRAINT     e   ALTER TABLE ONLY public."ExamRoomExamPeriod"
    ADD CONSTRAINT examroomexamperiod_un UNIQUE ("CX");
 T   ALTER TABLE ONLY public."ExamRoomExamPeriod" DROP CONSTRAINT examroomexamperiod_un;
       public         postgres    false    213         �
           2606    16869    Semester semester_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public."Semester"
    ADD CONSTRAINT semester_pk PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."Semester" DROP CONSTRAINT semester_pk;
       public         postgres    false    203         �
           2606    16871    Semester semester_un 
   CONSTRAINT     Q   ALTER TABLE ONLY public."Semester"
    ADD CONSTRAINT semester_un UNIQUE ("CX");
 @   ALTER TABLE ONLY public."Semester" DROP CONSTRAINT semester_un;
       public         postgres    false    203         �
           2606    16849    Student student_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT student_pk PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public."Student" DROP CONSTRAINT student_pk;
       public         postgres    false    199         �
           2606    16851    Student student_un 
   CONSTRAINT     `   ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT student_un UNIQUE ("StudentNumber", "CX");
 >   ALTER TABLE ONLY public."Student" DROP CONSTRAINT student_un;
       public         postgres    false    199    199         �
           2606    16889 &   StudentExamPeriod studentexamperiod_pk 
   CONSTRAINT        ALTER TABLE ONLY public."StudentExamPeriod"
    ADD CONSTRAINT studentexamperiod_pk PRIMARY KEY ("StudentId", "ExamPeriodId");
 R   ALTER TABLE ONLY public."StudentExamPeriod" DROP CONSTRAINT studentexamperiod_pk;
       public         postgres    false    207    207         �
           2606    16891 &   StudentExamPeriod studentexamperiod_un 
   CONSTRAINT     c   ALTER TABLE ONLY public."StudentExamPeriod"
    ADD CONSTRAINT studentexamperiod_un UNIQUE ("CX");
 R   ALTER TABLE ONLY public."StudentExamPeriod" DROP CONSTRAINT studentexamperiod_un;
       public         postgres    false    207         �
           2606    16933 "   StudentExamRoom studentexamroom_pk 
   CONSTRAINT     y   ALTER TABLE ONLY public."StudentExamRoom"
    ADD CONSTRAINT studentexamroom_pk PRIMARY KEY ("ExamRoomId", "StudentId");
 N   ALTER TABLE ONLY public."StudentExamRoom" DROP CONSTRAINT studentexamroom_pk;
       public         postgres    false    215    215         �
           2606    16935 "   StudentExamRoom studentexamroom_un 
   CONSTRAINT     _   ALTER TABLE ONLY public."StudentExamRoom"
    ADD CONSTRAINT studentexamroom_un UNIQUE ("CX");
 N   ALTER TABLE ONLY public."StudentExamRoom" DROP CONSTRAINT studentexamroom_un;
       public         postgres    false    215         �
           2606    16859    StudentTerm studentterm_pk 
   CONSTRAINT     m   ALTER TABLE ONLY public."StudentTerm"
    ADD CONSTRAINT studentterm_pk PRIMARY KEY ("StudentId", "TermId");
 F   ALTER TABLE ONLY public."StudentTerm" DROP CONSTRAINT studentterm_pk;
       public         postgres    false    201    201         �
           2606    16861    StudentTerm studentterm_un 
   CONSTRAINT     W   ALTER TABLE ONLY public."StudentTerm"
    ADD CONSTRAINT studentterm_un UNIQUE ("CX");
 F   ALTER TABLE ONLY public."StudentTerm" DROP CONSTRAINT studentterm_un;
       public         postgres    false    201         �
           2606    16837    Term term_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public."Term"
    ADD CONSTRAINT term_pk PRIMARY KEY ("Id");
 8   ALTER TABLE ONLY public."Term" DROP CONSTRAINT term_pk;
       public         postgres    false    197         �
           2606    16937    Term term_un 
   CONSTRAINT     I   ALTER TABLE ONLY public."Term"
    ADD CONSTRAINT term_un UNIQUE ("CX");
 8   ALTER TABLE ONLY public."Term" DROP CONSTRAINT term_un;
       public         postgres    false    197         �
           2606    17302    User user_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT user_pk PRIMARY KEY ("Id");
 8   ALTER TABLE ONLY public."User" DROP CONSTRAINT user_pk;
       public         postgres    false    217         �
           2606    17304    User user_un 
   CONSTRAINT     I   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT user_un UNIQUE ("CX");
 8   ALTER TABLE ONLY public."User" DROP CONSTRAINT user_un;
       public         postgres    false    217         �
           1259    16838    term_cx_idx    INDEX     E   CREATE UNIQUE INDEX term_cx_idx ON public."Term" USING btree ("CX");
    DROP INDEX public.term_cx_idx;
       public         postgres    false    197                                                                                                                                 2935.dat                                                                                            0000600 0004000 0002000 00000000005 13563176611 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2941.dat                                                                                            0000600 0004000 0002000 00000000005 13563176611 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2939.dat                                                                                            0000600 0004000 0002000 00000000005 13563176611 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2943.dat                                                                                            0000600 0004000 0002000 00000000005 13563176611 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2933.dat                                                                                            0000600 0004000 0002000 00000000005 13563176611 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2929.dat                                                                                            0000600 0004000 0002000 00000000005 13563176611 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2937.dat                                                                                            0000600 0004000 0002000 00000000005 13563176611 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2945.dat                                                                                            0000600 0004000 0002000 00000000005 13563176611 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2931.dat                                                                                            0000600 0004000 0002000 00000000005 13563176611 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2927.dat                                                                                            0000600 0004000 0002000 00000000005 13563176611 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2947.dat                                                                                            0000600 0004000 0002000 00000000005 13563176611 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000050674 13563176611 0015411 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
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

DROP DATABASE "ExamReg";
--
-- Name: ExamReg; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "ExamReg" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE "ExamReg" OWNER TO postgres;

\connect "ExamReg"

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
    "CX" bigint NOT NULL
);


ALTER TABLE public."Student" OWNER TO postgres;

--
-- Name: StudentExamPeriod; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentExamPeriod" (
    "StudentId" uuid NOT NULL,
    "ExamPeriodId" uuid NOT NULL,
    "CX" bigint NOT NULL
);


ALTER TABLE public."StudentExamPeriod" OWNER TO postgres;

--
-- Name: StudentExamPeriod_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."StudentExamPeriod_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StudentExamPeriod_CX_seq" OWNER TO postgres;

--
-- Name: StudentExamPeriod_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."StudentExamPeriod_CX_seq" OWNED BY public."StudentExamPeriod"."CX";


--
-- Name: StudentExamRoom; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentExamRoom" (
    "StudentId" uuid NOT NULL,
    "ExamRoomId" uuid NOT NULL,
    "CX" bigint NOT NULL
);


ALTER TABLE public."StudentExamRoom" OWNER TO postgres;

--
-- Name: StudentExamRoom_CX_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."StudentExamRoom_CX_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StudentExamRoom_CX_seq" OWNER TO postgres;

--
-- Name: StudentExamRoom_CX_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."StudentExamRoom_CX_seq" OWNED BY public."StudentExamRoom"."CX";


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
-- Name: StudentExamPeriod CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentExamPeriod" ALTER COLUMN "CX" SET DEFAULT nextval('public."StudentExamPeriod_CX_seq"'::regclass);


--
-- Name: StudentExamRoom CX; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentExamRoom" ALTER COLUMN "CX" SET DEFAULT nextval('public."StudentExamRoom_CX_seq"'::regclass);


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
COPY public."ExamPeriod" ("Id", "ExamDate", "StartHour", "FinishHour", "TermId", "ExamProgramId", "CX") FROM '$$PATH$$/2935.dat';

--
-- Data for Name: ExamProgram; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ExamProgram" ("Id", "Name", "SemesterId", "CX") FROM stdin;
\.
COPY public."ExamProgram" ("Id", "Name", "SemesterId", "CX") FROM '$$PATH$$/2941.dat';

--
-- Data for Name: ExamRoom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ExamRoom" ("Id", "RoomNumber", "AmphitheaterName", "ComputerNumber", "CX") FROM stdin;
\.
COPY public."ExamRoom" ("Id", "RoomNumber", "AmphitheaterName", "ComputerNumber", "CX") FROM '$$PATH$$/2939.dat';

--
-- Data for Name: ExamRoomExamPeriod; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ExamRoomExamPeriod" ("ExamRoomId", "ExamPeriodId", "CX") FROM stdin;
\.
COPY public."ExamRoomExamPeriod" ("ExamRoomId", "ExamPeriodId", "CX") FROM '$$PATH$$/2943.dat';

--
-- Data for Name: Semester; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Semester" ("Id", "StartYear", "EndYear", "IsFirstHalf", "CX") FROM stdin;
\.
COPY public."Semester" ("Id", "StartYear", "EndYear", "IsFirstHalf", "CX") FROM '$$PATH$$/2933.dat';

--
-- Data for Name: Student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Student" ("Id", "StudentNumber", "LastName", "GivenName", "Birthday", "Email", "CX") FROM stdin;
\.
COPY public."Student" ("Id", "StudentNumber", "LastName", "GivenName", "Birthday", "Email", "CX") FROM '$$PATH$$/2929.dat';

--
-- Data for Name: StudentExamPeriod; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentExamPeriod" ("StudentId", "ExamPeriodId", "CX") FROM stdin;
\.
COPY public."StudentExamPeriod" ("StudentId", "ExamPeriodId", "CX") FROM '$$PATH$$/2937.dat';

--
-- Data for Name: StudentExamRoom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentExamRoom" ("StudentId", "ExamRoomId", "CX") FROM stdin;
\.
COPY public."StudentExamRoom" ("StudentId", "ExamRoomId", "CX") FROM '$$PATH$$/2945.dat';

--
-- Data for Name: StudentTerm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentTerm" ("StudentId", "TermId", "CX", "IsQualified") FROM stdin;
\.
COPY public."StudentTerm" ("StudentId", "TermId", "CX", "IsQualified") FROM '$$PATH$$/2931.dat';

--
-- Data for Name: Term; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Term" ("Id", "SubjectName", "SemesterId", "CX") FROM stdin;
\.
COPY public."Term" ("Id", "SubjectName", "SemesterId", "CX") FROM '$$PATH$$/2927.dat';

--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" ("Id", "Username", "Password", "IsAdmin", "StudentId", "CX") FROM stdin;
\.
COPY public."User" ("Id", "Username", "Password", "IsAdmin", "StudentId", "CX") FROM '$$PATH$$/2947.dat';

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
-- Name: StudentExamPeriod_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."StudentExamPeriod_CX_seq"', 1, false);


--
-- Name: StudentExamRoom_CX_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."StudentExamRoom_CX_seq"', 1, false);


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
-- Name: StudentExamPeriod studentexamperiod_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentExamPeriod"
    ADD CONSTRAINT studentexamperiod_pk PRIMARY KEY ("StudentId", "ExamPeriodId");


--
-- Name: StudentExamPeriod studentexamperiod_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentExamPeriod"
    ADD CONSTRAINT studentexamperiod_un UNIQUE ("CX");


--
-- Name: StudentExamRoom studentexamroom_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentExamRoom"
    ADD CONSTRAINT studentexamroom_pk PRIMARY KEY ("ExamRoomId", "StudentId");


--
-- Name: StudentExamRoom studentexamroom_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentExamRoom"
    ADD CONSTRAINT studentexamroom_un UNIQUE ("CX");


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
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    