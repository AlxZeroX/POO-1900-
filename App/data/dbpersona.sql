PGDMP         .                w         	   dbpersona    11.5    11.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16417 	   dbpersona    DATABASE     �   CREATE DATABASE dbpersona WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE dbpersona;
             postgres    false            �            1259    16420    persona    TABLE     
  CREATE TABLE public.persona (
    idpersona integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    edad integer NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(50) NOT NULL
);
    DROP TABLE public.persona;
       public         postgres    false            �            1259    16452 
   Instructor    TABLE     �   CREATE TABLE public."Instructor" (
    especializacion character varying,
    "cursoAsignado" character varying,
    "areaDeTrabjo" character varying
)
INHERITS (public.persona);
     DROP TABLE public."Instructor";
       public         postgres    false    197            �            1259    16445    administrador    TABLE     i   CREATE TABLE public.administrador (
    "credencialAdmin" character varying
)
INHERITS (public.persona);
 !   DROP TABLE public.administrador;
       public         postgres    false    197            �            1259    16438    cliente    TABLE     R   CREATE TABLE public.cliente (
    tipopago integer[]
)
INHERITS (public.persona);
    DROP TABLE public.cliente;
       public         postgres    false    197            �            1259    16418    persona_idpersona_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_idpersona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.persona_idpersona_seq;
       public       postgres    false    197                       0    0    persona_idpersona_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.persona_idpersona_seq OWNED BY public.persona.idpersona;
            public       postgres    false    196            �
           2604    16466    Instructor idpersona    DEFAULT     {   ALTER TABLE ONLY public."Instructor" ALTER COLUMN idpersona SET DEFAULT nextval('public.persona_idpersona_seq'::regclass);
 E   ALTER TABLE public."Instructor" ALTER COLUMN idpersona DROP DEFAULT;
       public       postgres    false    196    200            �
           2604    16467    administrador idpersona    DEFAULT     |   ALTER TABLE ONLY public.administrador ALTER COLUMN idpersona SET DEFAULT nextval('public.persona_idpersona_seq'::regclass);
 F   ALTER TABLE public.administrador ALTER COLUMN idpersona DROP DEFAULT;
       public       postgres    false    196    199            �
           2604    16468    cliente idpersona    DEFAULT     v   ALTER TABLE ONLY public.cliente ALTER COLUMN idpersona SET DEFAULT nextval('public.persona_idpersona_seq'::regclass);
 @   ALTER TABLE public.cliente ALTER COLUMN idpersona DROP DEFAULT;
       public       postgres    false    196    198            �
           2604    16469    persona idpersona    DEFAULT     v   ALTER TABLE ONLY public.persona ALTER COLUMN idpersona SET DEFAULT nextval('public.persona_idpersona_seq'::regclass);
 @   ALTER TABLE public.persona ALTER COLUMN idpersona DROP DEFAULT;
       public       postgres    false    196    197    197                      0    16452 
   Instructor 
   TABLE DATA               �   COPY public."Instructor" (idpersona, nombre, apellido, edad, email, password, especializacion, "cursoAsignado", "areaDeTrabjo") FROM stdin;
    public       postgres    false    200   �                 0    16445    administrador 
   TABLE DATA               n   COPY public.administrador (idpersona, nombre, apellido, edad, email, password, "credencialAdmin") FROM stdin;
    public       postgres    false    199   �                 0    16438    cliente 
   TABLE DATA               _   COPY public.cliente (idpersona, nombre, apellido, edad, email, password, tipopago) FROM stdin;
    public       postgres    false    198                    0    16420    persona 
   TABLE DATA               U   COPY public.persona (idpersona, nombre, apellido, edad, email, password) FROM stdin;
    public       postgres    false    197   +                  0    0    persona_idpersona_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.persona_idpersona_seq', 1, false);
            public       postgres    false    196            �
           2606    16432    persona persona_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_email_key;
       public         postgres    false    197            �
           2606    16428    persona persona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (idpersona);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public         postgres    false    197                  x������ � �            x������ � �            x������ � �            x������ � �     