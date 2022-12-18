PGDMP     7    $    
            z         
   kerux_labo    15.0    15.0 p    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16439 
   kerux_labo    DATABASE     }   CREATE DATABASE kerux_labo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE kerux_labo;
                postgres    false            �            1259    16571    agentprocess    TABLE     �   CREATE TABLE public.agentprocess (
    id_agent integer NOT NULL,
    id_process character varying(200),
    id_personne integer
);
     DROP TABLE public.agentprocess;
       public         heap    postgres    false            �            1259    16570    agentprocess_id_agent_seq    SEQUENCE     �   CREATE SEQUENCE public.agentprocess_id_agent_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.agentprocess_id_agent_seq;
       public          postgres    false    231            �           0    0    agentprocess_id_agent_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.agentprocess_id_agent_seq OWNED BY public.agentprocess.id_agent;
          public          postgres    false    230            �            1259    16490    bon    TABLE       CREATE TABLE public.bon (
    id_bon integer NOT NULL,
    acheteur character varying(100),
    scanne_bon character varying(500),
    type_bon character varying(100),
    datee date,
    heure time without time zone,
    recepteur character varying(200),
    fk_fournisseur integer
);
    DROP TABLE public.bon;
       public         heap    postgres    false            �            1259    16489    bon_id_bon_seq    SEQUENCE     �   CREATE SEQUENCE public.bon_id_bon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.bon_id_bon_seq;
       public          postgres    false    223            �           0    0    bon_id_bon_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.bon_id_bon_seq OWNED BY public.bon.id_bon;
          public          postgres    false    222            �            1259    24670 
   box_couper    TABLE       CREATE TABLE public.box_couper (
    id integer NOT NULL,
    id_produit character varying(200),
    id_enregistrement character varying(200),
    id_nettoyage character varying(200),
    id_generate character varying(200),
    datee date,
    heure time without time zone
);
    DROP TABLE public.box_couper;
       public         heap    postgres    false            �            1259    24669    box_couper_id_seq    SEQUENCE     �   CREATE SEQUENCE public.box_couper_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.box_couper_id_seq;
       public          postgres    false    237            �           0    0    box_couper_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.box_couper_id_seq OWNED BY public.box_couper.id;
          public          postgres    false    236            �            1259    16441 	   categorie    TABLE     o   CREATE TABLE public.categorie (
    id_categorie integer NOT NULL,
    nom_categorie character varying(200)
);
    DROP TABLE public.categorie;
       public         heap    postgres    false            �            1259    16440    categorie_id_categorie_seq    SEQUENCE     �   CREATE SEQUENCE public.categorie_id_categorie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categorie_id_categorie_seq;
       public          postgres    false    215            �           0    0    categorie_id_categorie_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categorie_id_categorie_seq OWNED BY public.categorie.id_categorie;
          public          postgres    false    214            �            1259    24692    contact    TABLE     �   CREATE TABLE public.contact (
    id_contact integer NOT NULL,
    fk_fournisseur integer,
    nom_contact character varying(100),
    numero_telephone integer
);
    DROP TABLE public.contact;
       public         heap    postgres    false            �            1259    24691    contact_id_contact_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_id_contact_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.contact_id_contact_seq;
       public          postgres    false    241            �           0    0    contact_id_contact_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.contact_id_contact_seq OWNED BY public.contact.id_contact;
          public          postgres    false    240            �            1259    16511    entrepot    TABLE     D  CREATE TABLE public.entrepot (
    id_entrepot integer NOT NULL,
    nom_entrepot character varying(200),
    type_entrepot character varying(200),
    air_stockage character varying(200),
    capacite character varying(200),
    adresse character varying(200),
    id_personne integer,
    exist boolean,
    datee date
);
    DROP TABLE public.entrepot;
       public         heap    postgres    false            �            1259    16510    entrepot_id_entrepot_seq    SEQUENCE     �   CREATE SEQUENCE public.entrepot_id_entrepot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.entrepot_id_entrepot_seq;
       public          postgres    false    227            �           0    0    entrepot_id_entrepot_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.entrepot_id_entrepot_seq OWNED BY public.entrepot.id_entrepot;
          public          postgres    false    226            �            1259    24683    fournisseur    TABLE     �  CREATE TABLE public.fournisseur (
    id_fournisseur integer NOT NULL,
    nom_fournisseur character varying(500),
    forme_juridique character varying(200),
    adresse_fournisseur character varying(100),
    email character varying(100),
    activite character varying(100),
    modalite_paiement character varying(100),
    type_paiement character varying(100),
    nature_livraison character varying(100),
    categorie character varying(200)
);
    DROP TABLE public.fournisseur;
       public         heap    postgres    false            �            1259    24682    fournisseur_id_fournisseur_seq    SEQUENCE     �   CREATE SEQUENCE public.fournisseur_id_fournisseur_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.fournisseur_id_fournisseur_seq;
       public          postgres    false    239            �           0    0    fournisseur_id_fournisseur_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.fournisseur_id_fournisseur_seq OWNED BY public.fournisseur.id_fournisseur;
          public          postgres    false    238            �            1259    16476    personne    TABLE       CREATE TABLE public.personne (
    id_personne integer NOT NULL,
    nom character varying(200),
    prenom character varying(200),
    date_naissance date,
    num_tel integer,
    adresse character varying(500),
    fk_role integer,
    mot_passe character varying(20)
);
    DROP TABLE public.personne;
       public         heap    postgres    false            �            1259    16475    personne_id_personne_seq    SEQUENCE     �   CREATE SEQUENCE public.personne_id_personne_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.personne_id_personne_seq;
       public          postgres    false    221            �           0    0    personne_id_personne_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.personne_id_personne_seq OWNED BY public.personne.id_personne;
          public          postgres    false    220            �            1259    24651    process    TABLE     �  CREATE TABLE public.process (
    id_process integer NOT NULL,
    categorie character varying(200),
    nom_produit character varying(200),
    etape character varying(100),
    poids double precision,
    nombre integer,
    marine boolean,
    mi_cuissan boolean,
    datee date,
    heure time without time zone,
    id_enregistrement character varying(100),
    id_nettoyage character varying(100),
    id_coupage character varying(100),
    id_marinade character varying(100),
    id_conditionnement character varying(100),
    id_sortie character varying(100),
    id_personne integer,
    fk_proditfourni integer,
    fk_stock integer,
    note character varying(500),
    id_gnerate character varying(500)
);
    DROP TABLE public.process;
       public         heap    postgres    false            �            1259    24632    process_historique    TABLE     �  CREATE TABLE public.process_historique (
    id_processhistorique integer NOT NULL,
    categorie character varying(200),
    nom_produit character varying(200),
    etape character varying(100),
    poids double precision,
    nombre integer,
    marine boolean,
    mi_cuissan boolean,
    datee date,
    heure time without time zone,
    id_enregistrement character varying(100),
    id_nettoyage character varying(100),
    id_coupage character varying(100),
    id_marinade character varying(100),
    id_conditionnement character varying(100),
    id_sortie character varying(100),
    id_personne integer,
    fk_proditfourni integer,
    fk_stock integer,
    note character varying(500),
    id_gnerate character varying(500)
);
 &   DROP TABLE public.process_historique;
       public         heap    postgres    false            �            1259    24631 +   process_historique_id_processhistorique_seq    SEQUENCE     �   CREATE SEQUENCE public.process_historique_id_processhistorique_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.process_historique_id_processhistorique_seq;
       public          postgres    false    233            �           0    0 +   process_historique_id_processhistorique_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.process_historique_id_processhistorique_seq OWNED BY public.process_historique.id_processhistorique;
          public          postgres    false    232            �            1259    24650    process_id_process_seq    SEQUENCE     �   CREATE SEQUENCE public.process_id_process_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.process_id_process_seq;
       public          postgres    false    235            �           0    0    process_id_process_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.process_id_process_seq OWNED BY public.process.id_process;
          public          postgres    false    234            �            1259    16448    produit    TABLE     �   CREATE TABLE public.produit (
    id_produit integer NOT NULL,
    nom_produit character varying(200),
    duree_experation integer,
    fk_categorie integer
);
    DROP TABLE public.produit;
       public         heap    postgres    false            �            1259    16499    produit_fourni    TABLE       CREATE TABLE public.produit_fourni (
    id_produit integer NOT NULL,
    categorie character varying(200),
    nom_produit character varying(200),
    poids_fourni double precision,
    nombre_fourni integer,
    datee date,
    heure time without time zone,
    fk_bon integer
);
 "   DROP TABLE public.produit_fourni;
       public         heap    postgres    false            �            1259    16498    produit_fourni_id_produit_seq    SEQUENCE     �   CREATE SEQUENCE public.produit_fourni_id_produit_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.produit_fourni_id_produit_seq;
       public          postgres    false    225            �           0    0    produit_fourni_id_produit_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.produit_fourni_id_produit_seq OWNED BY public.produit_fourni.id_produit;
          public          postgres    false    224            �            1259    16447    produit_id_produit_seq    SEQUENCE     �   CREATE SEQUENCE public.produit_id_produit_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produit_id_produit_seq;
       public          postgres    false    217            �           0    0    produit_id_produit_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.produit_id_produit_seq OWNED BY public.produit.id_produit;
          public          postgres    false    216            �            1259    16469    role    TABLE     `   CREATE TABLE public.role (
    id_role integer NOT NULL,
    nom_role character varying(200)
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    16468    role_id_role_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.role_id_role_seq;
       public          postgres    false    219            �           0    0    role_id_role_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.role_id_role_seq OWNED BY public.role.id_role;
          public          postgres    false    218            �            1259    16520    stock    TABLE     �   CREATE TABLE public.stock (
    id_stock integer NOT NULL,
    date_entree date,
    date_sortie date,
    poids_sortie double precision,
    fk_entrepot integer,
    fk_id_process character varying(200)
);
    DROP TABLE public.stock;
       public         heap    postgres    false            �            1259    16519    stock_id_stock_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_id_stock_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.stock_id_stock_seq;
       public          postgres    false    229            �           0    0    stock_id_stock_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.stock_id_stock_seq OWNED BY public.stock.id_stock;
          public          postgres    false    228            �           2604    16574    agentprocess id_agent    DEFAULT     ~   ALTER TABLE ONLY public.agentprocess ALTER COLUMN id_agent SET DEFAULT nextval('public.agentprocess_id_agent_seq'::regclass);
 D   ALTER TABLE public.agentprocess ALTER COLUMN id_agent DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    16493 
   bon id_bon    DEFAULT     h   ALTER TABLE ONLY public.bon ALTER COLUMN id_bon SET DEFAULT nextval('public.bon_id_bon_seq'::regclass);
 9   ALTER TABLE public.bon ALTER COLUMN id_bon DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    24673    box_couper id    DEFAULT     n   ALTER TABLE ONLY public.box_couper ALTER COLUMN id SET DEFAULT nextval('public.box_couper_id_seq'::regclass);
 <   ALTER TABLE public.box_couper ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    16444    categorie id_categorie    DEFAULT     �   ALTER TABLE ONLY public.categorie ALTER COLUMN id_categorie SET DEFAULT nextval('public.categorie_id_categorie_seq'::regclass);
 E   ALTER TABLE public.categorie ALTER COLUMN id_categorie DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    24695    contact id_contact    DEFAULT     x   ALTER TABLE ONLY public.contact ALTER COLUMN id_contact SET DEFAULT nextval('public.contact_id_contact_seq'::regclass);
 A   ALTER TABLE public.contact ALTER COLUMN id_contact DROP DEFAULT;
       public          postgres    false    240    241    241            �           2604    16514    entrepot id_entrepot    DEFAULT     |   ALTER TABLE ONLY public.entrepot ALTER COLUMN id_entrepot SET DEFAULT nextval('public.entrepot_id_entrepot_seq'::regclass);
 C   ALTER TABLE public.entrepot ALTER COLUMN id_entrepot DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    24686    fournisseur id_fournisseur    DEFAULT     �   ALTER TABLE ONLY public.fournisseur ALTER COLUMN id_fournisseur SET DEFAULT nextval('public.fournisseur_id_fournisseur_seq'::regclass);
 I   ALTER TABLE public.fournisseur ALTER COLUMN id_fournisseur DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    16479    personne id_personne    DEFAULT     |   ALTER TABLE ONLY public.personne ALTER COLUMN id_personne SET DEFAULT nextval('public.personne_id_personne_seq'::regclass);
 C   ALTER TABLE public.personne ALTER COLUMN id_personne DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    24654    process id_process    DEFAULT     x   ALTER TABLE ONLY public.process ALTER COLUMN id_process SET DEFAULT nextval('public.process_id_process_seq'::regclass);
 A   ALTER TABLE public.process ALTER COLUMN id_process DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    24635 '   process_historique id_processhistorique    DEFAULT     �   ALTER TABLE ONLY public.process_historique ALTER COLUMN id_processhistorique SET DEFAULT nextval('public.process_historique_id_processhistorique_seq'::regclass);
 V   ALTER TABLE public.process_historique ALTER COLUMN id_processhistorique DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    16451    produit id_produit    DEFAULT     x   ALTER TABLE ONLY public.produit ALTER COLUMN id_produit SET DEFAULT nextval('public.produit_id_produit_seq'::regclass);
 A   ALTER TABLE public.produit ALTER COLUMN id_produit DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16502    produit_fourni id_produit    DEFAULT     �   ALTER TABLE ONLY public.produit_fourni ALTER COLUMN id_produit SET DEFAULT nextval('public.produit_fourni_id_produit_seq'::regclass);
 H   ALTER TABLE public.produit_fourni ALTER COLUMN id_produit DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16472    role id_role    DEFAULT     l   ALTER TABLE ONLY public.role ALTER COLUMN id_role SET DEFAULT nextval('public.role_id_role_seq'::regclass);
 ;   ALTER TABLE public.role ALTER COLUMN id_role DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16523    stock id_stock    DEFAULT     p   ALTER TABLE ONLY public.stock ALTER COLUMN id_stock SET DEFAULT nextval('public.stock_id_stock_seq'::regclass);
 =   ALTER TABLE public.stock ALTER COLUMN id_stock DROP DEFAULT;
       public          postgres    false    229    228    229            y          0    16571    agentprocess 
   TABLE DATA           I   COPY public.agentprocess (id_agent, id_process, id_personne) FROM stdin;
    public          postgres    false    231   d�       q          0    16490    bon 
   TABLE DATA           n   COPY public.bon (id_bon, acheteur, scanne_bon, type_bon, datee, heure, recepteur, fk_fournisseur) FROM stdin;
    public          postgres    false    223   �                 0    24670 
   box_couper 
   TABLE DATA           p   COPY public.box_couper (id, id_produit, id_enregistrement, id_nettoyage, id_generate, datee, heure) FROM stdin;
    public          postgres    false    237   Q�       i          0    16441 	   categorie 
   TABLE DATA           @   COPY public.categorie (id_categorie, nom_categorie) FROM stdin;
    public          postgres    false    215   �       �          0    24692    contact 
   TABLE DATA           \   COPY public.contact (id_contact, fk_fournisseur, nom_contact, numero_telephone) FROM stdin;
    public          postgres    false    241   �       u          0    16511    entrepot 
   TABLE DATA           �   COPY public.entrepot (id_entrepot, nom_entrepot, type_entrepot, air_stockage, capacite, adresse, id_personne, exist, datee) FROM stdin;
    public          postgres    false    227   s�       �          0    24683    fournisseur 
   TABLE DATA           �   COPY public.fournisseur (id_fournisseur, nom_fournisseur, forme_juridique, adresse_fournisseur, email, activite, modalite_paiement, type_paiement, nature_livraison, categorie) FROM stdin;
    public          postgres    false    239   ��       o          0    16476    personne 
   TABLE DATA           r   COPY public.personne (id_personne, nom, prenom, date_naissance, num_tel, adresse, fk_role, mot_passe) FROM stdin;
    public          postgres    false    221   ��       }          0    24651    process 
   TABLE DATA             COPY public.process (id_process, categorie, nom_produit, etape, poids, nombre, marine, mi_cuissan, datee, heure, id_enregistrement, id_nettoyage, id_coupage, id_marinade, id_conditionnement, id_sortie, id_personne, fk_proditfourni, fk_stock, note, id_gnerate) FROM stdin;
    public          postgres    false    235   ј       {          0    24632    process_historique 
   TABLE DATA           %  COPY public.process_historique (id_processhistorique, categorie, nom_produit, etape, poids, nombre, marine, mi_cuissan, datee, heure, id_enregistrement, id_nettoyage, id_coupage, id_marinade, id_conditionnement, id_sortie, id_personne, fk_proditfourni, fk_stock, note, id_gnerate) FROM stdin;
    public          postgres    false    233   �       k          0    16448    produit 
   TABLE DATA           Z   COPY public.produit (id_produit, nom_produit, duree_experation, fk_categorie) FROM stdin;
    public          postgres    false    217   G�       s          0    16499    produit_fourni 
   TABLE DATA              COPY public.produit_fourni (id_produit, categorie, nom_produit, poids_fourni, nombre_fourni, datee, heure, fk_bon) FROM stdin;
    public          postgres    false    225   d�       m          0    16469    role 
   TABLE DATA           1   COPY public.role (id_role, nom_role) FROM stdin;
    public          postgres    false    219   �       w          0    16520    stock 
   TABLE DATA           m   COPY public.stock (id_stock, date_entree, date_sortie, poids_sortie, fk_entrepot, fk_id_process) FROM stdin;
    public          postgres    false    229   \�       �           0    0    agentprocess_id_agent_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.agentprocess_id_agent_seq', 15, true);
          public          postgres    false    230            �           0    0    bon_id_bon_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.bon_id_bon_seq', 3901, true);
          public          postgres    false    222            �           0    0    box_couper_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.box_couper_id_seq', 171, true);
          public          postgres    false    236            �           0    0    categorie_id_categorie_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categorie_id_categorie_seq', 1, false);
          public          postgres    false    214            �           0    0    contact_id_contact_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.contact_id_contact_seq', 14, true);
          public          postgres    false    240            �           0    0    entrepot_id_entrepot_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.entrepot_id_entrepot_seq', 16, true);
          public          postgres    false    226            �           0    0    fournisseur_id_fournisseur_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.fournisseur_id_fournisseur_seq', 17, true);
          public          postgres    false    238            �           0    0    personne_id_personne_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.personne_id_personne_seq', 34, true);
          public          postgres    false    220            �           0    0 +   process_historique_id_processhistorique_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.process_historique_id_processhistorique_seq', 539, true);
          public          postgres    false    232            �           0    0    process_id_process_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.process_id_process_seq', 545, true);
          public          postgres    false    234            �           0    0    produit_fourni_id_produit_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.produit_fourni_id_produit_seq', 190, true);
          public          postgres    false    224            �           0    0    produit_id_produit_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.produit_id_produit_seq', 1, false);
          public          postgres    false    216            �           0    0    role_id_role_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.role_id_role_seq', 6, true);
          public          postgres    false    218            �           0    0    stock_id_stock_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.stock_id_stock_seq', 100, true);
          public          postgres    false    228            �           2606    16576    agentprocess agentprocess_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.agentprocess
    ADD CONSTRAINT agentprocess_pkey PRIMARY KEY (id_agent);
 H   ALTER TABLE ONLY public.agentprocess DROP CONSTRAINT agentprocess_pkey;
       public            postgres    false    231            �           2606    16497    bon bon_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.bon
    ADD CONSTRAINT bon_pkey PRIMARY KEY (id_bon);
 6   ALTER TABLE ONLY public.bon DROP CONSTRAINT bon_pkey;
       public            postgres    false    223            �           2606    24677    box_couper box_couper_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.box_couper
    ADD CONSTRAINT box_couper_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.box_couper DROP CONSTRAINT box_couper_pkey;
       public            postgres    false    237            �           2606    16446    categorie categorie_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categorie
    ADD CONSTRAINT categorie_pkey PRIMARY KEY (id_categorie);
 B   ALTER TABLE ONLY public.categorie DROP CONSTRAINT categorie_pkey;
       public            postgres    false    215            �           2606    24697    contact contact_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id_contact);
 >   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_pkey;
       public            postgres    false    241            �           2606    16518    entrepot entrepot_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.entrepot
    ADD CONSTRAINT entrepot_pkey PRIMARY KEY (id_entrepot);
 @   ALTER TABLE ONLY public.entrepot DROP CONSTRAINT entrepot_pkey;
       public            postgres    false    227            �           2606    24690    fournisseur fournisseur_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.fournisseur
    ADD CONSTRAINT fournisseur_pkey PRIMARY KEY (id_fournisseur);
 F   ALTER TABLE ONLY public.fournisseur DROP CONSTRAINT fournisseur_pkey;
       public            postgres    false    239            �           2606    16483    personne personne_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.personne
    ADD CONSTRAINT personne_pkey PRIMARY KEY (id_personne);
 @   ALTER TABLE ONLY public.personne DROP CONSTRAINT personne_pkey;
       public            postgres    false    221            �           2606    24639 *   process_historique process_historique_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.process_historique
    ADD CONSTRAINT process_historique_pkey PRIMARY KEY (id_processhistorique);
 T   ALTER TABLE ONLY public.process_historique DROP CONSTRAINT process_historique_pkey;
       public            postgres    false    233            �           2606    24658    process process_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.process
    ADD CONSTRAINT process_pkey PRIMARY KEY (id_process);
 >   ALTER TABLE ONLY public.process DROP CONSTRAINT process_pkey;
       public            postgres    false    235            �           2606    16504 "   produit_fourni produit_fourni_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.produit_fourni
    ADD CONSTRAINT produit_fourni_pkey PRIMARY KEY (id_produit);
 L   ALTER TABLE ONLY public.produit_fourni DROP CONSTRAINT produit_fourni_pkey;
       public            postgres    false    225            �           2606    16453    produit produit_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pkey PRIMARY KEY (id_produit);
 >   ALTER TABLE ONLY public.produit DROP CONSTRAINT produit_pkey;
       public            postgres    false    217            �           2606    16474    role role_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id_role);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    219            �           2606    16525    stock stock_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (id_stock);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public            postgres    false    229            �           2606    24703    bon bon_fk_fournisseur_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bon
    ADD CONSTRAINT bon_fk_fournisseur_fkey FOREIGN KEY (fk_fournisseur) REFERENCES public.fournisseur(id_fournisseur);
 E   ALTER TABLE ONLY public.bon DROP CONSTRAINT bon_fk_fournisseur_fkey;
       public          postgres    false    3277    239    223            �           2606    24698 #   contact contact_fk_fournisseur_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_fk_fournisseur_fkey FOREIGN KEY (fk_fournisseur) REFERENCES public.fournisseur(id_fournisseur);
 M   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_fk_fournisseur_fkey;
       public          postgres    false    3277    239    241            �           2606    16484    personne personne_fk_role_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personne
    ADD CONSTRAINT personne_fk_role_fkey FOREIGN KEY (fk_role) REFERENCES public.role(id_role);
 H   ALTER TABLE ONLY public.personne DROP CONSTRAINT personne_fk_role_fkey;
       public          postgres    false    219    3257    221            �           2606    24659 $   process process_fk_proditfourni_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.process
    ADD CONSTRAINT process_fk_proditfourni_fkey FOREIGN KEY (fk_proditfourni) REFERENCES public.produit_fourni(id_produit);
 N   ALTER TABLE ONLY public.process DROP CONSTRAINT process_fk_proditfourni_fkey;
       public          postgres    false    225    235    3263            �           2606    24664    process process_fk_stock_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.process
    ADD CONSTRAINT process_fk_stock_fkey FOREIGN KEY (fk_stock) REFERENCES public.stock(id_stock);
 G   ALTER TABLE ONLY public.process DROP CONSTRAINT process_fk_stock_fkey;
       public          postgres    false    229    3267    235            �           2606    24640 :   process_historique process_historique_fk_proditfourni_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.process_historique
    ADD CONSTRAINT process_historique_fk_proditfourni_fkey FOREIGN KEY (fk_proditfourni) REFERENCES public.produit_fourni(id_produit);
 d   ALTER TABLE ONLY public.process_historique DROP CONSTRAINT process_historique_fk_proditfourni_fkey;
       public          postgres    false    225    233    3263            �           2606    24645 3   process_historique process_historique_fk_stock_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.process_historique
    ADD CONSTRAINT process_historique_fk_stock_fkey FOREIGN KEY (fk_stock) REFERENCES public.stock(id_stock);
 ]   ALTER TABLE ONLY public.process_historique DROP CONSTRAINT process_historique_fk_stock_fkey;
       public          postgres    false    233    229    3267            �           2606    16454 !   produit produit_fk_categorie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_fk_categorie_fkey FOREIGN KEY (fk_categorie) REFERENCES public.categorie(id_categorie);
 K   ALTER TABLE ONLY public.produit DROP CONSTRAINT produit_fk_categorie_fkey;
       public          postgres    false    3253    215    217            �           2606    16505 )   produit_fourni produit_fourni_fk_bon_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produit_fourni
    ADD CONSTRAINT produit_fourni_fk_bon_fkey FOREIGN KEY (fk_bon) REFERENCES public.bon(id_bon);
 S   ALTER TABLE ONLY public.produit_fourni DROP CONSTRAINT produit_fourni_fk_bon_fkey;
       public          postgres    false    3261    225    223            �           2606    16526    stock stock_fk_entrepot_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_fk_entrepot_fkey FOREIGN KEY (fk_entrepot) REFERENCES public.entrepot(id_entrepot);
 F   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_fk_entrepot_fkey;
       public          postgres    false    3265    227    229            y   �   x���M
1�us�^�җ�?�!<��ĭ�g*���f���P��E�����q/\�Pxft��j>�D;��0��h�����U��f�`�s&Ԥ�Qꂵ�*/�c!�x�����!ޚ��q$�]�������}�����WB; m"z�TA      q   -  x��X]n7|^�"p!Q�~�=A^\؀�6	� r�����k�C�E;�ę!��}�s����	���ό.�������C�����O�/����/?��(=���������W}	Ȳ�W��ͧ���N���חg��o�������w��me�������g�j���7ɾ	���YǇԸ�W��CѓK����ZӇ`���-lV���v����s�l?�Qv����!�J��D��%F�$
B�h!"+A	�"Ͳ{	"٫,�
��=����H����Ul��"\w���$���r4z!E��[��h�#Tc��=����m�U3+0�>(�'��C�E�����$�RW1�V�zH5&�C)�"����֤�@8����"o�:U9��X���;�%b��=��
t%�B���C�47�*�� �NS$=|���($�	�E��m=^ �M
���Ē2T75��]>�8��QILȻ�;!����j`=����wUv@�[��X�G�����.��@6�h��r_�(�U7Ջt#����S���@��trv�[ES�6֡�'-"��p������� �Ci#�E�G��YFc�Y�J��"�<c u*��FV��Bto?)�q�c@���gka���N��9lK�K�,�EQ'�ѳ�N�ze�t�H� �[���4�TK�NG����C=�}� /J�iUa=��m�#�>��@�f�z�cݨƐ�V?+^c�1�H�6��֍j�z�_�,1�$����J{���n���N��(�N��h�V=�h�nOaݩ�s8j}��V��QT�X�`L9i�4@���L��U�ڃ���c+��:{#Z�P�&�j^��1�>*�1V�k�jf�g��I��c�:��Jj���#&���Jޱ��Z����j^�@��4'���^	B��GhԎJ^�@c����^���-����������7���W��,�Ĳ��$�8k� �9�w���D��x�N��}�SC/9�z��E�V 1t�1���ҸH���fH�t�!��.��D�ԓ�f�2$�di�sp`��[�A�JW��o�#���Iv<�]J/�1N�#3��EL:��^ܝ-��ʖ1s)TN�s�t��z�� ��vG�K�`=d�C&�g�3�lŀ��l\U�j�d��9V���P'��3���e�Y868��pћ}��4���b��pv��~� g���>��ssi6��� �4�V]��4��C�� ��&{���3;D�g��v]�{^9�� ��`�A�iŤgz�M�Ӝ������ ����H-N�̑ q�"<D�đш�:�2�:�;M��>��ڵ�篖A��ȳ a%N�[o��&G����/__���l�������	?�|}!��y�CM�zٱ�7m��?pG�v���ᣭ���DZ*�o�:��\-gK4�����0�WYi�/a�l�M�q��TO-gǳq�##|��a�<���B'�iW_]��<��ώ���p���G�1�zե���fCap7�:��ט�<<<�DU �         �  x��TIn1;ۯ�\H��E����z�����͒4m� �`�D��G��9���|�̙�%%KMx�X�������XB���9����n��ʒ__�R��v��! �Gt*Nۃ:�Ȧ��|:n����a8�;���:o�&�M󁅯Ҁ��^Z,2^(��iF���HV���y�H�m+/R��ɩ���u�Xk驺��Rh����zw5$4���h1W���ݦ�z�F��t����x4��u��lBc�f[�~b�c�.஽���i� `@\8;C�.I�K*���H���"p+��b�K����v��hLV��{}��\�gY��b�h�v�ܯ'θD�ׁs.0,_[��O�]r�+�b�ԺM�S_�@}�����~~�      i      x������ � �      �   ]   x�U�A
�0ϻ�����~�xQ*(��f#�^6;L��Z�cC*��<Bo�&"�-��6rΈ%���ê�:�,o�g��5w$o,a�      u   s   x�e�A
�@����)�#M��)\��&c3u�5���R\�����1j��כ.%,��6�lk���OE�I_6��wg��N$3g�I>�읋m��"寉CNt��n?��@Do?�29      �   �   x��OI�0<ۯ�*��
�����,��,��=�!���k�3#[9�@��,�dn7˖�=�����D��!D�Uq������J����|����3�Ҩ� �_`)�;0�x�/�e����
p#�qUw|���=xXs�">6�`6      o   (  x����n�0E���B�G;ˠR�Z@��E%6'q!��kBPSDM:{1��H�a:[}$_�)L���
�(����s%�Q�=�M��9�t��)�.u�"�i�f��X&����}�~I�E���$�������IUӻR�w'%��z_TCǚ]�k�-'�I���)#16��8���7J6/�ܔg���������o����%��;�i��+Wx<�.{z�0��r>�`���R��7���>;{���W/į&N9��p�>�,�e$r����7O��o����      }      x�ŝ��6�����/ 'k}���{�9�L��A��ݽ�%i�\e��eW�����,ےQ$�.���럯���������o��������ϋ/z�����O�ZS
�.Jg3�q���~U���3�9蕂���Ϗ����׋�E���>;��Ĉ���(��cV![�K�1ڊ���p�D�o�]��ǁOdK�{�h�<��y���D�㢕}m�V�,܉�����M�a�=�pyDn
�L�-��ӢO�-�'���Cr���5�/.e��7Ew��:m���7�M��C�!�f_[��F`��ݶz�����e�V���O��1�OXר�>A�h6E7F�4��蘍 ������Tl�m���~[:�t�>�*7hy�%��J�]h�F'v�ށ��a	��`�L:'t�Nf���M?æ�[?��}��ze�`��d�f�jb�f2�@�zL�hv�Sk�	4��4��^�ݚ,mnC��_�������/n|q/A�by�s0����s�^Y�q0������p�VO��*��lח�@\���GW����5)������{�{��6���E#�s%�	����k���8��������������������}��,gB�(��C_���� ��$:B7��׏�����/�c^,ؼ���r�>�}�������Ϸ׋�U�}�}ί����NX)`��6�~��`{҃���?�KmG�v5ظ��8�(`��E�Ǘ� �n�e"�|}���+���5Q�2�_;��5��{\�����eN�����"����l������
��?[�NP|�۝�#����9Ѷ�W���u� O|5e��˟o�|���l�F��f-�o��I5����6T�)Ly�k�z͡z��k\��=�,��ʰ�C�����|Ӭ�*�s���"鰻�o$t>/`��gJ�)���y ��s	,�~p�׮�����B�0�����OL�<��'��5x�k,�{b$h�f͵�74��X��Ns�	�Xƭ�
����5�-q�=�^�f�zCi�j��e�g��f������mnWq�0n��Yi����)��`�8� I^�`Kc����{�{��a7^����_�^>?����~��Z�����{c�P�����+kp�]��/V�O��o1i�b�?��Һ�}�H����zV�s�w���Q�Z+��Gt�������z��*�7�a�q2�f9�L���A��ڢ��a��Ny�a ���������{�$=� +]�m��Y�׸i���mlĩ��n�-���������8s<<�d�Ń֘G>��׃g�{��n͙�J���ߨ[��d��8���5J��z��H^a�Q7���E�)��a�V�3c��)�U�����etH�V7��Y�X���e��!4x$[:Cg�#�Vh����Ђ�8c�B2Ch�5lq�����b+�B2&�z�1(.�h��8nk�4���h����r���ϼ1�	�e��(-�PG���;s���ch�oed[Ho7D���a�E��Ì��l|�#Ͼ�-0Y��`:d�a%C��8ww8������=��U�p�E��$��+��aC`}�6Z=L)�_]�#y�}D� �~fH��]���iC{����vCbj��f��)@
|�)��MҼ�>gB�c� o����(��qv� R`�P*���c�YPH���H�	�uDt�r�i!U��m0��$ez�ӣ�Iŝ����C�9PsR��^��r�r5z�L�치�\@/|'F�C� �gJ,�`���5�=��c��#�`ÜP�)s�Xi��0(��f�3�8t�⻒qP�ƒ�<��/crX#�:-g�&�P�ښi�T x�5�e�/f���sǱ�<�|#{b^�gO�@H*�q���1�by��x�	��a����c�	V6��8Q3��O����0&���Qc"L��80F�_ecp�fI�1�|�H�hXc��a�r\ᣑ'Wɘ�;��&�1$���F2�l���{�1$-G\w��5	ç���Ix��	|4�f[6F��K�1
;�[�����q���<>��98እ����V��PZN�UZʞ�H#o��r3���^�r���A5�VX0фI	�er;��$�|�T�.{����N�y��9���S��V�<��Y��R�~wrw?��<� К�4�5t�0k��%�aUnf��h�Q=�����g�J������YC�f�����:�z�5��V�����q���5�;�I_���Z��&�Y1L���ch�]JxL�t}Fr/��1��"�"�vY �gM���_Eq�����5$-{�H����W�	k @�G�E�A�ks�SV	ب��ZC`�D&���El�S�`c��k����;>����0�sYϮ������M�1�09��Yc��O�x�čثоG��2W�S�Xnu9j��/C�UyS�5?�5M1�3%e��)�Z�S������}������S��'O��F�v�
�x����D�8�T[�MK��,���=8k�B��_������.��j��Ю����KC�S4$eS���`������5�/�N0Q�W��0�k�;��S�#̐V�!�%H*���F*?��I�씬<EJ�h��%	s$J�&'S�d����k��U�4���9�d�s��I��1"ȕ�=E�)
e���cuQ? &s�٧��aq���3uQ�5���~��6	��%�n�nČ�s��LL�̺�$JA�e����� ���m���H2`{���L�������,P+
��"|��ct���`�70=;1�(�`9�tY@R`w�ߠd�2��g8`B��a��V^��<O�*:�D��R`jr]�������� ��}��-�Z��60׹4{,�y8#�ڸN�ٴ@[6���:oT���^FFX�-7)�<��Cu�0�P���b�7r�S�X����C���ȫ�5^�.^��Y�'��}�����*�o��6���D<o)K��ʀ�;@3@�O_ip��t�ˀ�y�������{��z����dΫb$Y቗�z��xUL������'vD�����p�||�����1F;	+�n]k�s��?hUR�Lt��xQӁ��v-�P�zD	�$[ws]|���J�n����Y�-��p�S���K5�0��;��)�Ua�S�n�f�JwUK�M��uO'Ay��]�e��_Xq���	�g	�A��(a�Uu�����P�
���?�d ����!�Mk;�F���J�]�yS�C��r.��}65�)�o�Ud5���NI�0�����(�*��:¬��ms�WU���2�A��;�����v���v,�9b�|�\z�I>PU&Yu;�}8��}�G_���j1K�҇��~���~��jL�=�C��,�{�׎�5���(������YZ+�sG���ാ��x������+�r�<:{y��\��[���֌1�?X�����Uc���:�s�֪��t������l�$A���TKQ(�@���5L�Z5�0d<��C'z\<7���E�`�KÉ'�K���:��,`u����ikx�\@&;��R�×x�-Ղ=QK�`uRJ��Z$ߥD-�.��M-(#'�bʔW43Ug,}�n>�k���Iϻ���+�?J	q�o��=�܈uw���\����8զTk^�N���
�>	�"�m�o�sJ��#�Q��H@��p�&Q��MY[u�Qc5�L}QhD���(��0O"�0�x�H#��#����T�Q��(�|�H�k�!�"l��:��Q�G
��z�
?%�81˵j}*�x&�(�[�(�\��0Qh��� (D���S>UF�V�j,�g	���(��H�(���~xQ���EcRPL��>���?��c�#��N����)ܕ'��Jc�n�HPMsyu�;�OT��Zk��~��y3��YT�*6v��D���J���qi��c���e�Sly�$�qTC
R�/��*�c�V�-����c    ���½]Z�ʎ�`��z)0BO����M�ݸ�q���2;xjO���p$�~gJK�<V�x�"�8�m�q��X��xg��W �&�P?@)XC��u�̗��D%��� 	v�+���4�a�l�Ċ�`L��%��q>��\���,�N�Zĸ􉡦̎���)�#�q�\&D�(���@�A� �'��5��ʼ;N{E���GĨЉQ����(C��4;Ve�ri��ox��n?���0�7*��}��>�C�g�I'�Ҹ��k7�����,?��m��ZZHѴc��pT7&�I��ҪtS��FG��$ù��Ţ|�R��Ъ!��J~ q;�gA��:v��A6m�><��R�����(��	U�*�ڨc6��l�>-TWe3�B��1GA���'x^T�6T�>���E*�K�t�z�J��gbN	�k�_%"!M��r��b�[k$�&�`��������y�G�I<jG��t�G%�[<js��T�{�R�����j"����'���S�4�J��7���K�2r �^Qwj&r�pX����.��w��q�2	}XJ�=�����.ڞ�jFb:N7�62�g	�p�O_�d��W!�Dlh��N*v�9{TI2��@�V��I�A��B5U��e޻���6��n ���<;��$���b� M7��x:TT�C:�+|�
M�c���zc�y�b0�+�g�����ݩ�Qb�����WhU\J���L���9%�hhU��#p���<˥���ata�������}� �8������s��A5K1�NV�G'��&�Q?�S��*�`�԰B���]^��񿄜�;T�Q����&#�ྨ;s&T�Js��b�9�Q=Δ�@j=���Ve�u���-:4������Gk�]}�"��v��#�9ZK��Y|4
�)��djN����i�0]�0�)5w0Z�znjgҤ���[V?�K�XXF 6�����92�j�y)��ի�����1�l{��G������"g"�ި�%��.[��Z��~0���j��<���B��*~>hմ��.�`kƝk��ł�򜴤�U"u��;�Xg�1�����|�U����3�8F�Θ]X�?�:1�)&���U!�?		]��/}�kqq�?��JK 6,t�Ab��Ml�n��	K��i���kF�)�J��~&9��n\�k<���1y�&�dq�k6z�5����p�c]k��z�&^#�D��Z"����6���jt�5ԋ���8�f	0���,;������t���:w~&6�;�|�w^M��Oo��=����F&# AG����8Lx�0���)��K)�wY�_�v�g݉�RV3�ȵ�$Z�T�&�p�ǔi`�ԧ�6V��GqL�af~�`^��8���R1���4A��0�r��N�qo���U��L�rZN�~$�`�]u��7�K�cAu�K�,�~��%P��_����H�ʙ�ʣ�$=�*���e	+dōC����x�T#��L�X�.
�p�g�޺�bi]YM�����*x��c�TŴ�1#9E�eK����Q_�� �ݠ�P��Y�m`�kWP�+
ZӇ��|�@6f�����I� ���|�_٠ز�7�X�
�W����?���0��{��6n乊e�(�ʀ	�Q�W;{p�jעv�n��9��v5��s��d�THk��u|D߄/4�OsL��$ ��\��ٟ���
�Yy�;� uW���"��Q}�V���y��hG��,��U<�g�L�R�Z5�Q�ư[�7
k�&M��8���3xM���Ht�G�T[SL�,�v@��J옣EUO�ӧ���~+#DW��z�~LPo�V��n��*vD�)%n��K�bIE�
�붮?xJ*@��$�,-%�0a�KPr�4�(�"��BI�AC��t�d:��T�1�����+���&
���I�=��z�/�"%-��](	�x��M��v��J[��?֌b�a$]�;�5Y����k��ע��c�z�8�U$S}}2��b������׏��o�o���0�2�DC���Z܊�
��j�^�	���\�M�6Rji*��T?��q�@PJ$(�<��&@q��@��#R��
��X�j���F���y�'h5�$��̠ű�H��舒:	npj#n�ٶLp�d�*��
����`Zw���E�Уx���~i�т�����UH�V�4Z�!B�a��,<s��-��Ӕbt[�jÖ�?��W(#Q�7F�,�轔�O�eP�p��BEi-c�އx1�Ҁ�z.��J�ۤ�2��Ņ^��$p��u���(39��=;8�,H9�W�!b����Ob���~�]�m�����t�x}��i9iV��	�<"�q��d�z,wa��Zf˸:ʘ{e?*`�u��m&�x�@3�����WL��P���� 	�0V���0(߬x��ohs�F{	}��J��/��/�x���n��qi�|2��@(q2�"����P���S1ڄr�B��1ګ���ZMJ�~SLJ����~0z8X��*fS$J��+}�̌�I�x'�!��I��p�"$���"�	
_�0�T)�Y�
"��H�[�GJ�fs�:*A��`�Y�x7�Ĺ��q���xv*�C�'���n����߱G�"v�z|���g7a��D�9b�}/�H(�5��)IvN&�U���9pQ����H���	�co.��s`���;'Ԑ�ZP�*hըA�-�d 5�)��*
~5bN�䴡������ũ��C�b��I��cAR'UX�l:i~V5�7S�JO�J,b�S�r����x��[�+�+\6�rJ����<��~+��R�a�+1��]Vs"$��N�dѕ'A����B��I��Z6�kԞ��I��Ƕ�Ir��BQD9�$u}[a'I����X��'�D�y��`%�ҋ���u�u$5��x��F������#���p$�F�9���eT��|���5�E�4�Mq1�F��&'x6 �i0\�qD#_���Ҫ �:�<�"��JzDPP �<�����QC�S��TK�)1�Ъ ��d�"������]m��<,�_�_�bXع%�E�G�"�/��a���{��h��b���)L�1
P��o��/'�
q]��A�9 ���wPF2`���1qK��
*|�'�q<=��Qk�Iu��ku�m�.$!'�*�J�"T0��A%9��u���g>F���p8Շ�ւ�Bm�'U��*���5L(���L�(�$<�7q���Fl^��af�u�.���~�EwJ����������b�vi� �P5��l�낃���ĸ��<�UQu�,^k6�D=�*0B���l��R�\��-�+��
�iܗ��Ń0�T-��7����gh��b��&o��c/%�9�aiU`�L]ՉG�"�a�M���h�k͸q���Oat��d�0cL\�x���G�����,#�� -<�`�� X�s7Ñ�Hӹ^{���\N�9WEU8�u�u}�\Z6�9Qg�UQ}u"U��_��.@>��E��ep���p������������e:�c���Y]��#�C��}��o����0U�l�{&B��F�3��1�
�,� V]��� �#�-ya���G"�wV�D*��UQu���g2����}Y�5�`�	|RG��Ћ��qiU��s��Eisֳ`'���� ��#F�l���5x��T�QKq�7����KhgĘ�$�(��n(	��4ܡ:�VY���6oli2ܝ#�a�M��`���������Iw�fIc�������_��N��T��t�K[ց��βI����u�|.�LLM�l��jJ�2�g�Si�{0�-`�(a^*k�E�a+7J��Z�*&�k'�>��yk�	T�1��7�A�x�>�dK�BJ�r>&U�� ��Pyh�%��A�M�q.i��R���1K�F�H�Ѭ?T���'�ӣ��j���%��RG�Y����QՓHGE��F��:i�KHڨ�W!4���#o�ޡK�ժ�C�lӊ{ �  I�QnP�ŀ�Qb��� \���uż*�m�E�i+Vb�k�������+��&M���Mwj<���g��#���2��6�=z]l�%P�8b�@�l��*���T�b]ȫ+?�71�$�{^�0�= �!���?!Ҕ|	�Q��)���W���">6j�<chU�8�ܳ������B�bE�ˤ��T�V��^���)�&���].w��J7u�ݝx�x�F�'����#h��@�mvDWIǽ�.�s��V&���#Qӌ)=樖� �Lx���F� a �:�+9EXF�p���1|�W��� �rz�h		c`�s���gz��e��P����߸ͺ%'	����Gb�G�R���wWG.�sĴ�̄�G�P7O�q�~� 	T-�(�~����R�%Uk�x$d�#!�$�cH�<��U��5F`�KyOt3k��J�G4�\	M7���j��m?��	8��-
NX���%�4N�� N�k�<'0�z+�^��v� +�%�K��	ꈗ
��q��I��p"~N`b́�T�����?/�<r�B�2��'vx��8���$�p�Q�u�~D��:b�Jgu�B(��Z����1t���M�
�:�As���A�����0cL��"Li:ˬ_�Ƹ��Ac;b0m�,�Lӡ;�J(��(����0�Ƹ�fZO������Y�3M>@�4n�:]zO��x�j�V��a�ka�'ɧ�L6��D���0�Ҩ����ø���,���C��y�@g�������/�,'/Ъ�������vwR9u�$0~iq�����me�c�W���C�"H�OZ�u�����"��k+3[ٻ��k���l���mL�~k�����U�K�=���ly���K��b��xI~n�9��Q��I�u���5���V�F��Ot�O3>�3�f�.x"o���8�R&UhX=g·u[e/���7n�����o4�h�<�Q��;�!6ac����= 7r�,q|��tA�8C�:5��
|�N�P����ZN����7�����p�4"�q 8�Al t���{j���D7A��q����{}2+�A��q��������p�7�i&f#��uZRD����_�.V�4�Q�/�}��8jq}/��V�`���}$[��\ɚ�p�����������&���E/�Ƒ�Q�psK�p�:I�̯6[P��J�:^.qs��/�se-���e��ƚ}?���ܖ�O/�����tԷ��.s�k�G	�{\�E�\��i�O�s|�O�z3�*/,��gn����xҍA�q�+���v<�
���_;F�UF����p=`���ί#]v��i�;��/�e�Χ쨀�	!��Y��n�#Y�ר"V|�Ъ�ݹ��ģכ���@X��XpH��U/����t�R�]a}'CF)��jѧ��f���f~fY�[�,�U��tˢU��q_��U?8X���Y�~�ݺ.Z:��;	bZZ�e���>Fj��G���x�gǐ���<����s`      {      x��]ے不}���� �W�_��y���YO͸#<Վ���ݿ�H)e�%J�]ᴇ�)�@�� ����o������������￿�����↋.�/��A�/J�wQ:�!����������\����W�?޿��?��~����3i|v&�B��w5"i/��Y�lM���_�HY���_��(�Ѡ�"�^Gڿ�tx��:��8ie�۴� w��s:;��76��w�&�����y��-�E�Ė�"�sK��-b]�p\q)k��I�kޑ�i�t�&�#m�i�؂҆N�-�];p&m3����7�v�n���7�j'�=��;n��{l����6�6��l�n�1I��t�F�W�i�o2�Y�Tl�m�|�Y:�:Q�l��jy������.�?��I��w�j��%��aȩ��D' ;u5���G�e\����I�/�+`�I���n����n`�MW��컑i��nd�b�_��Z2� �������4`��bd7��q�6��������ߕ~sÛ{�k�������[��,�,�����fn��;�ze����E@U�K-iD�����a�@.�nd!���g%z��Ϗ������s	N�!�������N�3;a�m��ݺg�����}!�y�<���a���ʪK�����I�O_���H�8>N�gq��0@X&�L�����q�Ƿ���~����c��Q�(�����⨁���o��򷟤W�:��ux��������o���~q�����v�K��>5|[�>�M`'aՆ֡�A���KY��6�Q���)������զ*ﺦ2��db�E�7���w1s�"������������G�v9�o��&6�ۇ����z�:e��թ�s1����=m�������pс�m������.	T4� �]�,��w���y�v�F��d}�z���+��_I��~����O?ߠ�7���'���x��W�>^�ۀ�� ��&�ye���b�X�!�J_�o��K�Yi�el1���h�/�wJ��1��S�D�^�<���1���.��ɾ�/��M�~�\b��u+��go�ի^Ơ��nĘ:,+w�z��_֌A\��1�-�x�~��z%[�D��W�%�׌����%��:tk��W棧~�<2u�ؒ�T@훚��h��gpC�u�������p�+�d�lN\5.<\魀Z;�����;a�YN�n�T�7&"�kh�R���/d�<�6h���Ɲ�ċ#�y�09v��-��f�Df<���54�m�����l�I]C��Gd��'2�斏��F-f�s�����N"3��MOc���`1M���*3X�؉�Y��LԲ�����#3ڐ �0s�Z�Ⅹa{C��9�'f,�NOc�o�Ʀ�X��r�n�C��-��2\��C����
l]1�ԛ*��O9R��\�>�C��н<>���F���PTԿN�;��`����`1D�σq�0�� *X�	���Sn���>�$�:f��@�YP�S16�X H��+�<E��倈d��5�,�����B��Hb!�U��
?�S�H��Q�Pqg7�D?{M��k~^���� �lM���v�@/���5�j`���y�5h%�d5PfF��2��rYlp
u�7��@ȗш*�MT߯	�75�II�V*�ȵ�ufh@���X5��H̐�w��a��@cr�U�5n4�N��=�
�ws�ߘ�c�5Z�v�o��O�C�kZ��;q��po�+�F_�=ȣOA+��F��a�p�L���I��?��n��|�4&��z���)]��I��23d���1��rL�Ȓ����ۈ�qc؁���,[%f"��1y��;;*0#�V�g7�	f�Z���I��%nE��gq�ȁOf���"3�d�Z<��٬ h�$^�*��Q^�Z�F�_�%���_�nE�i"j9A;PE�ʞ�H��O�����{~�ۭ�o w�֚��D����2���hV��jC�N���;�m�C�h��_��@�z�����/(h�����Y����05��8�9"7�|eOㆨ��hlZI<"7`�4n8���4Uͼ���|7�%d�nn�
�ܸ��9��d5LT�\�{3�ƞ�<:��ah�]��@�w5�t{���j4�f��M���<n�:����'�#l�c�0�������q�%z�K4h�E����1�kv�SV	�Q#+T�&#f�oۙl�(PP�%��H�y��3y��ƥH��=#tsՓ�4S�Zr�E�]>��.F�v��coD����el�"�k#�v�e��C�d4jTYIz[�bMV����2��:��v$�kb��e@1�e�c�(/r��>�!ڵC��h�lP'�}'��lpR����+q�(���A�I6���$O������f��:b(=��D�&�ha%��Fb��Hʦ�2B�`w��*�v��Ɲ�r�A�UP$��Gݖ��)���/A����;������Ԡ\�Rj��I�PvMytn�IԲ�����)�b4Ep��"�J���LS$��AV������2���,��F�/^��P1+ש}�"�hŻ}��1z��FM�u)^�K��n��1�4rp$�V�w9C����lL(�n�ŏ� Ӏy��_��~����Wjr��j���}�OIq6{���h�0x�
�T'����
kЉ�N-*qX�ٓưN�����V]mS��*�)r0Q�h��Τ�Á�OC'FA�&����]��^�ا�Id:�iP�h[M7�sp�L�*��UF�*[
6��P�1��O*&̈?�6�S�X���ڒlߓ��h�7`ե�N��EVX^_���럿�_���������K�N�e�-9�+��P���x�V�p��1�^V�>̍52�3��~�Ԣ���!��q�����V;���n3���o?}/f�	M�0ӳ��C	��8<L��9�4�� 4-�#ІE<]����^!т������ ��������]0�M!C���s�$O�;��!�CsM��W�����>�<A�f'���Yl
��'��%%xg_�Uk�_V��Y:��rYhb6�ˉ��8Ƕ�-�a���A�r�Ɔ2�C�J��(t��Z��)�Kj�?�}��o5m����ې֚�%8�ˁ�r���np+�"n�S��D{l����j�Y�zҒ��	��"�Mh���|I���s�F�|���I��Mp�A��sɹ��s��eɶ�����$]dp.����ږ,���>��^b�;��j�/���Z"��%�Zؒ´�m��q��-�&a.�֏���Ш%o�]�{�͔]VA6s��l8y	5IU����PGcD��H���S遷z%��3��a�1��I�E�)�,�8�L�.�U5��|i������P]cd� r�$B�tŊ�Rx'�1y�ڹ�^WS?�t�C���SA:���U�}�*;*Nqv�����v|��e=Їo��^�"�7�v/����r�!���&�inh��� 4ׁ����7��8U��������э���F�ݲ���jb+�T-�DkYnL��=��"Ě;Qd�bJ37�;
����]��W=2힟R�(����5%Gvt�`��B�-,I���)ڔa���*2�wp�)���1+ف��L��P�셖��^ED��?�zk���ImoD��;{���I�M�l7;��m;f��
i�~��F�%�e������B��|��j.o�rH�F|7h:���!�V	��z����[��o<����ji����U/�'�A���A�s:��BZ�L~(��NRQ�
5wD���;���
j��19����QCy]ȠX������(A�NJH�"cd�I/�e���t7<[8��NNoS7|/�vzH1̌j����:?�ن~�������~-F���I���)$��-@���?����4պ�ޛ�df�D����URa�%�׽��إ��ՕȾ�R�M�'q�`*sG>/Ѩ��[�x�9?�o�3�b���kR���![�쓻p�Gv���*)��+�\%@��n� �{Ш��c    ���$���X�<�hV-��h�@���+�]T���Pɺ�-��\�$�H����	��c^�
�-�u��48DN!LP]t���v��~>������(����;�u��cՓ�f��@-���^<U�P��fY;zi�g7pn�����VN�{��|�L�0AXU�N�\���g\5\&4���N�2��+�ե�3�:t�wF�F��V��V��c.�)��FN��aeA��`(�ǝ���d�bS��iEQhJY0�ߞp{����\YSB+
Bs�b*𖿾܎�m�����<��%�d7<�k��>���od���;��ꄧ�I��VΈ�nj��(d�	��2R�g�D�TC<S�J��:�|=�9;ѩ��j�(�શ��)U �^��+��=&�����=&��%M�����A����'g�T��z�!ҍ�7E(�rv��9��>V���upx3�}��3��:�u���]�7��VRFHa��a���N�[�%�a�ka�S�iM�uasPn�<�}�n
�8�=�ZqBF�[W��ѩ�9t.(��%���˗��Wؕ���T̕"�����Jk=�YX��T��a��n9����)�H�Z�-眮x]��z�2X�딏�DĚ:ͱ��$:Qȑ�	/�9�W'l��P�I�	R-jo��ra�*/Mu��kR������V�,��ݹ}���\x��w�sv�xP��ɚ�^��-�k��>��An1A��-c�:e�6Q�Fh�;���އΙ�&Aބ�����ޢ�Cߛ#a�ND�x/:�5=���&4�:ޖ/v�������j�O�����?�RO`�@��K7����g��-]9Qډ�̹��c�+�7�ؚ'�Lo&�>p����Yg�,�e͒#7j���S.֭غ���ہ5�Ӂ������U�{*����\�0�f�]���3�8�o�TUK�\�q���hL5�q����WTCGM���Rլ�Cx��B��}T;Ư/>X%U;?�7���,��:z�u�Dकnq�/��&�)Z��}W��m��) E~��n��q嚠�(`�	~xo�]��J.�Z�p������^�Iv�W��/7"H�v�&�	.(8�/OupVp,YsK:�NpW�[U�ݺ��Α����(���o�%��GK�PlB�;�e�s�%x�U���$*w"���xV/�#xQ��c�hY'|�@֗ym��9cg�>q�
�[s5e��&z��S:�qrP�� ���z�'�ڷ賓5�3�o�����U'~��8S ��� �r3���z�I�s��� \w"�)+�u�l;v�n��O����`k��]8�.�v"��25p-�s~n2�j֑�M_��(��׊��2��F��.�����Ҝ	Vl�	��v��*e��������wUl��^󎖝T6P���K�.x������
�PHm͒�g�6�"_DtS֌�F'��xA�6��\'<�s�^5�O�۞�C��xA`�oɔ�A�dK���*�%z�������c��{%E�ѭp�V�k��Ftȫ��l�۫&E]��L#'KS_7eEt5E��XxL��4j�[5#���Z��%�[�W�E��}��#�D�5��P���j�"O�?�:�
�u!�{���S�/�;�5�[//d��L�X����_�ٗ3���]O���
�]�
������It"��^-��Vw�x�\��{�q�`k�ne����>L�O~~�'�z(�_7����#Vϩ�����Rī·�g�R�̍%�q-=�@z����i���j��9�3&d��q����n����L)�����ˀS�z��l�?}\r���֍)%]z����Ehz،��)��]�����V`�;��$N,0Fr��W��b�6RU�}U��h�G+߯�ۇ��56
�b
�!��dOS��{�^ �u��}����J�U�=M���e 6�7$R��:[����H/=e/+iK�wig�̽���y;l ߭�Gdz�V���6�g�%�jg��uQ��\�)f�u\63�\�:�å��a�.y���P�*��D0Y\�Y�$q��љ7U��T�%XV�h��1:����R��ӱ� �yc�z]w�����E�ZEL�綸L���(�����:ũ�2-d�VҖ+�*�e<��Z+�����5��j�";�-�o������.H�%��d0eS��g0��
��o�\ sP*\�K����[�LE�5l�u�4�Է"/b��g��li,%��U��c]x��j��6q�w�h��u��n�T��������U�y�x�(�p���2��_�s�ޢ!`�ťӍ�(=�B]~2D��x��%�n�o.dz��^�2����͍5�â�ʸ���Ժ�s4�X�<���|��*�������yh�h�ׯ����vz��S'2t�U��g ��|w�Ȫ�����ȠPn6ĹQ s7|6��o=�\��B/VMin�#���W�NU�!�*�EO��*�	Ղ����S��ɿ�7�X��9�Osc̽�J��[�K�F|G'ƹQ ���8���9�]���Jzn<�N�8�����?%`~�l�F�O��f��3a���g+۹Q sI��ת� 8��Z��!���a�ԫ�JX�͍����`��B��ƪe^_�������GR�0$�v pax��+9�R�(�I�����xDv�����)�����v�_�Msc;��;�]�����Ǹ��$L5?�����2� 	�����׏�{4��6���*��;%���>�a7��(�����e.�
lϙ`�|E�I�0���%A��X򴴊�5:.�N=��K��<]��&?w_��? @�=��4���F��%��o�͚!�0hy]8��:?�`j�S[.~&�\k�D�͏��b��~sϮ�!-��l5�y���V��5KV�y;�D�Uq�>�8���Uy���*��c��W���ٳc�� K���<b�-�2��ac�S��c�I�Ib����4�N0��$��
�)��Dt������$���3�)�:���?�E��5?p�V��Nѧ�R��䪔g���
h�}�C�	�d��MQ�l�,M���aǫ���)�D�Vϫ���V��e����񴰴̹���=���*��#ֹvQta�k�v��+��U�s��,����N3n�NNq�V��K��f�����h=��hMK-��TgUpa�YkE��G��./�8<�m����Al�����g`▞�S����;ba���B���ث�!:�����IVs�r�Jl._�Il���zv��r�e؊�ۂ�e�$��:�|�@ ��jVY�*��ܤq�ͷ_�S.��o�ai��i�Q��z�~8�*�����$��x]Xp�l�1a���Z�k�ur��7^G4���x�E�Fzǣq74z�J��T�s�hh�F����� ��9ZP%�6�����gцV	ε���������z��x8}�v G;2��o�YwC��G�C¡e�p<�����^N��|�c/���g�l��U�sG~bΚm'Y���>��F5_�U�s�=�a�!�cDO���Bk���������Cc��/c�pI^Q�v�V	�Oh�mv���M��U��,Z5<Ll���v���"�E���;Z+<�G��nkr�a�3-��+{گ���t\�'��_�`�
pz��J�[�!�Z�RH��_[Tv-�Z�3:�V�����k�ǽ�]�&£ʶ

�5=xAv.���(�F��u��"V�݈�0���gS�|Vv-���&!����*�xC)YNsh���;u�1Һ�,�"x��j��?����;e��DIٜ�e�
l��>=~v��U$(�]�qK4��Uw�+KZ7t�/z�LLK���\~#*|�S=�*҆��D�D���\p��e8%]���]+W�G�U�z�i@�D�6�������V	=��8��m��õ/���YZ5x�'ca3�_�zNܒԍ9���\J|9��"+�aӊ�6k����]����rk-�;��E��=���H�r~��*:et@Z���j �šK�D�c E  		B<t��ź屎K�Ħ�zȑ��~A�\�UR��	@�D�";�WoE�� ��w��üʯ%�ԑ��[�tSR�xvAK>?Ы�Z�Ns�O��U��~
��X�b�S�������*�g�(Ztn�����⧛���}��	��o��Wa��o	��k�ulMuDD��ۥ��֙��n��%��G"��6�d)QK�9�hU��X�a�a�*h��о��[��/���V���'�#'�齡`�ȁs�K���ʷ�a�_�<$V8$�t3�ǥU"O1PP�!�u��]���OK�M�p�ۅ�^M�jl'Z�
�4��?:A\�c2�$�!q�	���}u��"9)Y�aXZu����v���p�[q�7^�� s=�J8�M����^g�y8�&�u�kN7�R�^Z%���<�R�,|N�Tqa�.`�����.���,��:fE�Si#��Uؑfu��*l�8�=O~���_��*�#�� ��sr=u�I���\	C�R�掐?4���4��D�$��\zB�R���ԭ:$��=P�K��g �^�:���_g"���1k�6��P�5.��ԏKȺa��*h�	T)n8B'ٹ=��P��5:q��@�>:Ҁ���jZf�s�����2�\K������������d��w��f�3>S���p{�YfQ-�52��du���@C���8�³����0���V���v賷�_�m�������@M��o�z��ӥ���3;�}��^�|?	z��$BG�/����NoԔ�9~L��Kk=Ɲ�cSm�RŎ��m!L�F���i������������E�������*��NuK�����:U28�h�� BSX�tm4W"S�����ԏߠv�}
��P[�Ux*�X��M�����n@Ci�GE9�1pi���˿���_V$�́23O�ְ������6���z�wc��e�����f6r+����aQc�S�0���q^�ۊ�?
�7�!M͆�'��m��Ŵ����/'���a��k���$Y�v���m��l*K���~YT��qs{,�����ގ%;�=L�����������b���      k      x������ � �      s   �  x���K�9�סS�z��G�g='��q�v5�*�~R�p���,�ɟ��a������+����߲ߢ���g�'�{�r�`?�=���L�p��~�_����>�[�?�z����ǲ�&p��v֕�� ��NQ�pЯO�����ci��/�O{ N���v!n_����������������"I%���m&h�]׋3�{�����7��y�H6��y9�ГA��At�;Qw�A�yIo{�o�q�{ߏ�x�cx0��\{ʃ��wO.Z���)�T���}��K	�8`~�*�O<�|�_?=����w_^g�h:&T�3t�����ˏY0o��1Ɔ^_��d�xi(��]�	���-���"�I7�]:#��?��^WZ\ڀ�8
�!�A����N
��8�=��ρ\i���A���u��=���=HW��E���ݏC�|V8;��k��<��G�6�LW<	�%%�:�s�!I�l �V��(����s���C�vP@S�F��;�%� 2;�C�/x�����.��#m�X¥d� �-��+�A��6��v���&����b�LŜ� �$P��%c�X|1"�$� N=��z�c���,g�<�b���NP�D>+��g���. y�e�+��5��Hi��ғ ���N�=��;nẓ���]�z�#�y��N� %������V�G�H�N��$_�B
�,��d$
��SY�$�K�vM��ڴK��:Jp%]�G?W������УR�+�����,#!�'mڵ��t���a�^Ba���@���6W��w�|�c m�N�9��1�ݦ��ϛG��X<��'�7�Ј�$n���5�!��j��F�h:�Ԑ\M&�q?�W��l�*^�/6W�pa�i��6��F|w�o<Ӭ}K�9Hpc�p��ű��)�L0i
��-Bj�v,��!J̲Z6E�)i.CNK�I.���k4U�8oF�QrmP�?��R55ײq:%d�U�ܞ�N��-��wm�����$hC7@�5CGy�Yn��q���d=�����c�/�_�={�|N��j����"NA:�>�$�.����d�1V�M$��ޑUW��Or�/����XGf1+���s���1@�����I��D�߂X�00�&H�EO#8� �ԓ���0���z��`��������B�5E�N��gGM뭧b���� ��!E�h����$Bč CY<�U���H�8<M|���12��ES!��n����щ�.FE��u$�y0r�ww�+M�_!h]� ��p��1S�kw����5��������T[�J�xBV2H�"!2��\xS�ւ�9�i.�bP��
�����A�ki7XޑV��E9���&��V"₸&z&��@�X�d)R��vE�>���Xd���D���ޟ�B�-,{��eoI+5��I-s�,>w�)o�IE��)b�K��d�=J��iE�E�MAۨ*�//�qQ�6R�
J ����?_��g}�r��*�@�����A��б�+�"l�������X��| �z��ұ�A�d�-t�ז�XdI�
e^Z'=N3�B�|�5��=;��R���T:�n�ǨV�#�ܒ�R�w/���4dk"��@~�S"߲U�#���,��E���E�<����AC�&?b̚�qyo�uTq��hț�o���t���!g�Qy�ZPd����>�4$@n��//��8�_-��Z$��O�VFm�z�Q$=�b��4+Ƹo�#Cj1V���@��Ց���t^:���e�UM�jr��3��7�H��K+N�E�6裆{\q�ͅ|�X���l�?H�桦z�f���]�绵���b�O=}������O�{�Ȼ��i�c?p�˴6�<�%�ܯOV�=(�at�'ž�͘%���'����ι����      m   4   x�3�tL����2�tLO�+QHIU(N�,�L�2��g��r�A�\1z\\\ �a�      w   Y  x���]�� F��d/a��M�
��uLChkW#�r�?)rhP}����P����>�z���>��~�� �
{7��@ J@}˦�6�߰i�׸NP	�!P#�� P�N�����SJ�(s��F	A&�Ń���	����k�Q����{]}�%yq�W�w��u[}�L��I�����~%��HR@�U���QJF)(�@�2&�7	�D0d�A?���)7�<9�[Q��h��g�?�HJX��s���-W詔D�	\yn��4�PEQ%���o�f�BPW�4�PEQ%�P �h@�pæ��ٴ�?�ϟ�<�  �     