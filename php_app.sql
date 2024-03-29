toc.dat                                                                                             0000600 0004000 0002000 00000027232 14555746141 0014461 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   -                     |            php_app    16.0    16.0 +               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    18194    php_app    DATABASE     ~   CREATE DATABASE php_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE php_app;
                postgres    false         �            1259    26683    bill_products    TABLE     �   CREATE TABLE public.bill_products (
    id integer NOT NULL,
    id_bill integer,
    id_product integer,
    quantity integer
);
 !   DROP TABLE public.bill_products;
       public         heap    postgres    false         �            1259    26682    bill_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bill_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.bill_products_id_seq;
       public          postgres    false    223                    0    0    bill_products_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.bill_products_id_seq OWNED BY public.bill_products.id;
          public          postgres    false    222         �            1259    26663    bills    TABLE     �   CREATE TABLE public.bills (
    id integer NOT NULL,
    id_client integer,
    id_supplier integer,
    total numeric,
    date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.bills;
       public         heap    postgres    false         �            1259    26662    bills_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.bills_id_seq;
       public          postgres    false    221                    0    0    bills_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.bills_id_seq OWNED BY public.bills.id;
          public          postgres    false    220         �            1259    26650    clients    TABLE     �   CREATE TABLE public.clients (
    id integer NOT NULL,
    name character varying(40),
    email character varying(40),
    celphone character varying(12),
    cpfcnpj character varying(14)
);
    DROP TABLE public.clients;
       public         heap    postgres    false         �            1259    26649    clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.clients_id_seq;
       public          postgres    false    219                    0    0    clients_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;
          public          postgres    false    218         �            1259    26637    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    id_supplier integer NOT NULL,
    name character varying(40) NOT NULL,
    value numeric NOT NULL,
    unit character varying(10)
);
    DROP TABLE public.products;
       public         heap    postgres    false         �            1259    26631 	   suppliers    TABLE     [   CREATE TABLE public.suppliers (
    id integer NOT NULL,
    name character varying(40)
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false         �            1259    26630    suppliers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.suppliers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.suppliers_id_seq;
       public          postgres    false    216                    0    0    suppliers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.suppliers_id_seq OWNED BY public.suppliers.id;
          public          postgres    false    215         g           2604    26686    bill_products id    DEFAULT     t   ALTER TABLE ONLY public.bill_products ALTER COLUMN id SET DEFAULT nextval('public.bill_products_id_seq'::regclass);
 ?   ALTER TABLE public.bill_products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223         e           2604    26666    bills id    DEFAULT     d   ALTER TABLE ONLY public.bills ALTER COLUMN id SET DEFAULT nextval('public.bills_id_seq'::regclass);
 7   ALTER TABLE public.bills ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221         d           2604    26653 
   clients id    DEFAULT     h   ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);
 9   ALTER TABLE public.clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219         c           2604    26634    suppliers id    DEFAULT     l   ALTER TABLE ONLY public.suppliers ALTER COLUMN id SET DEFAULT nextval('public.suppliers_id_seq'::regclass);
 ;   ALTER TABLE public.suppliers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216                   0    26683    bill_products 
   TABLE DATA           J   COPY public.bill_products (id, id_bill, id_product, quantity) FROM stdin;
    public          postgres    false    223       4884.dat           0    26663    bills 
   TABLE DATA           H   COPY public.bills (id, id_client, id_supplier, total, date) FROM stdin;
    public          postgres    false    221       4882.dat           0    26650    clients 
   TABLE DATA           E   COPY public.clients (id, name, email, celphone, cpfcnpj) FROM stdin;
    public          postgres    false    219       4880.dat           0    26637    products 
   TABLE DATA           F   COPY public.products (id, id_supplier, name, value, unit) FROM stdin;
    public          postgres    false    217       4878.dat           0    26631 	   suppliers 
   TABLE DATA           -   COPY public.suppliers (id, name) FROM stdin;
    public          postgres    false    216       4877.dat            0    0    bill_products_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.bill_products_id_seq', 1, false);
          public          postgres    false    222                     0    0    bills_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.bills_id_seq', 1, false);
          public          postgres    false    220         !           0    0    clients_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clients_id_seq', 1, false);
          public          postgres    false    218         "           0    0    suppliers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.suppliers_id_seq', 1, false);
          public          postgres    false    215         w           2606    26688     bill_products bill_products_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.bill_products
    ADD CONSTRAINT bill_products_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.bill_products DROP CONSTRAINT bill_products_pkey;
       public            postgres    false    223         u           2606    26671    bills bills_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.bills DROP CONSTRAINT bills_pkey;
       public            postgres    false    221         m           2606    26659    clients clients_celphone_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_celphone_key UNIQUE (celphone);
 F   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_celphone_key;
       public            postgres    false    219         o           2606    26661    clients clients_cpfcnpj_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_cpfcnpj_key UNIQUE (cpfcnpj);
 E   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_cpfcnpj_key;
       public            postgres    false    219         q           2606    26657    clients clients_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_email_key;
       public            postgres    false    219         s           2606    26655    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    219         k           2606    26643    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    217         i           2606    26636    suppliers suppliers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    216         {           2606    26689    bill_products fk_idbill    FK CONSTRAINT     v   ALTER TABLE ONLY public.bill_products
    ADD CONSTRAINT fk_idbill FOREIGN KEY (id_bill) REFERENCES public.bills(id);
 A   ALTER TABLE ONLY public.bill_products DROP CONSTRAINT fk_idbill;
       public          postgres    false    4725    223    221         y           2606    26672    bills fk_idclient    FK CONSTRAINT     t   ALTER TABLE ONLY public.bills
    ADD CONSTRAINT fk_idclient FOREIGN KEY (id_client) REFERENCES public.clients(id);
 ;   ALTER TABLE ONLY public.bills DROP CONSTRAINT fk_idclient;
       public          postgres    false    221    4723    219         |           2606    26694    bill_products fk_idproduct    FK CONSTRAINT        ALTER TABLE ONLY public.bill_products
    ADD CONSTRAINT fk_idproduct FOREIGN KEY (id_product) REFERENCES public.products(id);
 D   ALTER TABLE ONLY public.bill_products DROP CONSTRAINT fk_idproduct;
       public          postgres    false    217    4715    223         x           2606    26644    products fk_idsupplier    FK CONSTRAINT     }   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_idsupplier FOREIGN KEY (id_supplier) REFERENCES public.suppliers(id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_idsupplier;
       public          postgres    false    216    4713    217         z           2606    26677    bills fk_idsupplier    FK CONSTRAINT     z   ALTER TABLE ONLY public.bills
    ADD CONSTRAINT fk_idsupplier FOREIGN KEY (id_supplier) REFERENCES public.suppliers(id);
 =   ALTER TABLE ONLY public.bills DROP CONSTRAINT fk_idsupplier;
       public          postgres    false    216    4713    221                                                                                                                                                                                                                                                                                                                                                                              4884.dat                                                                                            0000600 0004000 0002000 00000000005 14555746141 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4882.dat                                                                                            0000600 0004000 0002000 00000000005 14555746141 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4880.dat                                                                                            0000600 0004000 0002000 00000000005 14555746141 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4878.dat                                                                                            0000600 0004000 0002000 00000000005 14555746141 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4877.dat                                                                                            0000600 0004000 0002000 00000000005 14555746141 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000022476 14555746141 0015413 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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

DROP DATABASE php_app;
--
-- Name: php_app; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE php_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE php_app OWNER TO postgres;

\connect php_app

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
-- Name: bill_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bill_products (
    id integer NOT NULL,
    id_bill integer,
    id_product integer,
    quantity integer
);


ALTER TABLE public.bill_products OWNER TO postgres;

--
-- Name: bill_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bill_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bill_products_id_seq OWNER TO postgres;

--
-- Name: bill_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bill_products_id_seq OWNED BY public.bill_products.id;


--
-- Name: bills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bills (
    id integer NOT NULL,
    id_client integer,
    id_supplier integer,
    total numeric,
    date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.bills OWNER TO postgres;

--
-- Name: bills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bills_id_seq OWNER TO postgres;

--
-- Name: bills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bills_id_seq OWNED BY public.bills.id;


--
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    id integer NOT NULL,
    name character varying(40),
    email character varying(40),
    celphone character varying(12),
    cpfcnpj character varying(14)
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clients_id_seq OWNER TO postgres;

--
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    id_supplier integer NOT NULL,
    name character varying(40) NOT NULL,
    value numeric NOT NULL,
    unit character varying(10)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    id integer NOT NULL,
    name character varying(40)
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- Name: suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.suppliers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.suppliers_id_seq OWNER TO postgres;

--
-- Name: suppliers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.suppliers_id_seq OWNED BY public.suppliers.id;


--
-- Name: bill_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bill_products ALTER COLUMN id SET DEFAULT nextval('public.bill_products_id_seq'::regclass);


--
-- Name: bills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bills ALTER COLUMN id SET DEFAULT nextval('public.bills_id_seq'::regclass);


--
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);


--
-- Name: suppliers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers ALTER COLUMN id SET DEFAULT nextval('public.suppliers_id_seq'::regclass);


--
-- Data for Name: bill_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bill_products (id, id_bill, id_product, quantity) FROM stdin;
\.
COPY public.bill_products (id, id_bill, id_product, quantity) FROM '$$PATH$$/4884.dat';

--
-- Data for Name: bills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bills (id, id_client, id_supplier, total, date) FROM stdin;
\.
COPY public.bills (id, id_client, id_supplier, total, date) FROM '$$PATH$$/4882.dat';

--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients (id, name, email, celphone, cpfcnpj) FROM stdin;
\.
COPY public.clients (id, name, email, celphone, cpfcnpj) FROM '$$PATH$$/4880.dat';

--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, id_supplier, name, value, unit) FROM stdin;
\.
COPY public.products (id, id_supplier, name, value, unit) FROM '$$PATH$$/4878.dat';

--
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suppliers (id, name) FROM stdin;
\.
COPY public.suppliers (id, name) FROM '$$PATH$$/4877.dat';

--
-- Name: bill_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bill_products_id_seq', 1, false);


--
-- Name: bills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bills_id_seq', 1, false);


--
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_id_seq', 1, false);


--
-- Name: suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suppliers_id_seq', 1, false);


--
-- Name: bill_products bill_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bill_products
    ADD CONSTRAINT bill_products_pkey PRIMARY KEY (id);


--
-- Name: bills bills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_pkey PRIMARY KEY (id);


--
-- Name: clients clients_celphone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_celphone_key UNIQUE (celphone);


--
-- Name: clients clients_cpfcnpj_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_cpfcnpj_key UNIQUE (cpfcnpj);


--
-- Name: clients clients_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_email_key UNIQUE (email);


--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);


--
-- Name: bill_products fk_idbill; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bill_products
    ADD CONSTRAINT fk_idbill FOREIGN KEY (id_bill) REFERENCES public.bills(id);


--
-- Name: bills fk_idclient; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT fk_idclient FOREIGN KEY (id_client) REFERENCES public.clients(id);


--
-- Name: bill_products fk_idproduct; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bill_products
    ADD CONSTRAINT fk_idproduct FOREIGN KEY (id_product) REFERENCES public.products(id);


--
-- Name: products fk_idsupplier; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_idsupplier FOREIGN KEY (id_supplier) REFERENCES public.suppliers(id);


--
-- Name: bills fk_idsupplier; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT fk_idsupplier FOREIGN KEY (id_supplier) REFERENCES public.suppliers(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  