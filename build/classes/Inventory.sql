PGDMP                      
    z         	   Inventory    12.12    12.12 ;    P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            S           1262    25036 	   Inventory    DATABASE     ?   CREATE DATABASE "Inventory" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "Inventory";
                postgres    false            ?            1259    25057    customer    TABLE     ?   CREATE TABLE public.customer (
    id integer NOT NULL,
    cname character varying(50) NOT NULL,
    city character varying(50) NOT NULL,
    phone character varying(11) NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            ?            1259    25055    customer_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.customer_id_seq;
       public          postgres    false    207            T           0    0    customer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;
          public          postgres    false    206            ?            1259    25048    item    TABLE     ?   CREATE TABLE public.item (
    id integer NOT NULL,
    iname character varying(50) NOT NULL,
    pprice integer NOT NULL,
    sprice integer NOT NULL,
    status integer DEFAULT 0
);
    DROP TABLE public.item;
       public         heap    postgres    false            ?            1259    25046    item_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.item_id_seq;
       public          postgres    false    205            U           0    0    item_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.item_id_seq OWNED BY public.item.id;
          public          postgres    false    204            ?            1259    25039    login    TABLE     ?   CREATE TABLE public.login (
    sid integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    forgot integer,
    status integer DEFAULT 0
);
    DROP TABLE public.login;
       public         heap    postgres    false            ?            1259    25037    login_sid_seq    SEQUENCE     ?   CREATE SEQUENCE public.login_sid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.login_sid_seq;
       public          postgres    false    203            V           0    0    login_sid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.login_sid_seq OWNED BY public.login.sid;
          public          postgres    false    202            ?            1259    25065    purchase    TABLE     W  CREATE TABLE public.purchase (
    id integer NOT NULL,
    item character varying(50) NOT NULL,
    sname character varying(50) NOT NULL,
    scity character varying(50) NOT NULL,
    qty integer NOT NULL,
    pprice integer NOT NULL,
    total integer NOT NULL,
    pdate date,
    invno integer NOT NULL,
    phone character varying(11)
);
    DROP TABLE public.purchase;
       public         heap    postgres    false            ?            1259    25063    purchase_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.purchase_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.purchase_id_seq;
       public          postgres    false    209            W           0    0    purchase_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.purchase_id_seq OWNED BY public.purchase.id;
          public          postgres    false    208            ?            1259    25087    purchase_invno_seq    SEQUENCE     ?   CREATE SEQUENCE public.purchase_invno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.purchase_invno_seq;
       public          postgres    false    209            X           0    0    purchase_invno_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.purchase_invno_seq OWNED BY public.purchase.invno;
          public          postgres    false    214            ?            1259    25100    sales_invno_seq    SEQUENCE     }   CREATE SEQUENCE public.sales_invno_seq
    START WITH 100000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sales_invno_seq;
       public          postgres    false            ?            1259    25073    sales    TABLE     ?  CREATE TABLE public.sales (
    id integer NOT NULL,
    invno integer DEFAULT nextval('public.sales_invno_seq'::regclass) NOT NULL,
    item character varying(50) NOT NULL,
    cname character varying(50) NOT NULL,
    ccity character varying(50) NOT NULL,
    qty integer NOT NULL,
    sprice integer NOT NULL,
    total integer NOT NULL,
    sdate date,
    phone character varying(11)
);
    DROP TABLE public.sales;
       public         heap    postgres    false    215            ?            1259    25071    sales_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.sales_id_seq;
       public          postgres    false    211            Y           0    0    sales_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.sales_id_seq OWNED BY public.sales.id;
          public          postgres    false    210            ?            1259    25081    stock    TABLE     z   CREATE TABLE public.stock (
    id integer NOT NULL,
    item character varying(50) NOT NULL,
    qty integer NOT NULL
);
    DROP TABLE public.stock;
       public         heap    postgres    false            ?            1259    25079    stock_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.stock_id_seq;
       public          postgres    false    213            Z           0    0    stock_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.stock_id_seq OWNED BY public.stock.id;
          public          postgres    false    212            ?            1259    25153    vendor    TABLE     ?   CREATE TABLE public.vendor (
    id integer NOT NULL,
    vname character varying(30) NOT NULL,
    city character varying(30) NOT NULL,
    phone character varying(10) NOT NULL
);
    DROP TABLE public.vendor;
       public         heap    postgres    false            ?            1259    25151    vendor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.vendor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.vendor_id_seq;
       public          postgres    false    217            [           0    0    vendor_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.vendor_id_seq OWNED BY public.vendor.id;
          public          postgres    false    216            ?
           2604    25060    customer id    DEFAULT     j   ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            ?
           2604    25051    item id    DEFAULT     b   ALTER TABLE ONLY public.item ALTER COLUMN id SET DEFAULT nextval('public.item_id_seq'::regclass);
 6   ALTER TABLE public.item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            ?
           2604    25042 	   login sid    DEFAULT     f   ALTER TABLE ONLY public.login ALTER COLUMN sid SET DEFAULT nextval('public.login_sid_seq'::regclass);
 8   ALTER TABLE public.login ALTER COLUMN sid DROP DEFAULT;
       public          postgres    false    203    202    203            ?
           2604    25068    purchase id    DEFAULT     j   ALTER TABLE ONLY public.purchase ALTER COLUMN id SET DEFAULT nextval('public.purchase_id_seq'::regclass);
 :   ALTER TABLE public.purchase ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            ?
           2604    25089    purchase invno    DEFAULT     p   ALTER TABLE ONLY public.purchase ALTER COLUMN invno SET DEFAULT nextval('public.purchase_invno_seq'::regclass);
 =   ALTER TABLE public.purchase ALTER COLUMN invno DROP DEFAULT;
       public          postgres    false    214    209            ?
           2604    25076    sales id    DEFAULT     d   ALTER TABLE ONLY public.sales ALTER COLUMN id SET DEFAULT nextval('public.sales_id_seq'::regclass);
 7   ALTER TABLE public.sales ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            ?
           2604    25084    stock id    DEFAULT     d   ALTER TABLE ONLY public.stock ALTER COLUMN id SET DEFAULT nextval('public.stock_id_seq'::regclass);
 7   ALTER TABLE public.stock ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            ?
           2604    25156 	   vendor id    DEFAULT     f   ALTER TABLE ONLY public.vendor ALTER COLUMN id SET DEFAULT nextval('public.vendor_id_seq'::regclass);
 8   ALTER TABLE public.vendor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            C          0    25057    customer 
   TABLE DATA           :   COPY public.customer (id, cname, city, phone) FROM stdin;
    public          postgres    false    207   u>       A          0    25048    item 
   TABLE DATA           A   COPY public.item (id, iname, pprice, sprice, status) FROM stdin;
    public          postgres    false    205   ?>       ?          0    25039    login 
   TABLE DATA           H   COPY public.login (sid, username, password, forgot, status) FROM stdin;
    public          postgres    false    203   
?       E          0    25065    purchase 
   TABLE DATA           c   COPY public.purchase (id, item, sname, scity, qty, pprice, total, pdate, invno, phone) FROM stdin;
    public          postgres    false    209   O?       G          0    25073    sales 
   TABLE DATA           `   COPY public.sales (id, invno, item, cname, ccity, qty, sprice, total, sdate, phone) FROM stdin;
    public          postgres    false    211   ??       I          0    25081    stock 
   TABLE DATA           .   COPY public.stock (id, item, qty) FROM stdin;
    public          postgres    false    213   e@       M          0    25153    vendor 
   TABLE DATA           8   COPY public.vendor (id, vname, city, phone) FROM stdin;
    public          postgres    false    217   ?@       \           0    0    customer_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.customer_id_seq', 9, true);
          public          postgres    false    206            ]           0    0    item_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.item_id_seq', 25, true);
          public          postgres    false    204            ^           0    0    login_sid_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.login_sid_seq', 10, true);
          public          postgres    false    202            _           0    0    purchase_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.purchase_id_seq', 26, true);
          public          postgres    false    208            `           0    0    purchase_invno_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.purchase_invno_seq', 10025, true);
          public          postgres    false    214            a           0    0    sales_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.sales_id_seq', 16, true);
          public          postgres    false    210            b           0    0    sales_invno_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.sales_invno_seq', 100015, true);
          public          postgres    false    215            c           0    0    stock_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.stock_id_seq', 10, true);
          public          postgres    false    212            d           0    0    vendor_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.vendor_id_seq', 8, true);
          public          postgres    false    216            ?
           2606    25062    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    207            ?
           2606    25054    item item_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.item DROP CONSTRAINT item_pkey;
       public            postgres    false    205            ?
           2606    25045    login login_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (sid);
 :   ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
       public            postgres    false    203            ?
           2606    25070    purchase purchase_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT purchase_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.purchase DROP CONSTRAINT purchase_pkey;
       public            postgres    false    209            ?
           2606    25078    sales sales_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_pkey;
       public            postgres    false    211            ?
           2606    25086    stock stock_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public            postgres    false    213            ?
           2606    25158    vendor vendor_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT vendor_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.vendor DROP CONSTRAINT vendor_pkey;
       public            postgres    false    217            C   /   x???,.??,???K?/J?4426153??4???L????"???? Ă[      A   F   x?32??I,(?/?45 NC0e?ed?雟????i??4???r?x??y?)8?Gp??p???c???? ??      ?   5   x???,??-J??44261??\??@?kdl`34??K??P???? 2sf      E   ?   x?m??
?0?s?.??OS??Q?7?2????C???U'+.??\>??K???.?{??ihӫ#0?13)ϕw?{	3?"bP?:?&!Q?:h`3?a?????
??*?mg?%C\?Y*"ҹ?4???YH???O|????&?;????JO      G   _   x?34?440004???O??I?,.??,???K?/J?4ʚ?9?? ??????????????????????S?f@? ?03u??͈???? <?x      I   &   x?????O??I?42?24??I,(?/?42?????? xG      M   3   x?3?t?M?????O)J?4323165402???????,ʤ?????qqq ???     