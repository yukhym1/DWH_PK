PGDMP                 
        {           DWH    15.4    15.3 r    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24771    DWH    DATABASE     �   CREATE DATABASE "DWH" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "DWH";
                postgres    false            �            1259    24789 
   categories    TABLE     m   CREATE TABLE public.categories (
    categoryid integer NOT NULL,
    categoryname character varying(255)
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    24788    categories_categoryid_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_categoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categories_categoryid_seq;
       public          postgres    false    219            �           0    0    categories_categoryid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.categories_categoryid_seq OWNED BY public.categories.categoryid;
          public          postgres    false    218            �            1259    24857    cinemahalls    TABLE     �   CREATE TABLE public.cinemahalls (
    hallid integer NOT NULL,
    cinemaid integer,
    technologyid integer,
    isactive character(1),
    availableseats integer
);
    DROP TABLE public.cinemahalls;
       public         heap    postgres    false            �            1259    24856    cinemahalls_hallid_seq    SEQUENCE     �   CREATE SEQUENCE public.cinemahalls_hallid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cinemahalls_hallid_seq;
       public          postgres    false    228            �           0    0    cinemahalls_hallid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cinemahalls_hallid_seq OWNED BY public.cinemahalls.hallid;
          public          postgres    false    227            �            1259    24848    cinemas    TABLE     �   CREATE TABLE public.cinemas (
    cinemaid integer NOT NULL,
    name_en character varying(255),
    name_ua character varying(255),
    name_es character varying(255),
    address_en text,
    address_ua text,
    address_es text
);
    DROP TABLE public.cinemas;
       public         heap    postgres    false            �            1259    24847    cinemas_cinemaid_seq    SEQUENCE     �   CREATE SEQUENCE public.cinemas_cinemaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cinemas_cinemaid_seq;
       public          postgres    false    226            �           0    0    cinemas_cinemaid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cinemas_cinemaid_seq OWNED BY public.cinemas.cinemaid;
          public          postgres    false    225            �            1259    24782    genres    TABLE     c   CREATE TABLE public.genres (
    genreid integer NOT NULL,
    genrename character varying(255)
);
    DROP TABLE public.genres;
       public         heap    postgres    false            �            1259    24781    genres_genreid_seq    SEQUENCE     �   CREATE SEQUENCE public.genres_genreid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.genres_genreid_seq;
       public          postgres    false    217            �           0    0    genres_genreid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.genres_genreid_seq OWNED BY public.genres.genreid;
          public          postgres    false    216            �            1259    24773    movies    TABLE       CREATE TABLE public.movies (
    movieid integer NOT NULL,
    title_en character varying(255),
    title_ua character varying(255),
    title_es character varying(255),
    description_en text,
    description_ua text,
    description_es text,
    duration integer
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �            1259    24772    movies_movieid_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_movieid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.movies_movieid_seq;
       public          postgres    false    215            �           0    0    movies_movieid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.movies_movieid_seq OWNED BY public.movies.movieid;
          public          postgres    false    214            �            1259    24817    moviescategories    TABLE     h   CREATE TABLE public.moviescategories (
    movieid integer NOT NULL,
    categoryid integer NOT NULL
);
 $   DROP TABLE public.moviescategories;
       public         heap    postgres    false            �            1259    24802    moviesgenres    TABLE     a   CREATE TABLE public.moviesgenres (
    movieid integer NOT NULL,
    genreid integer NOT NULL
);
     DROP TABLE public.moviesgenres;
       public         heap    postgres    false            �            1259    24832    moviestechnologies    TABLE     l   CREATE TABLE public.moviestechnologies (
    movieid integer NOT NULL,
    technologyid integer NOT NULL
);
 &   DROP TABLE public.moviestechnologies;
       public         heap    postgres    false            �            1259    24935    orders    TABLE     �   CREATE TABLE public.orders (
    orderid integer NOT NULL,
    userid integer,
    orderdate timestamp without time zone,
    totalamount numeric(10,2),
    orderdetails text
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    24934    orders_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.orders_orderid_seq;
       public          postgres    false    238            �           0    0    orders_orderid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.orders_orderid_seq OWNED BY public.orders.orderid;
          public          postgres    false    237            �            1259    24921    profiles    TABLE     �   CREATE TABLE public.profiles (
    profileid integer NOT NULL,
    userid integer,
    profiletype character varying(255),
    profiledata text
);
    DROP TABLE public.profiles;
       public         heap    postgres    false            �            1259    24920    profiles_profileid_seq    SEQUENCE     �   CREATE SEQUENCE public.profiles_profileid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.profiles_profileid_seq;
       public          postgres    false    236            �           0    0    profiles_profileid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.profiles_profileid_seq OWNED BY public.profiles.profileid;
          public          postgres    false    235            �            1259    24904    purchasedtickets    TABLE     �   CREATE TABLE public.purchasedtickets (
    ticketid integer NOT NULL,
    rownumber integer,
    seatnumber integer,
    userid integer,
    sessionid integer,
    purchasedate timestamp without time zone
);
 $   DROP TABLE public.purchasedtickets;
       public         heap    postgres    false            �            1259    24903    purchasedtickets_ticketid_seq    SEQUENCE     �   CREATE SEQUENCE public.purchasedtickets_ticketid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.purchasedtickets_ticketid_seq;
       public          postgres    false    234            �           0    0    purchasedtickets_ticketid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.purchasedtickets_ticketid_seq OWNED BY public.purchasedtickets.ticketid;
          public          postgres    false    233            �            1259    24874    sessions    TABLE     �   CREATE TABLE public.sessions (
    sessionid integer NOT NULL,
    starttime timestamp without time zone,
    endtime timestamp without time zone,
    technologyid integer,
    movieid integer,
    cinemahallid integer
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            �            1259    24873    sessions_sessionid_seq    SEQUENCE     �   CREATE SEQUENCE public.sessions_sessionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.sessions_sessionid_seq;
       public          postgres    false    230            �           0    0    sessions_sessionid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.sessions_sessionid_seq OWNED BY public.sessions.sessionid;
          public          postgres    false    229            �            1259    24796    technologies    TABLE     s   CREATE TABLE public.technologies (
    technologyid integer NOT NULL,
    technologyname character varying(255)
);
     DROP TABLE public.technologies;
       public         heap    postgres    false            �            1259    24795    technologies_technologyid_seq    SEQUENCE     �   CREATE SEQUENCE public.technologies_technologyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.technologies_technologyid_seq;
       public          postgres    false    221            �           0    0    technologies_technologyid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.technologies_technologyid_seq OWNED BY public.technologies.technologyid;
          public          postgres    false    220            �            1259    24949    transactions    TABLE     �   CREATE TABLE public.transactions (
    transactionid integer NOT NULL,
    userid integer,
    orderid integer,
    transactiondate timestamp without time zone,
    transactionamount numeric(10,2),
    transactiondetails text
);
     DROP TABLE public.transactions;
       public         heap    postgres    false            �            1259    24948    transactions_transactionid_seq    SEQUENCE     �   CREATE SEQUENCE public.transactions_transactionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.transactions_transactionid_seq;
       public          postgres    false    240            �           0    0    transactions_transactionid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.transactions_transactionid_seq OWNED BY public.transactions.transactionid;
          public          postgres    false    239            �            1259    24896    users    TABLE       CREATE TABLE public.users (
    userid integer NOT NULL,
    phonenumber character varying(20),
    email character varying(255),
    isverified character(1),
    CONSTRAINT users_isverified_check CHECK ((isverified = ANY (ARRAY['Y'::bpchar, 'N'::bpchar])))
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24895    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public          postgres    false    232            �           0    0    users_userid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;
          public          postgres    false    231            �           2604    24792    categories categoryid    DEFAULT     ~   ALTER TABLE ONLY public.categories ALTER COLUMN categoryid SET DEFAULT nextval('public.categories_categoryid_seq'::regclass);
 D   ALTER TABLE public.categories ALTER COLUMN categoryid DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    24860    cinemahalls hallid    DEFAULT     x   ALTER TABLE ONLY public.cinemahalls ALTER COLUMN hallid SET DEFAULT nextval('public.cinemahalls_hallid_seq'::regclass);
 A   ALTER TABLE public.cinemahalls ALTER COLUMN hallid DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    24851    cinemas cinemaid    DEFAULT     t   ALTER TABLE ONLY public.cinemas ALTER COLUMN cinemaid SET DEFAULT nextval('public.cinemas_cinemaid_seq'::regclass);
 ?   ALTER TABLE public.cinemas ALTER COLUMN cinemaid DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    24785    genres genreid    DEFAULT     p   ALTER TABLE ONLY public.genres ALTER COLUMN genreid SET DEFAULT nextval('public.genres_genreid_seq'::regclass);
 =   ALTER TABLE public.genres ALTER COLUMN genreid DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    24776    movies movieid    DEFAULT     p   ALTER TABLE ONLY public.movies ALTER COLUMN movieid SET DEFAULT nextval('public.movies_movieid_seq'::regclass);
 =   ALTER TABLE public.movies ALTER COLUMN movieid DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    24938    orders orderid    DEFAULT     p   ALTER TABLE ONLY public.orders ALTER COLUMN orderid SET DEFAULT nextval('public.orders_orderid_seq'::regclass);
 =   ALTER TABLE public.orders ALTER COLUMN orderid DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    24924    profiles profileid    DEFAULT     x   ALTER TABLE ONLY public.profiles ALTER COLUMN profileid SET DEFAULT nextval('public.profiles_profileid_seq'::regclass);
 A   ALTER TABLE public.profiles ALTER COLUMN profileid DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    24907    purchasedtickets ticketid    DEFAULT     �   ALTER TABLE ONLY public.purchasedtickets ALTER COLUMN ticketid SET DEFAULT nextval('public.purchasedtickets_ticketid_seq'::regclass);
 H   ALTER TABLE public.purchasedtickets ALTER COLUMN ticketid DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    24877    sessions sessionid    DEFAULT     x   ALTER TABLE ONLY public.sessions ALTER COLUMN sessionid SET DEFAULT nextval('public.sessions_sessionid_seq'::regclass);
 A   ALTER TABLE public.sessions ALTER COLUMN sessionid DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    24799    technologies technologyid    DEFAULT     �   ALTER TABLE ONLY public.technologies ALTER COLUMN technologyid SET DEFAULT nextval('public.technologies_technologyid_seq'::regclass);
 H   ALTER TABLE public.technologies ALTER COLUMN technologyid DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    24952    transactions transactionid    DEFAULT     �   ALTER TABLE ONLY public.transactions ALTER COLUMN transactionid SET DEFAULT nextval('public.transactions_transactionid_seq'::regclass);
 I   ALTER TABLE public.transactions ALTER COLUMN transactionid DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    24899    users userid    DEFAULT     l   ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 ;   ALTER TABLE public.users ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    231    232    232            w          0    24789 
   categories 
   TABLE DATA           >   COPY public.categories (categoryid, categoryname) FROM stdin;
    public          postgres    false    219   ��       �          0    24857    cinemahalls 
   TABLE DATA           _   COPY public.cinemahalls (hallid, cinemaid, technologyid, isactive, availableseats) FROM stdin;
    public          postgres    false    228   É       ~          0    24848    cinemas 
   TABLE DATA           j   COPY public.cinemas (cinemaid, name_en, name_ua, name_es, address_en, address_ua, address_es) FROM stdin;
    public          postgres    false    226   ��       u          0    24782    genres 
   TABLE DATA           4   COPY public.genres (genreid, genrename) FROM stdin;
    public          postgres    false    217   ��       s          0    24773    movies 
   TABLE DATA           �   COPY public.movies (movieid, title_en, title_ua, title_es, description_en, description_ua, description_es, duration) FROM stdin;
    public          postgres    false    215   �       {          0    24817    moviescategories 
   TABLE DATA           ?   COPY public.moviescategories (movieid, categoryid) FROM stdin;
    public          postgres    false    223   7�       z          0    24802    moviesgenres 
   TABLE DATA           8   COPY public.moviesgenres (movieid, genreid) FROM stdin;
    public          postgres    false    222   T�       |          0    24832    moviestechnologies 
   TABLE DATA           C   COPY public.moviestechnologies (movieid, technologyid) FROM stdin;
    public          postgres    false    224   q�       �          0    24935    orders 
   TABLE DATA           W   COPY public.orders (orderid, userid, orderdate, totalamount, orderdetails) FROM stdin;
    public          postgres    false    238   ��       �          0    24921    profiles 
   TABLE DATA           O   COPY public.profiles (profileid, userid, profiletype, profiledata) FROM stdin;
    public          postgres    false    236   ��       �          0    24904    purchasedtickets 
   TABLE DATA           l   COPY public.purchasedtickets (ticketid, rownumber, seatnumber, userid, sessionid, purchasedate) FROM stdin;
    public          postgres    false    234   Ȋ       �          0    24874    sessions 
   TABLE DATA           f   COPY public.sessions (sessionid, starttime, endtime, technologyid, movieid, cinemahallid) FROM stdin;
    public          postgres    false    230   �       y          0    24796    technologies 
   TABLE DATA           D   COPY public.technologies (technologyid, technologyname) FROM stdin;
    public          postgres    false    221   �       �          0    24949    transactions 
   TABLE DATA           ~   COPY public.transactions (transactionid, userid, orderid, transactiondate, transactionamount, transactiondetails) FROM stdin;
    public          postgres    false    240   �       �          0    24896    users 
   TABLE DATA           G   COPY public.users (userid, phonenumber, email, isverified) FROM stdin;
    public          postgres    false    232   <�       �           0    0    categories_categoryid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categories_categoryid_seq', 1, false);
          public          postgres    false    218            �           0    0    cinemahalls_hallid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cinemahalls_hallid_seq', 1, false);
          public          postgres    false    227            �           0    0    cinemas_cinemaid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cinemas_cinemaid_seq', 1, false);
          public          postgres    false    225            �           0    0    genres_genreid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.genres_genreid_seq', 1, false);
          public          postgres    false    216            �           0    0    movies_movieid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.movies_movieid_seq', 1, false);
          public          postgres    false    214            �           0    0    orders_orderid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.orders_orderid_seq', 1, false);
          public          postgres    false    237            �           0    0    profiles_profileid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.profiles_profileid_seq', 1, false);
          public          postgres    false    235            �           0    0    purchasedtickets_ticketid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.purchasedtickets_ticketid_seq', 1, false);
          public          postgres    false    233            �           0    0    sessions_sessionid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.sessions_sessionid_seq', 1, false);
          public          postgres    false    229            �           0    0    technologies_technologyid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.technologies_technologyid_seq', 1, false);
          public          postgres    false    220            �           0    0    transactions_transactionid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.transactions_transactionid_seq', 1, false);
          public          postgres    false    239            �           0    0    users_userid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_userid_seq', 1, false);
          public          postgres    false    231            �           2606    24794    categories categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (categoryid);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    219            �           2606    24862    cinemahalls cinemahalls_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cinemahalls
    ADD CONSTRAINT cinemahalls_pkey PRIMARY KEY (hallid);
 F   ALTER TABLE ONLY public.cinemahalls DROP CONSTRAINT cinemahalls_pkey;
       public            postgres    false    228            �           2606    24855    cinemas cinemas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.cinemas
    ADD CONSTRAINT cinemas_pkey PRIMARY KEY (cinemaid);
 >   ALTER TABLE ONLY public.cinemas DROP CONSTRAINT cinemas_pkey;
       public            postgres    false    226            �           2606    24787    genres genres_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genreid);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    217            �           2606    24780    movies movies_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (movieid);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    215            �           2606    24821 &   moviescategories moviescategories_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.moviescategories
    ADD CONSTRAINT moviescategories_pkey PRIMARY KEY (movieid, categoryid);
 P   ALTER TABLE ONLY public.moviescategories DROP CONSTRAINT moviescategories_pkey;
       public            postgres    false    223    223            �           2606    24806    moviesgenres moviesgenres_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.moviesgenres
    ADD CONSTRAINT moviesgenres_pkey PRIMARY KEY (movieid, genreid);
 H   ALTER TABLE ONLY public.moviesgenres DROP CONSTRAINT moviesgenres_pkey;
       public            postgres    false    222    222            �           2606    24836 *   moviestechnologies moviestechnologies_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.moviestechnologies
    ADD CONSTRAINT moviestechnologies_pkey PRIMARY KEY (movieid, technologyid);
 T   ALTER TABLE ONLY public.moviestechnologies DROP CONSTRAINT moviestechnologies_pkey;
       public            postgres    false    224    224            �           2606    24942    orders orders_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    238            �           2606    24928    profiles profiles_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (profileid);
 @   ALTER TABLE ONLY public.profiles DROP CONSTRAINT profiles_pkey;
       public            postgres    false    236            �           2606    24909 &   purchasedtickets purchasedtickets_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.purchasedtickets
    ADD CONSTRAINT purchasedtickets_pkey PRIMARY KEY (ticketid);
 P   ALTER TABLE ONLY public.purchasedtickets DROP CONSTRAINT purchasedtickets_pkey;
       public            postgres    false    234            �           2606    24879    sessions sessions_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (sessionid);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    230            �           2606    24801    technologies technologies_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.technologies
    ADD CONSTRAINT technologies_pkey PRIMARY KEY (technologyid);
 H   ALTER TABLE ONLY public.technologies DROP CONSTRAINT technologies_pkey;
       public            postgres    false    221            �           2606    24956    transactions transactions_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (transactionid);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public            postgres    false    240            �           2606    24902    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    232            �           2606    24863 %   cinemahalls cinemahalls_cinemaid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cinemahalls
    ADD CONSTRAINT cinemahalls_cinemaid_fkey FOREIGN KEY (cinemaid) REFERENCES public.cinemas(cinemaid);
 O   ALTER TABLE ONLY public.cinemahalls DROP CONSTRAINT cinemahalls_cinemaid_fkey;
       public          postgres    false    226    3268    228            �           2606    24868 )   cinemahalls cinemahalls_technologyid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cinemahalls
    ADD CONSTRAINT cinemahalls_technologyid_fkey FOREIGN KEY (technologyid) REFERENCES public.technologies(technologyid);
 S   ALTER TABLE ONLY public.cinemahalls DROP CONSTRAINT cinemahalls_technologyid_fkey;
       public          postgres    false    221    3260    228            �           2606    24827 1   moviescategories moviescategories_categoryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moviescategories
    ADD CONSTRAINT moviescategories_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.categories(categoryid);
 [   ALTER TABLE ONLY public.moviescategories DROP CONSTRAINT moviescategories_categoryid_fkey;
       public          postgres    false    223    3258    219            �           2606    24822 .   moviescategories moviescategories_movieid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moviescategories
    ADD CONSTRAINT moviescategories_movieid_fkey FOREIGN KEY (movieid) REFERENCES public.movies(movieid);
 X   ALTER TABLE ONLY public.moviescategories DROP CONSTRAINT moviescategories_movieid_fkey;
       public          postgres    false    3254    215    223            �           2606    24812 &   moviesgenres moviesgenres_genreid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moviesgenres
    ADD CONSTRAINT moviesgenres_genreid_fkey FOREIGN KEY (genreid) REFERENCES public.genres(genreid);
 P   ALTER TABLE ONLY public.moviesgenres DROP CONSTRAINT moviesgenres_genreid_fkey;
       public          postgres    false    222    3256    217            �           2606    24807 &   moviesgenres moviesgenres_movieid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moviesgenres
    ADD CONSTRAINT moviesgenres_movieid_fkey FOREIGN KEY (movieid) REFERENCES public.movies(movieid);
 P   ALTER TABLE ONLY public.moviesgenres DROP CONSTRAINT moviesgenres_movieid_fkey;
       public          postgres    false    215    222    3254            �           2606    24837 2   moviestechnologies moviestechnologies_movieid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moviestechnologies
    ADD CONSTRAINT moviestechnologies_movieid_fkey FOREIGN KEY (movieid) REFERENCES public.movies(movieid);
 \   ALTER TABLE ONLY public.moviestechnologies DROP CONSTRAINT moviestechnologies_movieid_fkey;
       public          postgres    false    215    224    3254            �           2606    24842 7   moviestechnologies moviestechnologies_technologyid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moviestechnologies
    ADD CONSTRAINT moviestechnologies_technologyid_fkey FOREIGN KEY (technologyid) REFERENCES public.technologies(technologyid);
 a   ALTER TABLE ONLY public.moviestechnologies DROP CONSTRAINT moviestechnologies_technologyid_fkey;
       public          postgres    false    221    224    3260            �           2606    24943    orders orders_userid_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);
 C   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_userid_fkey;
       public          postgres    false    238    3274    232            �           2606    24929    profiles profiles_userid_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);
 G   ALTER TABLE ONLY public.profiles DROP CONSTRAINT profiles_userid_fkey;
       public          postgres    false    3274    232    236            �           2606    24915 0   purchasedtickets purchasedtickets_sessionid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchasedtickets
    ADD CONSTRAINT purchasedtickets_sessionid_fkey FOREIGN KEY (sessionid) REFERENCES public.sessions(sessionid);
 Z   ALTER TABLE ONLY public.purchasedtickets DROP CONSTRAINT purchasedtickets_sessionid_fkey;
       public          postgres    false    3272    234    230            �           2606    24910 -   purchasedtickets purchasedtickets_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchasedtickets
    ADD CONSTRAINT purchasedtickets_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);
 W   ALTER TABLE ONLY public.purchasedtickets DROP CONSTRAINT purchasedtickets_userid_fkey;
       public          postgres    false    3274    232    234            �           2606    24890 #   sessions sessions_cinemahallid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_cinemahallid_fkey FOREIGN KEY (cinemahallid) REFERENCES public.cinemahalls(hallid);
 M   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_cinemahallid_fkey;
       public          postgres    false    230    228    3270            �           2606    24885    sessions sessions_movieid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_movieid_fkey FOREIGN KEY (movieid) REFERENCES public.movies(movieid);
 H   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_movieid_fkey;
       public          postgres    false    215    230    3254            �           2606    24880 #   sessions sessions_technologyid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_technologyid_fkey FOREIGN KEY (technologyid) REFERENCES public.technologies(technologyid);
 M   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_technologyid_fkey;
       public          postgres    false    3260    221    230            �           2606    24962 &   transactions transactions_orderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);
 P   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_orderid_fkey;
       public          postgres    false    240    238    3280            �           2606    24957 %   transactions transactions_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);
 O   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_userid_fkey;
       public          postgres    false    232    240    3274            w      x������ � �      �      x������ � �      ~      x������ � �      u      x������ � �      s      x������ � �      {      x������ � �      z      x������ � �      |      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      y      x������ � �      �      x������ � �      �      x������ � �     