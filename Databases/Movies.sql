PGDMP     
    5                 {           Movies    15.4    15.3 /    3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            6           1262    25315    Movies    DATABASE     �   CREATE DATABASE "Movies" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Movies";
                postgres    false            �            1259    25343 
   categories    TABLE     m   CREATE TABLE public.categories (
    categoryid integer NOT NULL,
    categoryname character varying(255)
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    25342    categories_categoryid_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_categoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categories_categoryid_seq;
       public          postgres    false    221            7           0    0    categories_categoryid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.categories_categoryid_seq OWNED BY public.categories.categoryid;
          public          postgres    false    220            �            1259    25329    genres    TABLE     c   CREATE TABLE public.genres (
    genreid integer NOT NULL,
    genrename character varying(255)
);
    DROP TABLE public.genres;
       public         heap    postgres    false            �            1259    25328    genres_genreid_seq    SEQUENCE     �   CREATE SEQUENCE public.genres_genreid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.genres_genreid_seq;
       public          postgres    false    217            8           0    0    genres_genreid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.genres_genreid_seq OWNED BY public.genres.genreid;
          public          postgres    false    216            �            1259    25320    movies    TABLE       CREATE TABLE public.movies (
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
       public         heap    postgres    false            �            1259    25319    movies_movieid_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_movieid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.movies_movieid_seq;
       public          postgres    false    215            9           0    0    movies_movieid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.movies_movieid_seq OWNED BY public.movies.movieid;
          public          postgres    false    214            �            1259    25364    moviescategories    TABLE     h   CREATE TABLE public.moviescategories (
    movieid integer NOT NULL,
    categoryid integer NOT NULL
);
 $   DROP TABLE public.moviescategories;
       public         heap    postgres    false            �            1259    25349    moviesgenres    TABLE     a   CREATE TABLE public.moviesgenres (
    movieid integer NOT NULL,
    genreid integer NOT NULL
);
     DROP TABLE public.moviesgenres;
       public         heap    postgres    false            �            1259    25379    moviestechnologies    TABLE     l   CREATE TABLE public.moviestechnologies (
    movieid integer NOT NULL,
    technologyid integer NOT NULL
);
 &   DROP TABLE public.moviestechnologies;
       public         heap    postgres    false            �            1259    25336    technologies    TABLE     s   CREATE TABLE public.technologies (
    technologyid integer NOT NULL,
    technologyname character varying(255)
);
     DROP TABLE public.technologies;
       public         heap    postgres    false            �            1259    25335    technologies_technologyid_seq    SEQUENCE     �   CREATE SEQUENCE public.technologies_technologyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.technologies_technologyid_seq;
       public          postgres    false    219            :           0    0    technologies_technologyid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.technologies_technologyid_seq OWNED BY public.technologies.technologyid;
          public          postgres    false    218            �           2604    25346    categories categoryid    DEFAULT     ~   ALTER TABLE ONLY public.categories ALTER COLUMN categoryid SET DEFAULT nextval('public.categories_categoryid_seq'::regclass);
 D   ALTER TABLE public.categories ALTER COLUMN categoryid DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    25332    genres genreid    DEFAULT     p   ALTER TABLE ONLY public.genres ALTER COLUMN genreid SET DEFAULT nextval('public.genres_genreid_seq'::regclass);
 =   ALTER TABLE public.genres ALTER COLUMN genreid DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    25323    movies movieid    DEFAULT     p   ALTER TABLE ONLY public.movies ALTER COLUMN movieid SET DEFAULT nextval('public.movies_movieid_seq'::regclass);
 =   ALTER TABLE public.movies ALTER COLUMN movieid DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    25339    technologies technologyid    DEFAULT     �   ALTER TABLE ONLY public.technologies ALTER COLUMN technologyid SET DEFAULT nextval('public.technologies_technologyid_seq'::regclass);
 H   ALTER TABLE public.technologies ALTER COLUMN technologyid DROP DEFAULT;
       public          postgres    false    218    219    219            -          0    25343 
   categories 
   TABLE DATA           >   COPY public.categories (categoryid, categoryname) FROM stdin;
    public          postgres    false    221   �6       )          0    25329    genres 
   TABLE DATA           4   COPY public.genres (genreid, genrename) FROM stdin;
    public          postgres    false    217   �7       '          0    25320    movies 
   TABLE DATA           �   COPY public.movies (movieid, title_en, title_ua, title_es, description_en, description_ua, description_es, duration) FROM stdin;
    public          postgres    false    215   �8       /          0    25364    moviescategories 
   TABLE DATA           ?   COPY public.moviescategories (movieid, categoryid) FROM stdin;
    public          postgres    false    223   ڈ       .          0    25349    moviesgenres 
   TABLE DATA           8   COPY public.moviesgenres (movieid, genreid) FROM stdin;
    public          postgres    false    222   �       0          0    25379    moviestechnologies 
   TABLE DATA           C   COPY public.moviestechnologies (movieid, technologyid) FROM stdin;
    public          postgres    false    224   �       +          0    25336    technologies 
   TABLE DATA           D   COPY public.technologies (technologyid, technologyname) FROM stdin;
    public          postgres    false    219   t�       ;           0    0    categories_categoryid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categories_categoryid_seq', 20, true);
          public          postgres    false    220            <           0    0    genres_genreid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.genres_genreid_seq', 19, true);
          public          postgres    false    216            =           0    0    movies_movieid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.movies_movieid_seq', 1000, true);
          public          postgres    false    214            >           0    0    technologies_technologyid_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.technologies_technologyid_seq', 5, true);
          public          postgres    false    218            �           2606    25348    categories categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (categoryid);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    221            �           2606    25334    genres genres_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genreid);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    217            �           2606    25327    movies movies_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (movieid);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    215            �           2606    25368 &   moviescategories moviescategories_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.moviescategories
    ADD CONSTRAINT moviescategories_pkey PRIMARY KEY (movieid, categoryid);
 P   ALTER TABLE ONLY public.moviescategories DROP CONSTRAINT moviescategories_pkey;
       public            postgres    false    223    223            �           2606    25353    moviesgenres moviesgenres_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.moviesgenres
    ADD CONSTRAINT moviesgenres_pkey PRIMARY KEY (movieid, genreid);
 H   ALTER TABLE ONLY public.moviesgenres DROP CONSTRAINT moviesgenres_pkey;
       public            postgres    false    222    222            �           2606    25383 *   moviestechnologies moviestechnologies_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.moviestechnologies
    ADD CONSTRAINT moviestechnologies_pkey PRIMARY KEY (movieid, technologyid);
 T   ALTER TABLE ONLY public.moviestechnologies DROP CONSTRAINT moviestechnologies_pkey;
       public            postgres    false    224    224            �           2606    25341    technologies technologies_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.technologies
    ADD CONSTRAINT technologies_pkey PRIMARY KEY (technologyid);
 H   ALTER TABLE ONLY public.technologies DROP CONSTRAINT technologies_pkey;
       public            postgres    false    219            �           2606    25374 1   moviescategories moviescategories_categoryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moviescategories
    ADD CONSTRAINT moviescategories_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.categories(categoryid);
 [   ALTER TABLE ONLY public.moviescategories DROP CONSTRAINT moviescategories_categoryid_fkey;
       public          postgres    false    3211    221    223            �           2606    25369 .   moviescategories moviescategories_movieid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moviescategories
    ADD CONSTRAINT moviescategories_movieid_fkey FOREIGN KEY (movieid) REFERENCES public.movies(movieid);
 X   ALTER TABLE ONLY public.moviescategories DROP CONSTRAINT moviescategories_movieid_fkey;
       public          postgres    false    223    215    3205            �           2606    25359 &   moviesgenres moviesgenres_genreid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moviesgenres
    ADD CONSTRAINT moviesgenres_genreid_fkey FOREIGN KEY (genreid) REFERENCES public.genres(genreid);
 P   ALTER TABLE ONLY public.moviesgenres DROP CONSTRAINT moviesgenres_genreid_fkey;
       public          postgres    false    3207    222    217            �           2606    25354 &   moviesgenres moviesgenres_movieid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moviesgenres
    ADD CONSTRAINT moviesgenres_movieid_fkey FOREIGN KEY (movieid) REFERENCES public.movies(movieid);
 P   ALTER TABLE ONLY public.moviesgenres DROP CONSTRAINT moviesgenres_movieid_fkey;
       public          postgres    false    3205    222    215            �           2606    25384 2   moviestechnologies moviestechnologies_movieid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moviestechnologies
    ADD CONSTRAINT moviestechnologies_movieid_fkey FOREIGN KEY (movieid) REFERENCES public.movies(movieid);
 \   ALTER TABLE ONLY public.moviestechnologies DROP CONSTRAINT moviestechnologies_movieid_fkey;
       public          postgres    false    3205    215    224            �           2606    25389 7   moviestechnologies moviestechnologies_technologyid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moviestechnologies
    ADD CONSTRAINT moviestechnologies_technologyid_fkey FOREIGN KEY (technologyid) REFERENCES public.technologies(technologyid);
 a   ALTER TABLE ONLY public.moviestechnologies DROP CONSTRAINT moviestechnologies_technologyid_fkey;
       public          postgres    false    219    224    3209            -   �   x���j1���S쩷�x�\BJI[6�^z^A���ޖ}�������	9x�ߦ��T�`7��*��O�H�+8D*%x\�kxd��>�'m�Bά����<5'J!θ��4��Y��{���|
�<W*3��EU���$�k��5H�^7�؝I�zI�����[�e.�u����!F6���#�m�(~JF!5�.��A�ΡT���.�:�ւ�/���2U�      )   �   x�%��
�@��٧�	���WF%�ب`c���Y����"��=���ơ�Y4�{��1���T�~�CʃZ��%$&���N����8��mp���-��I�#7C�$�Or�XQ�������J\`o�
;ѧ�-��C,��p�>�7�q�2��i�œ���R�t���>�      '      x��ݽ��M�,d��WQW�Vf�?>.��j5RKG����������H���7�9���3fxU�Z���{�|2��ſ����OY��������Ͽ������_�ӿ����?�w����������������������_��?��������o��_��=?��������������~���?����/������������������=|z���������������ǧ���������~^��O�����6|ھھ~��p{ݿ�~~�~|����?}�~�������~�?>�ç�������W��������t�����?<^��O�����9|:�:�~:��|��?]����O������������~ޝ�C����*?S���^��^,?��k��	�֨��bS�&�m���嶨��g���ߖ(����8�k�;nQɭϖ[S�-�s�{�=q��zWݢ�[�e���[�����{��z7ޢ�[�����[�����{ⸯ�.�Eͷ>�oMݷD���������E�>pM�D��%������E=�>�pMM�D��]�đ��n�Eu�>�pM��D#����Q����M��?;qO��E'��������N�ԉ���ԉ[t��މO�ϟ��|�'>�#��g>��>��G��~w�Nܟ���Nܢ��N|�<����M��?;qO��E'����i����M��?;qO��E'����y_�݉�:qv�:q�N��;��_�݉�:qv�:q�N��;�3^�݉�:qv�:q�N��;�3_�݉�:qv�:q�N��;�^�݉�:�|v�:�N<�;���uޝx��g'����������;�P'��N<S'щ�{'>q=��_��o��_��߇�_��u^�݉�:�|v�:�N<�;��^�݉�:�|v�:�N<�;��λu����3u��x�w���λu����3u��x�w�W�λu����3u��x�w�W�λu����3u��x�w�W��݉F�h��hS'��D�މO�~~^�.E�R��R��M��}/�'^?�e�V4jE�lE�Z�D+��V|���_��E�Z��Z��MԢ}��'^?�e�O��o����.�^h��e�b4*F�,F���D1��b|��s_�nF�f��f��M4�}o�'^?��w5U�}V�M�h��{5>������Ѩ��m�F�h߻��O��]�F�h��hS9�(G�^�O�~�u��x��g;ީ�h����x���}��v���x�v����v|�����R;��v�S;^ю�{;>�Z�u��x��g;ީ�h����x���v�Ԏ���ԎW���ގO���n�B��B�R��~�"~��㺯�n�K�x?��N�xE;�����k����R;��v�S;^ю�{;>�Z��v�Ԏ���ԎW���ގO�V��/���l�;���x����U/��S;�g;�Ԏ.�ѿ������w;:����O���{;>�����vtjG�lG���E;��v|������Ԏ�َ>���v�����k����ѩ��}jG�����׶���ѩ��}jG�����׾/�_;�����o�կ��v���w;:����O���{;>����w;:����O���{;>����w;:����O���{;>����w;�c|�cL���{;>�:?�x�cP;�g;�Ԏ!�1�����^�nǠv��v��C�c|o�'^g��ݎA���S;�h��ގO��yŻ��1>�1�vю��x{Ż��1>�1�vю��x���w;�c|�cL���{;>�:����÷s�z�x?G]�7t�v<�w;�c|�cL���{;>�:��w;�c|�cL���{;>�:��w;&�c~�cN혢�{;>�W��1��sj����񉗭W��1��sj������W��1��sj����񉗝W��1��sj������+��Ԏ�َ9�c�v�������+��Ԏ�َ9�c�v���������vLj��lǜ�1E;��v|�e�ʾ��w��x�Q]c��v�|���1?�1�vLю���xY��ݎE�X��XS;�h��ގO��ϫ��XԎ�َ5�c�v������W�۱��kj��X����ݯz�cQ;�g;�Ԏ%ڱ����{^�nǢv��v��K�c}o�'^�^�nǢv��v��K�c}o�'^���ݎE�X��XS;�h��ގO����ݎE�X��XS;�h��ގO�n��ݎE�X��XS;�h��ގO�n��/z�Mo��=��V���m�/�{����ۍo��=�����խ�$��9I_����?t��g����.����O�|='��?|������w��%�q�ɗ��$}��o���U��.����#n�?���/�������3�	�Q��ĭ�'_n�I�b������?���u9�G����9I_���?tE�g�#��.���[�O�ܟ��E��)�CW�ƻ�?����-����9I_���?te�g�3��.���[�O�<������9�CW�ƻ�?�����=������M�0��]��5J�<������k~�5�kf_#��6O����B6�)f6����FI�'_�6���oچ���m$�Q�����/t�av3�	o��y�{����o����F%p�|���B8�)f8�ÑGI�'_�8�0�o�9��q$�Q"��L�/���a�3�	s��y������s���>G%t�|�ӱ�t+�ELg�Ng)����A�����:���"��F���YB� _	��2�&�2ΖQbF���ͧc�,�;�����R�g	��|�ӱ�x+�E�g��g)ȳ��A�����<�5�"γFϳ�YB� _�tl��Ūg�Y��Y
�,!{��|:�q�bݳ�����,|>~t8�ӱ�tl#���g�Y��Y
�,!}��|:���b�������,~�?�W>��g��Y�~��~��?K�䫞�m��X�,�?k�?K�%�UO�6Z��1�5:�� ��*��_h�75�l|v��+9�tl=�(h�
ZĂ�肖�AK� 䫞�m�X-�Ak�AK�%��UO�6Z��1�5:����R���c-�B�����R`h	1�|�ӱ����Elh�nh)8��B�����C���">�F?� ZB!_�tl#�Ŋh#Z�#Z
-!��c�-�D�4�9�R�h	P�|�<ۤh�)Z��֨��bEK�"����ؖE�i�"[�F\��.Z�!�?x�������Ot�ot�G:�+�����vF���"i�Fj��5Z!�?O�67Z���5��������y:���bv���-%���G���ӱ���E�h��h)���@B���m��!-RHkdHK9�% ���tlS��iFZ�FZ�#-ᑐ��tl���$i�IZ#JZJ%-�����tlä�2iMZ�MZ
'-�����tl���@i�PZ#QZ�(-�����tl3��NiTZ�TZ�*-a���~=���kH����|I���t�z:���b���-��--���K��z:���b��H/��/-嗖 L��z:�	�bô1�Q1-Ř�pL��z:�%�bʴ�2�3-����L��z:�A�bѴ�4��4-���PM��~:�]�bشH6��6-e���M��~:�y�bߴ8�Q8-E��0N��~:���b��9�:-%���N��~:���b���;��;-��O��~:���b��H=��=-垖�O��ƻs�����9~zn~{N>>�^�{:v?�j1�Zd�ֈ��RPK0(�{?�j��ZD��h���PKh(�{?�j1�Z$��H��2QK�(�{?�,j��Z��(���QK�(��<�:j1�Z����RK)��<�Hj��ZĤ�褖�RKH)��<�Vj1�Z���ȥ��RK�)��<�dj��Z��֨��bSK�)��<�rj1�Zd�ֈ���SK�)��<ۀj��ZD��h��BTK(*�����_�|���'?�9��)�T/}>{��mN��S-UkUK��%L�}��mU��U-rUk�UKɪ%h�}��m\�XW-�Uk�UK�%�r\�mb��X-BVkTVK1�%�r܎mh�XZ-�Vk�VKa�%�r\�mn��[-WkWK��%�    r܍mt�X]-bWktWK��%�r\�mz��^-�Wk�WK�%�r܌m��X`-"Xk4XK!�%r\�m���a-�Xk�XKQ�%,r܋�_)���2?�<��,SV�)��m��$k��Z��֨��bYK�,��0k��ZD��h���YK�,��<k��Z��(��"ZK-��Hk��ZĴ�贖�ZKH-��Tk��Z��֨���ZKx-��`k��ZD��h��B[K�-��lk��Z��(���[K�-��xk��Zķ�跖\K.�ۄk��Z��֨��b\K8.�ېk��ZD��h���\Kh.�{���K��=U�o�Ϗ�����s���׃���X�O��o��G�ի�>[ߤk3��D��H��"][�.�x��E�fѵIt�Qtm%��]��}��͠k��#��
tm���-��\�=�&ϵGϵ����s!Ǔ�͹6s�M�k��k+ε�B���[sm�\�4�5�V�kͅ�7�ڌ�6a�=b��0��9޹o˵�rm�\{�\[Y�-,r<wߔk3��D��H���\[P.��4kK�͒k��ڣ��Jrm!��A~-��6	 �(�\Q� {����69�=:����y=�ڌk3��ĸ�ȸ�b\[0.��4k+�͊k��ڣ��Jqm����Ӭ��6#�M�k��k+ĵ�B^O����l�6�=����y=�ڄk3��D��H��"\[.��4k�͂k��ڣ��Jpm!���Ӭ�6�M�k��k+���B^O��Y�me�g��%9������O��_cK��-��Ҽ�$������%��1�����.ͻKrxI-/�����5�����/��Kr�I-0�?��߿F�~[a��y�I1�%��������okL<�4�1�A&�ȴ�|e�e�m��g��]&9̤��������[���&��G��������$����4����3M�N�jRKM�ϧ������֚x�i�k��Mj�i���n���om�[{�[[��-�r<Ŀ�om�[�����V~k������[���&��G������o!ǳ�����m�'��;9r�V��|�����6��=�����~9����6��M~k�~k+����B���w���~k��ڣ���om᷐����~k�����跶�[[�-�x�����6��=�����~9����6��M~k�~k+����B�w�w���~k��ڣ���om᷐�9��~k�����跶�[[�-�x�����6��=�����~9����6��M~k�~k+����B�7����mM��D�=Q9(�E�|�����6��=�����~9^����6��M~k�~k+����B���w���~k��ڣ���om᷐����~k�����跶�[[�-����6��M~k�~k+����B�5��~k�����跶�[[�-����6��M~k�~k+����B�m��~k�����跶�[[�-����6��M~k�~k+����B����~k�����跶�[[�-����p�o��<�<o7��f����n�n���om�[{�[[��-�r���[���&��G������o!Ǌ�n���om�[{�[[��-�r�	��[���&��G������o!Ǧ�n���om�[{�[[��-�rL��[���&��G������o!���n���om�[{�[[��-�r��[���&��G������o!���n���om�[{�[[��-�r���[���&��G������o!���n���om�[{�[[��-�r���[���&��G������o!��n���om�[{�[[��-�rL��[���&��G������o!�2�n���om�[{�[[��-�r��[���&��G������o!�N�n���om�[{�[[��-�r���[���&��G������o!�j�n���om�[{�[[��-�r���[���&��G������o!ǆ�n���om�[{�[[��-�rL��[���&��G������o!Ǣ�n���om�[{�[[��-�r��[���&��G������o!Ǿ�n���om�[{�[[��-�r��\��&��G����p!Ǿ�n��Ypm\{\[	�-r��&\�	�&µGµ�ڂp!Ǿ�nõ�pm2\{4\[�-r��F\��&ĵGĵ��q!Ǿ�nŵYqmR\{T\[)�-r��f\��&ƵGƵ�ڂq!Ǿ�nǵ�qmr\{t\[9�-r��\�!�&ȵGȵ��r!Ǿ�nɵYrm�\{�\[I�-$r��\�)�&ʵGʵ�ڂr!Ǿ�n˵�rm�\{�\[Y�-,r���\�1�&̵G̵��s!Ǿ�n͵Ysm�\{�\[i�-4r���\�9�&εGε�ڂs!Ǿ�nϵ�sm�\{�\[y�-<r��]�A�&еGе��t!Ǿ�nѵYtm]{][��-Dr��&]�I�&ҵGҵ�ڂt!Ǿ�i�u�t2]g4]G��#Lr��F]�Q�!�uF�u�:u!Ǿ�i�uXuR]gT]G��#Tr��f]�Y�!�uF�u�:�u!Ǿ�i�u�ur]gt]G��#\r���]�a�!�uF�u�:v!Ǿ�i�uXv�]g�]Gɮ#dr���]�i�!�uF�u�:�v!Ǿ�i�u�v�]g�]Gٮ#lr���]�q�!�uF�u�:w!Ǿ�i�uXw�]g�]G�#tr���]�y�!�uF�u�:�w!Ǿ�i�u�w�]g�]G��#|r��^���!�uF�u�:x!Ǿ�i�uXx^g^G	�#�r��&^���!�uF�u�:�x!Ǿ�i�u�x2^g4^G�#�r��F^���!�uF�u�:y!Ǿ�i�uXyR^gT^G)�#�r��f^���!�uF�u�:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u������$��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!Ǿ�i�u�yr^gt^G9�#�r��v^���!�uF�u��:�y!��b�yf^�����Q���ܟ�m�uXyR^gT^G)�#�r
���a�uy�y���@^����6^���!�uF�u��:�x!��^�x&^�����Q���ܟvm�uXx^g^G	�#�rʵ��a�ux�x�� ^�����]�}�!�uF�u��:�w!��Z�w�]�x�y�Q��ޅܟfm�uXw�]g�]G�#t�x��q�a�uw�w����]��iֶ]�m�!�uF�u��:�v!��Y�v�]�h�i�Q��څ<�fm�uXv�]g�]Gɮ#d�x��a�a�uv�v���]��i�v]�]�!�uF�u��:�u!��Y�uf]�X�Y�Q��օ<�fm�uXuR]gT]G��#T�x��Q�a�uu�u���@]�q�M�a�u�t��te��0]�q�I�a�u�t��tE�� ]�q�E�a�uHt�Qt%��]�q�A�a�    ut�t�� ]�q�=�a�u�s��s幎�\�q�9�a�u�s��sŹ��\�q�5�a�uHs�Qs����\�q	�1�a�us�s����\�q�-�a�u�r��re���\�q�)�a�u�r��rE���\�q�%�a�uHr�Qr%���\�q�!�a�ur�r���\�q���a�u�q��q帎p\�q���a�u�q��qŸ�`\�q���a�uHq�Qq���P\�q���a�uq�q���@\�q���a�u�p��pe��0\�q��	�a�u�p��pE�� \�q��a�uHp�Qp%��\�q��a�up�p�� \ȫ^�~��o�-��)�e�o!Ǿ���2�[F~�F�e�o��[ȱo`������߲�o��[&�r�X�-c�e�l�[���	����~��o�-��)�e�o!Ǿ���2�[F~�F�e�o��[ȱo`������߲�o��[&�r�X�-c�e�l�[���	����~��o�-��)�e�o!Ǿ���2�[F~�F�e�o��[ȱo`������߲�o��[&�r�X�-c�e�l�[���	����~��o�-��)�e�o!Ǿ���2�[F~�F�e�o��[ȱo`������߲�o��[&�r�X�-c�e�l�[���	����~��o�-��)�e�o!Ǿ���2�[F~�F�e�o��[ȱo`������߲�o��[&�r�X�-c�e�l�[���	����~��o�-��)�e�o!Ǿ���2�[F~�F�e�o��[ȱo`������߲�o��[&�r�X�-c�e�l�[���	����~��o�-��)�e�o!Ǿ���2�[F~�F�e�o��[ȱo`������߲�o��[&�r�X�-c�e�l�[���Ǐ'�s���o�-#�e��2�L�-��7��[�~��o��L�-~9������2�[6�-S~˄�B�}k�e췌���~˔�2᷐c���o�-#�e��2�L�-��7��[�~��o��L�-~9������2�[6�-S~˄�B�}k�e췌���~˔�2᷐c���o�-#�e��2�L�-��7��[�~��o��L�-~9������2�[6�-S~˄�B�}k�e췌���~˔�2᷐c���o�-#�e��2�L�-��7��[�~��o��L�-~9������2�[6�-S~˄�B�}k�e췌���~˔�2᷐c���o�-#�e��2�L�-��7��[�~��o��L�-~9������2�[6�-S~˄�B�}k�e췌���~˔�2᷐c���o�-#�e��2�L�-��7��[�~��o��L�-~9������2�[6�-S~˄�B�}k�e췌���~˔�2᷐c���o�-#�e��2�L�-��7��[�~��o��L�-~9������2�[6�-S~˄�B�}k�e췌���~˔�2᷐c���o�-#�e��2�L�-��7��[�~��o��L�-~9������2�[6�-S~˄�B�}k�e췌���~˔�2᷐c���o�-#�e��2�L�-��7�\ƀ�p��L.�9�����2\6
.S�˄�B�}k�eL�������2A��c���p.#�e��2e�L.��7�F\ƈ�qو�L!.�9�����2R\6*.S�˄�B�}k�e̸������2���c���q;.#�e��2�L8.��7��\Ɛ�r��LA.�9��%���2�\6J.S�˄�B�}k�eL��(�����2A��c���r[.#�e��2e�LX.��7��\Ƙ�sو�La.�9��5���2�\6j.S�˄�B�}k�e̹�8�����2���c���s{.#�e��2�Lx.��7�]Ơ�t��L�.�9��E���2]6�.S�˄�B�}k�eL��H�����2A��c���t�.#�e��2e�L�.��7�F]ƨ�uو�L�.�9��U���2R]6�.S�˄�B�}k�e̺�X�����2���c���u�.#�e��2�L�.��7��]ư�v��L�.�9��e���2�]6�.S�˄�B�}k�eL��h�����2A��c���v�.#�e��2e�L�.��7��]Ƹ�wو�L�.�9��u���2�]6�.S�˄�B�}k�e̻�x�����2���c���w�.#�e��2�L�.��7�^���x��L/�9������2^6
/S�˄�B�}k�eL��������2A��c���x/#�e��2e�L/��7�F^���yو�L!/�9������2R^6*/S�˄�B�}k�e̼�������2���c����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y}��p�?�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐc����.9�;:�����9�n;�������y]ἐ�S�ͼ.3�K����*�u�B�Oö򺬼.)�;*������?���2򺄼�B^W /���k�������x]a���S�M�.�K����*�u�B�O���,�.	�;
������?����2�����^W /��tk��˾�ﺣ��w]Ố�S�ͻ.�K�뎼�*�u�B�O���.�;ꮫt��y<�ڸ�2���]W�.��4kۮ˶�������v]a���ӬM�.ӮK�뎴�*�u�BO���,�.ɮ;ʮ�d��y<�ڰ�2������]W�.��4k��ˮ�뺣��u]Ẑ�Ӭͺ.��K�뎬�*�u�BO��꺬�.��;���T��y<�ڨ�2꺄��B]W�.��4k��˦�麣��t]a���ӬM�.��K�뎤�*�u�B�O���,�.��;���D��y>�ڠ�2�����]W�.��4k{�˞�纣��s]Ṑ�Ӭ͹.s�K�뎜�*�u�B�O��溬�.i�;j��4��y>�ژ�2溄���\W`.��4k[�˖�庣��r]a���ӬM�.S�K�뎔�*�u�B�O���,�.I�;J��$��y=�ڐ�2������\W@.��4k;�ˎ�㺣��q]Ḑ�Ӭ͸.3�K�뎌�*�u�B^O��⺬�.)�;*����y=�ڈ�2⺄��B\W .��4k�ˆ�ả��p]a���ӬM�.�K�뎄�*�u�B^O���,�.	�;
����y=�ڀ�2�����\W .���~�ߺ��跮�[W�-��7���.��K~�~�*�u��B�}��~�ߺ��跮�[W�-��7���.��K~�~�*�u��B�}��~�ߺ��跮�[W�-��7���.��K~�~�*�u��B�}��~�ߺ��跮�[W�-��7���.��K~�    ~�*�u��B�}��~�ߺ��跮�[W�-��7���.��K~�~�*�u��B�}��~�ߺ��跮�[W�-��7���.��K~�~�*�u��B�}��~�ߺ��跮�[W�-��7���.��K~�~�*�u��B�}��~�ߺ��跮�[W�-��7���.��K~�~�*�u��B�}��~�ߺ��跮�[W�-��7���.��K~�~�*�u��B�}��~�ߺ��跮�[W�-��7���.��K~�~�*�u��B�}o��췜���~˕�r᷐c���o9�-'���r�\�-��7��[�~��o��\�-~9������r�[>�-W~˅�B�}o��췜���~˕�r᷐c���o9�-'���r�\�-��7��[�~��o��\�-~9������r�[>�-W~˅�B�}o��췜���~˕�r᷐c���o9�-'���r�\�-��7��[�~��o��\�-~9������r�[>�-W~˅�B�}o��췜���~˕�r᷐c���o9�-'���r�\�-��7��[�~��o��\�-~9������r�[>�-W~˅�B�}o��췜���~˕�r᷐c���o9�-'���r�\�-��7��[�~��o��\�-~9������r�[>�-W~˅�B�}o��췜���~˕�r᷐c���o9�-'���r�\�-��7��[�~��o��\�-~9������r�[>�-W~˅�B�}o��췜���~˕�r᷐c���o9�-'���r�\�-��7��[�~��o��\�-~9������r�[>�-W~��G����o����������o��[.�r�x�-g���|�[�������~��o9�-��+���o!Ǿ���r�[N~�G���o��[ȱo����������o��[.�r�x�-g���|�[�������~��o9�-��+���o!Ǿ���r�[N~�G���o��[ȱo����������o��[.�r�x�-g���|�[�������~��o9�-��+���o!Ǿ���r�[N~�G���o��[ȱo����������o��[.�r�x.g���|\� ����ނ�Yp9	.�+��Bp!Ǿ�7�r&\N��G��p� \ȱo�m�������p�2\.r�x#.g�儸|D\��ą�ފ�Yq9).�+��Bq!Ǿ�7�rf\N��G��q�`\ȱo���������q�r\.r�xC.g���|�\� �ȅ�ޒ�Yr9I.%�+��Br!Ǿ�7�r�\N��G��r��\ȱo�m��-�����r��\.,r�xc.g�儹|�\�0�̅�ޚ�Ys9i.5�+��Bs!Ǿ�7�r�\N��G��s��\ȱo����=�����s��\.<r�x�.g���|]�@�Ѕ�ޢ�Yt9�.E�+��Bt!Ǿ�7�r&]N��G��t� ]ȱo�m��M�����t�2].Lr�x�.g�儺|D]�P�ԅ�ު�Yu9�.U�+��Bu!Ǿ�7�rf]N��G��u�`]ȱo����]�����u�r].\r�x�.g���|�]�`�؅�޲�Yv9�.e�+��Bv!Ǿ�7�r�]N��G��v��]ȱo�m��m�����v��].lr�x�.g�儻|�]�p�܅�޺�Yw9�.u�+��Bw!Ǿ�7�r�]N��G��w��]ȱo����}�����w��].|r�x/g���|^���������Yx9	/��+��Bx!Ǿ�7�r&^N��G��x� ^ȱo�m��������x�2^.�r�x#/g�儼|D^��������Yy9)/��+��By!Ǿ�7�rf^N��G��y�`^ȱo����������y�r^.�r�x;/g���|t^���������y99/��+���y!Ǿ���rv^N��G���y�p^ȱo����������y�r^.�r�x;/g���|t^���������y99/��+���y!Ǿ���rv^N��G���y�p^ȱo����������y�r^.�r�x;/g���|t^���������y99/��+���y!Ǿ���rv^N��G���y�p^ȱo����������y�r^.�r�x;/g���|t^���������y99/��+���y!Ǿ���rv^N��G���y�p^ȱo����������y�r^.�r�x;/g���|t^���������y99/��+���y!Ǿ���rv^N��G���y�p^ȱo����W���y�r^!�r�D;�`��bt^��W����+�y9��W(��y!ǾA��
v^A�+F��y�p^ȱo����W���y�r^!�r�D;�`��bt^��W����+�y9��W(��y!ǾA��
v^A�+F��y�p^ȱo����W���y�r^!�r�D;�`��bt^��W����+�y9��W(��y!ǾA��
v^A�+F��y�p^ȱo����W���y�r^!�r�D;�`��bt^��W����+�y9��W(��y!ǾA��
v^A�+F��y�p^ȱo����W���y�r^!�r�D;�`��bt^��W����+�y9��W(��y!ǾA��
v^A�+F��y�p^ȱo����W���y�r^!�r*��W0�
b^12�P�+�B�Oö�
V^A�+F�Jy�P^��)�F^��+yň�B!���?���+�x��W(��x!��^�x� �#�
E�B/���k�`�$�b^��W�ܟrm����W��+����� �7��]��+�w��B����?�ڼ+�w�yW(��w!��Y[w� ���
��B�.��4k�`���b�]�pW܅<�fm�l��lW��+��
a���ӬM��iW튑v��]!h�x��eW��
�]1ʮP�+��BO�6�
�]A�+F�
v��]��i�v]��+�u��B���y<�ڬ+�u��YW(��u!��Y[u�� ���
��B�.��4k��`���bD]�PWԅ<�fm�l��LW��+��
a���ӬM��IW銑t�"]!H�|��EW��
]1��P�+��B�O�6�
]A�+F�
t� ]��i��\��+�s��By��y>�ڜ+�sq�9W(��s!ϧY[sk� ���
��Bh.��4kc�`���b�\�0W̅<�fm�l��,W��+��
a���ӬM��)W劑r��\!(�|��%W��
�\1J�P�+��B^O�6�
�\A�+F�
r��\��i�v\��+�q��B9��y=�ڌ+�q1�W(��q!��Y[q+� ���
��B(.��4k#�`���bD\�Wą��fm�l��W��+��
a���ӬM��	Wኑp�"\!�z��W��
\1
�P�+��B^O�6�
\A�+F�
p� \��i��[�~+�o��B��~9���V��
�[1��P~+��B�}�h�췂�V�~+��
᷐c� �o�� ���
�B�-��7��[�~+�o��B��~9���V��
�[1��P~+��B�}�h�췂�V�~+��
᷐c� �o�� ���
�B�-��7��[�~+�o��B��~9���V��
�[1��P~+��B�}�h�췂�V�~+��
᷐c� �o�� ���
�B�-��7��[�~+�o��B��~9���V��
�[1��P~+��B�}�h�췂�V�~+��
᷐c� �o�� ���
�B�-��7��[�~+�o��B��~9���V��
�[1��P~+��B�}�h�췂�V�~+��
᷐c� �o�� ���
�B�-��7��[�~+�o��B��~9���V��
�[1��P~+��B�}�h�췂�V�~+��
᷐c� �o�� ���
�B�-��7��[�~+�o��B��~9���V��
�[1��P~+��B�}�h�췂�V�~+��
᷐c� �o�� ���
�B�-��7��[�~+�o��B��~9���V��
�[1��P~+��B�}�h�췂�V�~+��
᷐c� �o�� ���
�B�-��7��[�~+�o��B��~9���V��
�[1��P~+��B�}�h�췂�V�    ~+��
᷐c� �o�� ���
�B�-��7��[�~+�o��B��~9���V��
�[1��P~+��B�}�h�췂�V�~+��
᷐c� �o�� ���
�B�-��7��[�~+�o��R��~9���V��J�[9��T~+��B�}�l��췒�V�~+��J᷐c� �o%��$����J�R�-��7��[�~+�o��R��~9���V��J�[9��T~+��B�}�l��췒�V�~+��J᷐c� �o%��$����J�R�-��7��[�~+�o��R��~9���V��J�[9��T~+��B�}�l��췒�V�~+��J᷐c� �o%��$����J�R�-��7��[�~+�o��R��~9���V��J�[9��T~+��B�}�l��췒�V�~+��J᷐c� �o%��$����J�R�-��7��[�~+�o��R��~9���V��J�[9��T~+��B�}�l��췒�V�~+��J᷐c� �o%��$����J�R�-��7��[�~+�o��R��~9��W2�J\9�T�+�B�}�l��,��W��+��J!��c� �p%�$#�JE�R.��7�6\Ɇ+�p�h�R��9��W2�JB\9"�T�+�B�}�lŕ���W��+��J���c� �q%3�$ƕ#�JŸ>~t8ɟ�َ+�q%9�W*Ǖ�q!ǾA6�J�\I�+Gȕ
r��\ȱo�-��%W���Qr��\)$r�dS�dʕD�r�\�(W
ʅ�ٖ+�r%Y�-W*˕�r!ǾA6�J�\I�+G̕
s��\ȱo����5W���Qs��\)4r�ds�dΕĹr�\�8W
΅�ٞ+�s%y�=W*ϕ�s!ǾA6�J]I�+GЕ
t� ]ȱo�-��EW���Qt�])Dr�d��dҕD�r$]�HW
҅�٦+�t%��MW*ӕ�t!ǾA6�JF]I�+Gԕ
u�@]ȱo����UW���Qu�R])Tr�d��d֕ĺrd]�XW
օ�ٮ+�u%��]W*ו�u!ǾA6�J�]I�+Gؕ
v��]ȱo�-��eW���Qv��])dr�dӮdڕD�r�]�hW
څ�ٶ+�v%ٮmW*ە�v!ǾA6�J�]I�+Gܕ
w��]ȱo����uW���Qw��])tr�d�dޕĻr�]�xW
ޅ�پ+�w%��}W*ߕ�w!ǾA6�J^I�+G��
x� ^ȱo�-���W���Qx�^)�r�d�d�D�r$^��W
����+�x%��W*��x!ǾA6�JF^I�+G�
y�@^ȱo�����W���Qy�R^)�r�d3�d�ļrd^��W
����+�y%9��W*��y!ǾA��Jv^I�+G��y�p^ȱo�����W����y�r^)�r�d;�d��rt^��W
����+�y%9��W*��y!ǾA��Jv^I�+G��y�p^ȱo�����W����y�r^)�r�d;�d��rt^��W
����+�y%9��W*��y!ǾA��Jv^I�+G��y�p^ȱo�����W����y�r^)�r�d;�d��rt^��W
����+�y%9��W*��y!ǾA��Jv^I�+G��y�p^ȱo�����W����y�r^)�r�d;�d��rt^��W
����+�y%9��W*��y!ǾA��Jv^I�+G��y�p^ȱo�����W����y�r^)�r�d;�d��rt^��W
����+�y%9��W*��y!ǾA��Jv^I�+G��y�p^ȱo�����W����y�r^)�r�d;�d��rt^��W
����+�y%9��W*��y!ǾA��Jv^I�+G��y�p^ȱo�����W����y�r^)�r�d;�d��rt^��W
����+�y%9��W*��y!ǾA��Jv^I�+G��y�p^ȱo�����W����y�r^)�r�d;�d��rt^��W
����+�y%9��W*��y!ǾA��Jv^I�+G��y�p^ȱo�����W����y�r^)�r�d;�d��rt^��W
����+�y%9��W*��y!ǾA��Jv^I�+G��y�p^ȱo�����W����y�r^)�r�d;�d��rt^��W
���Ϋ�y9��W)�U�y!��� ��� �2Ul)�U�y!��d�A6d�A��-��J(/侟��>��:�T���W	���s��� S��2^%�r�� �r� �2�k)�U�x!���� �q:�Ԯ��W	���9H�A�t��\K����s��$$� S���]%|r�� �)>H�A�j-ŻJ�.��4k�b�U��j�]�tW	݅<�fm�U���pW����*����Ӭm��mW����v��]%l�x��iW1�*�]5ҮR���BO���*�]E��F�UJv��]��iֆ]Ű�v��J���y<�ڮ��u��]W)�U�u!��Y�u��"�U#�*źJ�.��4k��b�U��jT]�TW	Յ<�fm�U���PW����*����Ӭm��MW���t�2]%L�|��IW1�*"]5��R���B�O���*]E��F�UJt�]��i�]Š�t��J���y>�ڞ��sy�=W)�U�s!ϧY�ss�"�U#�*ŹJp.��4kk�b�U��j�\�4W	ͅ<�fm�U���0W�������� �7��\Ŗ��r�h�JY��y>�ڔ��rQ�)W)�U�r!ϧY[rK�"�U��*%�JH.��4kC�b�U�j�\� W	ȅ��fm�U츊W�����*Ḑ�Ӭ͸�W㪑q�b\%�z��W��*R\5*�R����B^O�6�*F\E��F�U
q�@\��i�6\ņ��p�h�J��y=�ڄ��p�	W)�U�p!��Y[p�"�U��*%�J.��4k�b�U�j\� W	����fm�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}�j�U췊�V�~���*᷐cߠ�o��"�U��*�J�-��7��[�~��o��J��~9���V��*�[5��R~���B�}��Ӏ�o���,��~�o��?}�?��q>�?y���0s�_� 
   g����mn_�      /      x�-�[v�8���b�H${���c���h6M�<�h5C������������y|����ֿ��g~���?�/���=����{������|�����~}�_������������|/~��\cԗ���~�zI���_F}YYF��fT�QyF�fd�}�[��������4*ԨT�b��5*�x�e�����6+ڬh��͊6ݙ�6ݟ�A��͊6+ڬh�R�J5+��>�~�nլT�Rͺ[���ۇ��2+ˬ{5+PT��,QY�bDň�~Ou��o+���K�Ee���;��k�**UT��TQ��RE��WQ�)*Z�m��-*ժT�nӪhk�ۣ�W�B�
�*䪐��ժ��B.o*�*o�ʷ*ڪh�~�k����jU�U��U�VE[mU�U���/�oϊ�-+ZV��TY��Re�ʺuY��eeɺa�M�]^���UV��TY��Re��J�(+P��2+UV��@�����ڮh�R�J�+Ю@��ʲ�Ͼ��ЮT����J����>��U�]o�]�v��u�v�ڷ����J�+ծT�R�Ju*թT�~�����v*ک_ީ{u*ߩ|��vꆝ�w*ߩ|��k���w<$<%<"ꮝ
y*䩐�B��5��w+߭|����w+߭|����g�W�[�nE��V�[�n����V�[��V�[�nE�������zv�>�~��ڭh�R�J�>���{�U�Wo�W�^E{�U�W�^�B���7ꆽ��*ګTo�����U�W�^ݫW��Gj�.�k?Y������t֏'�ǣ�����p�L�=^?���֏������\�|�x�~<a?�k<h?���ڏg��������x�~<f?Ҷ��O�f���%h
��-Bk�4m�H��;�z���B�0�+Ҷ
�B��0���Đ��c�^͗������ Ř��b ��u]~\^`bd�1��Sf����~W�P첤���pE��+�JɹRǺ� ��M��tx|lpt��e�����c�Ɲ�L��!?nƒ�:;9�9:8�89cI�A����Cr�|y�P���]wA?cIN������A������A�����TD��t�� ձ���f��O:�QGN(*���KL�L#�� �@�`ԀT�󒜈���t�+��JZZձ�����ܪc8�ɱ5�5vLۿ+��	6VǺ.?������!�}��@�`؀ؠX늜GN��pr�#'��鏒��D�)��נ�8��ec�cd�d�bu�O�r"m0m���}^���ij�jk�klj�jk�ku�+�Rm\i�6p6PV�:�d�d�buǺ"Փ
jh�hiu���]y�6�6�6�V�zM*�坭?�ם����ޟ҇+>��n�n2n2nҭ�u��ާ���]�ק�>�3nrm~|N���\��w^��hu�� ����0~��]�X6)6��ɲI���Ա�HE�I�ɲɲɲɲɲɲɲɲI�ɯɯ�=g��]w��Lw�OW�_���ӭ�kO�"7�n=]{��t���3������O���nA�]���k�k�j�j�jjB�Y�Y3��I]ͺ���j�d֤դ�T�&�&�&�&�&��249595	5	5	5	5	55�I�I��MBMBM�hjj���w^ߕ�M�MS3�T�T�T�T�<�<�c]�.�Ҥ�����T�&�&���4�4�ɦ:���S�P�P3��ʜ޷�XrNMNM�irjrjrjrjrjjjj�Q�P�Pu�+�j�i�i�i�i�i�U�MS������������$���w^�q�	5�4�4�4��I��iMNMNMBMmkrj�[�V�Vu����Y�YS�������������
6u�ɲI���M�M~M~M~M~Mf��~�ߟF�I�I��~MrMrMrMfMEljb�_�_��ɯɯI�I�ɬ��Mr��#������r2��5p"�N6)6��ɲ��M�M�M�M�M�M�M�M�M�Mmm�����65�I�ɵɵ:���m��y��ީ���Q�J�[p-�\��Bk�ׂk�� Z-t��Zhm��݂nA����X���Bk��� ^�.H��d=N%���������むA�`_�/��ꅡ�`_�/���A��悀A�`_�/���^P/f���̼҅���Ŕ�wA� ]0.��ZL�����T=���~�Z������H������?����z���zЏq�#~=䧗E����_����_��.H���B��B��q��X=B����_�s�B�
��qA��[�-�t�����݂nA��Zh^A��[�-�ZX��8�q�=��#�=�*9݂n��݂nA��[ha��`\0.�t��`\�bA��łw���]�.H�X�.H����XWz�߂tA� ]�.��݂n���q��:�u�I���qa�1t��^t��BG��B;��c��w�^#9�BG��tA� ]�̤҅v���q��`\0.t���6�w���w�����Ȼ����q��`\�-�t����c0.t������qA��[�-t�`\0.��[��)�Yc�t[��-��S\[\[��22��������4�ŵŵŵŵŵŵŵŵŵE�E�e4rm}���/�$�"�=��=�!'���Ŗ�(�(�(�(�(�(��I.�-=nm�l�l�l�lQlQlis˘�b����˖6���ŵŵ5{V��ez^�'f�-��Ÿe|r1n1n�\��"�2>�x���E�E�E���-�-�-�-�-�-���k�kK�[\[�F=c��rmqm��Zt[ܢ���������"�����趌7��T�6�z����z���z��'�z����zz��~�Z�w^?Sڞ���6�z��g�z����z����H�z��g������t�ŸŸŸE�E�E���-�-���8i���5޸H�H�4�ŸE�ŵŲ��w���,[Z�"�b�b�b�2�����X�t�E�Ų��-�-�-�-�-�����9�(.�-�-�-�-}mmmmmm�l�l�l�lQlQlQl�k�eK_[D[D[D[D[��������"�:=��|z��A�-��������������t�ŵŵ��-�-�-�-n�m�m{\t[t[t[t[\[\[z�����2�趴�u{Wf�-#��t�t�tK�[�[�[������������b���ɶŻE�E�E�E�E���-�-�-�-�-�-mn�n��x����sO@W��]~>��6M�$]�.����zI�4��K�%���d�.y��Kޥ�F)�wɻ���Xe�/?��T9��z9z�|�ғ�2S/��z\�/��\R/��F/�zI��^�.y��Kƥ���Kҥ���K�%�nI��ZΞ͗�eI��X�kɲdY�,��$Z-�U��F)S�K�%גkɵ�Z�qK���\K.�\jpI�4z�F/3z!�t��"ȯ�%���Z�.��4���Km.���K�%��zI��^�.y��Kƥ6��K�%�qɸ4���KҥU�z鄜�K�.y��K�%�R�K�%���e�wI��^R/W�u�ٗ�ƣ�w�/{�G����ң�z�w�+>z��W~0{H� �-�w�-��W���^ҋ@���ׁ�B�^B��`r0u��`0ٗ�K�%��}��%��I�d_�/w�Sq�w/W���I�4b�L&�r��y-m����zI��^R/���K�%��zI��^�L�%��zI��^R/�U�N�L���6�w�^�oA�$`0;%����%��I�$`0��4��4L��f�L&��I��������`r0���a�zy��^#?��Iäa�}Iäa�09�L�Ɨ4L&S�K&��I�$`0ٗ�K��������z���]�uN�7QoSoky�}�z�z�z�z�z�z�H�f���6����ٷٷ����;��m�m�m�m�m�m�m�o�������k��������6n�u�M�M���m�m�m�o�o�n�n�t�w�t�t[�ۼۼۤۤ�ܞ�T�=��b����f�f���677777�6�6�6��6�	�	�ٷ5�M�;��m�m�np�o�o�o����������ߎ^�&�8�5�M���mn�o�p�p�}����������ۨ�����v��y-������������� 	  ��������^�`��IK�M�M�M�M�����������mnnnn㜛�����[��������������������٫{�a�7��������8�&�&�&�&�&�&����>�JHMp�ZH�^I��+#{i������K${�d/���4ܽD��H�I���;����+%{��V�{�d���咽^����[�d�d�L�L��ﶱ�M�M������ĭ	n&n&nnnn��k;{qg�������}[��������������ۼ��������ٷٷٷٷٷy�y�y���M�M�ͻͻ}��J��W����^��n�o�o�o�o�ok����z[���fߦަ��7�6�6�6�޷y�y�5�ͻͻͻ��m����g{��]�u����"Zc��z�zG�;�;�;�;�;�;�;F8��w�w�w��þþ���.�x8x8xxx�w��3z�o������w��s8x8xxxxxxx��C�C�������G�;F;�x�x�x�xFg~�+ߟo����h���g���^�<��+��x�x�x�x��������������C�Cã	M�0�0�0�胇�������G+<d<d<d<d<d<d<�˯{�u��v��x�xhxhxtã22kZ�nxt����������ģ'#���������3VVJJ����{�x/w�)y(y(y��V��<�<�<�<|<d<d<f ��x(y��C�C�Cɣ'VVVJJJ�����=W���L�Cɣ'JJ>>>�����C�C�����C�Cƣ-222&&c�������g��|iw/��u�2�����������h����w�F2��O�{	�xz7Oo*�]��������T�
zGAo)�Oo*�]�m��6H�[zoAo.��|<�ɀ�����������G7<��a���%%�Vx�x�x�x�x�x�x�xn�����B��4<��DxWp�p�p�p��xp4�Cã	3�����G<d<d<��1.z�x�x�x4������z���4<��k��5t�K�K�������K�K���]������r�r�r�����ꀗ��}�}W���F>//��&2��b"3//�>x9x9x�w��K�K�K�K�k����Z�r9x	xu�K�˻˻k���
/�.�.���0r�w�Ƙ�cW�.�.��&xywywywywywu�˻��]�]�]�]�]�]�]�]�]�]�]�]���;�c���Ȧ�]�]]��z�n�k�k�k�kW˻t�t�\�\�\�\�\�,�,�,�,�������e�e�]��H��ۍdf�e�e�e٥���.�.Ů��˲��]�]��r��N������������������������}�h�e�e7{�T���kdf٥إص���j|�h�h�h�e�e�e���%���.�.�.ˮ�w�v�v�v�|^�]�]�]��ݻ�z[W���]��w�v�^�]-�R����w�b�b�b�b�_�_�_�_�_�_W������e�e�e٥إ�=�����4��b�b�b�_�_�w��6��'��z�\�#���r�[����~��0G�����8�;�z�\o��-s�g�������f9�����9��b�7�Q�R�R�R�ϼ�3/�.ˮfw�v�v)v)v��K�K���]�]�]]�����z�kW㻺������~���Oo����kӟ\{Zޣۣۣ[�����c�c�c������������ާڙH�G�G�7zwb�L��b�b�,�c�c���N�������������������ǲǲ��=�=kW����}\{D{D{������#ڛ��RZ�=c��e�eO�{z������ڳ^�����is�n�kO�{t{\{F5��4�G�G�ǵǵ��=��E���M������G�ǵ��=�=�=�=#��H�cܣۣۣ��������מv�����������V�K��y�����I�G�G�G�G���=�=㙏h�h�h�h�b�b�\�\�Y�Y�Y���c�c�������������&Z���G�G�ǬǬG�G�ǩ��w��.���������h���C>B=��q�q�q����ۻ{�fy�4��[=*=*=��iX�M�M�M���c�c�cӣң���3�������������=>=���ވ|~���_6=6=6=6===��Q�Q�iU�M�M�M�M�M�M�M�M�M�MO�zf������h�t�ǩw�＾�[�e�������]޽ͻ�y�F����[�{����z�7�^���߽�V�V��������[�{8��^��������~��6p���{;x�/�����v�������*��!      .      x�5�[v�8�����1 �����1���Y��U	Ӳ"/=��������7�ߟ���o������x�^�_�����y~��w�����8���������տ��;�5��Qo5�h������~�fV�Po�k~G����q�zI��7���fV����x�;�z����|����_����`Vӷ;m������߅�`�w<��Ye�*cV�ʘ���]�
f}��ʘUƬ2~��\�ì���^uouɪ�VU�F}Y��*mUU�:g�Y�aT}ˏ�J[��~W��U���ߗUڪ�V����Vu��nV5�Uժ�v������ӮZvղ��]��eW-�j�UˮZ������vԗUծ�v���]��eW_��]U��jWU����W[i�WQ}UdT�Q�E�UU�/�����j��%ܮ��*#��UKT-Q�D��Ë*#��x������[��S�r��O�����T�*�T��S����T�*�T-���TA'���U�G~���S��_��VU��:�9���T}���%��U߭�n�w��[�ݪ�Vݪ�Vi�J�Uڭn�Uڭ�V}�J�Uڭ�U��K�~׫�[?�[E�*�V}����QP�e՗U_V}Y�e՗UZV�e՗�uY�euXViݬj~�@uSV-Yed���98UAV7e�CY�d�������W��*�U��xUƫ2^�Ы2^��^uӫ�^���^t�P=���^����W��*�Ui�z�U}���{��U�S_����������q]��x\�y^�yV�-Ǟ��;��{j�yl�yn�yp�W=5�<6�<2��;�����V����s���9�rU�S|L��0��Pa?��v^�C��t��{?���>�ُ�~��댧|?��9?�3j����dџ��ÃL�{� ��j몚!0(0�j900f8��Ψ�c�[ "
T��u^�HL<���[Ju�`�` aa a0a,� ���z�:11Q���Σb�bpb���B�]ʊj�5z�c7�-�j�Pm�W&"��㺪6LNPRTBDT[�[���ֱ��1�1�1�Qm��?w�0T�A�������j�5�O��x_����@�vj����I����T[gT�����j��Ϋ��w\��K�=�O�����̌�oi3p3x3�3�3�3�3�3�3���3�3�3�3�3���3�3�3��	44�Sm��_[���A�������:�:;�;�9:8��+U�j��w �t��p4Ri����+��h իDH��w�LMK�KL��k�	��vi��!5 55��_|�K[�W9����S?�����O�*�x���?SW��?Z�X��s5�&�&�&���3>b3��:��;>f�k��3>n���ͬɬɬj댏�����>h�k���L}�W�P-����N~M~M~M~M~M~MrMrMrM�d�RlRlJ)�e�e�e�e�e�e�e�e�e��y��f'��0�a:�t���E�E'��2c:�t��$C�ف�M���3S���h:�t��PӁ�MG~M~M~M~M~M~M~��YK�N[��b�bs��b�b�b�_�_�_�_�\�\�\�\�\su���N�ؤ�y&�&˦�3�6�6�6�6�6�ɵ)���y����6�6�6�6�6�6�6�6Y6Y6�)�L�M�M�M	h�m�m�m�B�k�k��U�E�XUm�l���:�B�M�M�M�h�^%�$�d�d�d٤ؤ��&�&˦�4ŤI�I�ɲɲj�5���ӹ[ͧ�wGo5mmJM�c�6�6Y6Y6)6)6)6)6)6)6�ɲɲy�̲ɲI�I�I�I�I�I�I�)IM�M�MajJS����j�Vm�-5smm
TS��\�\�\���T���n�n�k�k�kS��t�t�t�t�r֤ۤۤ�����^㮠�ֽ̮��)sU[g�̸ɸɸɸɸɸ)�M�M�MIl2n�a����&�&�&�&�&ݦP6777_ϼ��fz\���,�趸�d�E�E�E�E�E�E�%�-�-�U[���m������"ڒ�����������B2�ĵŵŵŵ%�-�-�-�-�-�U[�Q'��ŖQ�E�E�ŬŬŬ5UH�E�%-r�9�3�s�`W�v�S[[[��b�b�b٢آؒ��˖D�X�$�E�E�E�E�e�nqmͮ_?�0]���m� ]��-��8��7\�Cu���Ѻ�롺���V���]���ݖt���{��z���H�H�H�H��������趸����몞�=��c���*�Z��J�ݖԶ�����趸���������½A�E�%�-�-�-�-�-	nE����F����������žž%�-�-�U[��ے��������L�h�8�8�$���%�-.��C��;�W�\�[�[�[�[��b�bߺ�$�"�"�"�"�"�2|�8�8���E�E�E�žžeqpppppp�oIs�0�"�"�"�"�"�"�"����|�8��*V��uU�4\4��Ϋ����K�[\���Y�[���S�Au����k�]�\�[�[�[�[�������ݒ���L�H�d�E�%�-�-�-�-�-�-ҭ���=��#�=��c���%�M�M�M�M�M��g�t�t[�ۼۼ��ܖ�6����M�mLrspKv��[���2�&�&��{ߙ����app�����77��L�e�;;;;-�mnnn�m�m9n�q[��4�4�rܦ��������67��y���uU��������ܦަަަޖ�6�6�6�6�6�6�6�6��4�gW��������;;;m�jpp��$�Y��&�y"��Q�-�m&n&nnn�V�������}�}�}�}�g���{B�g�z"�g�x�{B�g���{N�'�zV���y���Ry�j���d�{v���8�{����h�{��'�z��g�z���[��4��������0777���M���=�fnn�m�mYoSoSoSo�n�n����^I�M�͸͸-�m�m�mYo3n3n3nK|�t�t[��rߦ�>=}����O�%�mn�o�oSoSo�������������ۼۼۼۼۼ�rߦަޖ�6�6�6�6�6�6���IϞ��iOu�n�n_u�n�����Q5�z�w�w�w���&�&ݖ��ķ��鶹�e�-�mYo�n�n�n3ng���m����j���an�m�mYo�n�z�z�z�z�z�z�w[���ۼ��ݖ�6�6�6�6�6����ٷٷͽm�m����=���35����&�%��`H|Aàap08��4���� `0��_�/��_�/�2`0������p5K1zf\�c:�Z���zA�0�����f�/����w�� ]0.\�ٓ�=K����,[�w����tA���tA���"x���w�� ]�.fW����U�.�F,�q��`\0.��Ջ��W�9P?݂nA��Zp-��Zp-�\��d\�ׂk!�ׂk!ӅL����R� Z�^�K"Th�F�,X,�.�D�˂e����hA�0\�E�����z��o�zѫ8z�q�k:zQG���et�^����]|<��;�����v�-z�G���nA��Z�qA�0+\�-�\�-�t�݂k��`Y����j/EQ-łb!���fHs�� ZHs���Zp-�D9.�\�����Zp-�r\p-�r\-$� Z�^:���+hz	�ʹr\�-�t��B��݂k!ǅ���q����B�ޅL���w���]�.�mF��^���q]U�L���w���]�.H�����]�wA� ]�w���]�.H���!���w���]�.x�W1����V3�r�^�d-�ݎ�wwwwwww�v�v�C�C�#��3w��!�!ݑ���㎔wHwwwF/��W��J͌;R�!�!�!�1�y�s��Y�P�P�P����z�h������|w�y�)��<<<Rޡ�ᙽl�׍��1��}�������������������8�������!�!����|w�w�w�w�w�w�w�wV�kӫ�;�6��Q�cT�P��t�w�H����ݑ�������� �  �w$�û#�����U[��:wwww��C�C�c����0���o����N��q�q�q�q�qG�;�;�;܉^1��腃�hP�qG�;�;�0��4w�w�w�w�w�wd���wz�c�u�Ŏ�ڱ�;�zG�^��K{�c/z�U����=���^���zT���Q���>��G�^�k {�c/��"����t�}�z�z�z�z�zG�;֢�i��q�z�w��^�k3{q�
ywxwxwxwxw��C�#��������㖇q�q�n�n�X������LwHwHwHw�ו���^Y������^b� �!�a�a�1swwwwd�C�#������������0����<\�_�����W�����R�������Jg�\�\W.����̺̺�ٕ�.��_W��Z�[=v�uG/��5��(�W�Z�ˬˬkn�����Jj�\�V�VWF�������e�e֕�.�.�.�.�.�.�.����ˬˬ;{�jg/#V-�.���v9u9u�O^Z]Z]Z]����r�r��k�V�V���՝]���.���v�u�u�u�u�K��z��r��@�h�L�+�]����\�\���eٕ�.�.Ů�vYvYv�F^�]��������D�D����%�ݽd[o�^��K��,�]�]������������������q�n�e�eW^�,����f�.ˮ�vYv)v�W���_�\�\W^��������������+�u�uͻ]f]f]��2�2�2�������Jm�Y�YWj��W��Rx5��r�r�r�r�����e�e��U�R�����z������^�ߋ�{�>�n������_j�������^�߫�{�>��W���L����U�������B~��R��k�e�b�b�b�b�b�_WR����ڥؕ�.�.�.�.�.�.�.��9�K����w�mr]�2�2�Jg�\�\�Y�Y�Y�Y�Y�YW:�̺̺̺F#/�.�.�.��tv��+�]���ѻ#�w\�#z����J�,%��XR,%�dYJdI�$Z�}K��D�\K����Z�eI��[�-�tK��\�rY�.I��K�%�RF�ѻ;z{����+}�KspI�$]2.��$]Jg)�%�t)�%�qɸd\Jgi42���]�.y��K�%�r�������Qz?��ں�6�%ђhi42��RXr-��\K�%גkɵ�Z-Y�,KY,e�$ZR,�����ȕRX�+���Jf�,��X�bI�4�K��\�,K�,Y�,K��\��!�kɵ�Zr-��DK-��DK�%�r�F=̲dY�,Y�,K����$Z-��DK�%���dr-��\K�-��R[Jmɸd\2.��Z�.I��Kƥ�����J�']F�[�K*�גzI�$]�L�%�wɸd\r-岔�R.K�%גkɵ�ŒkI�$Z�_K),���wU����*�0�RK�%ݒnɵ�Z����=Y��kɵ�Z�L�%ݒnI��[�hɸ�ђtI��Ԓwɻ�]�kɻ$]�.����[��%�RFK�%�w��v�ު�;�薽Q�w��V�ަƵ�Z��5�%גk�;�z�גk�[ٸ����w�}��z?[ohS�D�tK�%ݒni�-��K�,I��K�%�tI�$]�.I��K�%�R.K�%�R:K�,I��Y�.y�����f�ލ���z+��xR�c�c�#�#�#�#�#�3��H��@>�=�=�=�=�=c��t�t�t����#�c�cܣۣ�ߙ�kF�T'ݞ�$�ǵǵ'�=�=�=�=�=�=9������qO�{�{�{�{r�c�cܣۣ��ړ����forT�콎��Q?KsϨ�ޣޣޣ�3������������=>�=�=�=�=�=�=㐏�O�{2�#�����4��������.m]U'�����d�����G�G�'�=>>�=9��ﭮ�~����������x�x�x�H�H�v�&흤j��#�#���3&��������������������C>�=�=�=�=�=�=�=����n���ڋ��W����������O�G�g�����n�k�k�k�k�k�hOj{R����ړ���������-��;��*���ړ������yߙ�ЫW��������X�X�X�X�X�X�(�(���������̲=�������T���{�{s�ʭ�|,{,{,{,{��#�3��������������X�X��ǬǬG�G�����w7��f}Ȭכ���zvo��׽��w_��kN��{ݛ�{�uo���lzlz��7b�N�ފ�{���׻�{'vo��ؽ�ۈ�;��w�^��V���������������      0      x�-�Qz�6�.�믃9OD�9���8�¾(�(n
I�W^��������'��������������~�������^�����߿�����}}~���q����qy���������{�~�{�����������}��WHW�y��)�������~��ˮ��~C��;v���/��������=���>�U}w���҅}]�o�~ס�[]�o����7��Օ��fk��\5���]]�o�=�k^]����ܵ�Q��{J���������]]��rW_�u�X�����宮tu��EF]dt��EF]d����4���J��n��1�~O�"��n�=�.2����]it��EF5_���EF_��J�+���ѕ����+�.2��gח�|��ˮ/���^�+/�r�מ�W_Η���K ��fW�]iv�ٕf_��@v��Ef���ҲK�.-����o���]���v�����l��]���v_�ݥ��ɻ��]����ߍ���oH�0w�����q�E�}w׷����~�����v׷��ӗ�t�����"O��ӕ�5C���]��N_��E�.���=]��JOWz����t���=~��6w��/��x��ӕ����+=w��=�_��k>]s�oO�ͣ��7����&W��ꚫ˭.����"���.���ꪪ�����ׯ��ti���K+�8}��뫮������뫮���ۗ��ͣߛT_�ۗ�v����]��"o_�ۗ�v�7����E޾��+�]�����ݾ��˽]��ro�����.�z���Oz��"�"�|�{������ח�uͯ�}]�������.���}}a_���ׅ�.��<�=�����_���.�uͯ�}]����_��}]��r�7�.�u�o�ۻ���G���y��c͟��?o��ߑ~�7��p���_8��x�����}�o�;��������w�?o����?o�������y������������G�!�S� ��y�����~�jG��x|�=Nc�uS�:��:�����L���-t�[߿#����U]*�R�a�#8eS��Lu��CӷT�L�>4}˕�ҷT��J_��p�����҇��K�>2}h�b��� ��P-�>L}��P3�>^}����!��>�Oj}������C�Ǫ�Og��O�j}����1��G�[=���9��_/��؇��a=����<Ͽ���]�t����Kg�΂l�>�}p��w�q=���x�l��}۽�Έz�>�}��q��Έ{=�s�O���̹lw�?~챿�@�cq^@���S~8���B��?0~d챏8.~L�x���=����j�A��e�g��G�?�������Rg���?4~l�1�}��.�S��������</{�g���o��;�&d���>�rB�8G~�/\~��1�}�Y���0�w����ѳ�~�����>��~�~���C?�~ ����{�Y���~��w���=��{j�g�s��_���G��??����U�T�ӏ�=.����?����	�g�ҏ�ߛ��=�21dr��I"ROOOOCCCCן8�'��t����t�����w�P�D�����?�O8�����i�s���sa�b���c�9�aa��8���]�%��ǝm�\�����D���Έ���KH\�]�]�]2�����<�}w��DÉ�	�����I�΂�k����ɇ��cQ���	�^�'(NH��81qr���*��8Y��k"�rt^t^t^t^t^t^\^\^1��Y�+������ˋˋˋˋˋ�+���\������$�%R.:�p.�^�^r�,�����t�H��������x�x�x�H�H�rҺs�2���W:Qs�z�yqyqy����=�����΋΋ˋˋˋˋ�K]t^�����"�"�I{�g:�=����k;�=���D8#:/:/./././"/"/uqyq��nf8��G����cq��$�%�.:/�u�y�yɪ=���z�i���Le�(�����H��2�����ԋԋԋԋ�=vW��u�a��΅ڋڋګ�������x�c��b�b�y��л8�jD�r^�^b�"�"�b��~/���������c?�I��ڋڋ�K�]�^�^�^�^�^�^�^�^�^�;-��ם�;r���,������%/�/Ix���K^O�L_L_4_4_4_�������������{�ﾐ}�}=g'1/�/��8��9ӹ����w�;x����_�ނ�A��|P>�吗�O���A� ~�=�|�߃��� {��!)�����Zzd���|�ك�=Α�BNrZ�z�|�߃�A�����������A� {0=�{����������`z0=dꐩ�������{�w���{�=��|��ƚ��tT���,��|P>d퐵����XΈ��#����A����CC8�|��t��5<��iOwx�����4��1��3�^�kO�X��#�&1��1-�i3=d�6��Q<��iO�x����5=�i�=������>��$d���>�,��c���EN���'{Hߡ�d�����A��{�=��|�=�d��f�߃���`zH�A�y��!kك��L�Ǟ.��i{Z�΂�A󐵃鱝��s�=�s�{�=�d�;$��!k�C��ك�A�А�;�:�A��������{��g�ο#�L��=��c��΂�)|y<�|�߃�A� {���� {�=��x�=�L�Ӄ���`z�<t���Q3��^�̧�\����C6�ك�!�ك�����C*�߃�!�Ӄ����x�c��L]� {0=4��졫d�<�|�;sB3)䎐=���=��!�Ӄ�!�ك���`zH���`z0=�rz0=�������x<RyP;�������x<�Lky]��ݚ魙��;�3��g��z�<9�O����4O�'͓�I�y�<i�4�?�_LO��dz2=e�${J�I�${ꄧ�|O���ǟ�l���I��ܓ����{�=i�4Oi=��4Oi=��LO����4O��T�O�'Ǔ�i79�O�'���mr<	�O���[�O��)G5�;%�dwR;���N9=ٝrz�;ٝ�x�� x.�s<	�z<	�����=�O�"v'���I��vR;e�vR;cfMg�ԕg��dw�;ٝ�N=�$x��I�ʓ�I�$x��I�$x<	�O�����į.z�����ϙ��_v'�s��g
XB�3�3<s�3�\�3<��3���3<��O����a�'�SZ�t.3M<��L���=��4O�'͓�I�$x<e�$x<��c����Le���I��v�:���'Oj'�S*OS���dwR;e�dw�;ٝ�y<ٝ�N=��S*Oy<���Nj����9�3��~�L�;j'���)�'���I�$u�BN^'�����dt2:��NF'�Ӽr��)}'���Y�?�tN:'�S�NF'��$sV�;��W?���)�'���Ys.~�y��xR;���NR��2x��I��u�Nj���Nv'���I��vR;���x�:I���;�#fy�3����-�v�Y-�,���Nj��z�:e�4%��N<���N^'���)�'�SO^'���tR;��rwJ���dw�;ٝ�N<߬�pFo����>����7�A�c�o\�k5�7�7�7�7��~���������&�&�f���7�7�7���I�I�I�������Y���{�^ڲW?��Ľ��ҷeV��[�[�B�-koRoRo:o:o:o:o:o���.�&�&�&�f�f���7�7�7�7����׬�Y�����vo�{||�{�{Kܛݛݛݛ�[�}S{S{S{�ovo|||��[�}��{�y�o�������&�&�6���M�M�M�����(���;4�4��h���7ͷ<�i�i�i�	�%�M�M�M�M�M�M�-�o�o�ovovo��-}o�o�o�����q?g�I�:)��ovo��M�Ǿ9�9�	�ٽٽٽ%�M�M�M�M�M�M�=K�ؽg��,��5_���U_��K�}��Y�5��fٗ��5_�}9�k�f�3��_��k�}ͺ�Y�%}�Y�5k��{!��Y������������M𭻾9�9�9�9�9�%�-�o�o�o \  �o�{�Y�6�f��,]����7�7�7�7ӷ�&��c�d�d�����7�7ӷ��f���������7ӷ�M�-qo�{�o�o�o��Uw��n�ݩ�����:���]�ߑ��a�����������7�7������-qovovojoj�����������e���-qo�{s|s|�YD�tg-�,&t�	�	�������M�-wo�o�{�|�|s|s|s||�{S{S{�ڛ�[�|S{S{S{Kܛݛݛݛכ���:Hw��r�Y������YiM��}�}�}x}x}������������c~��?�>R������a������ڇ�������ׇׇ݇݇�G��P�H������sVx:#��������#k�����������������������G?|?z���G��������������g��Uw��g��?������G*?L?L?4?4?4?4?���E?4????�>��!�Y���^M�,t��O8�����������w�;???��!�!�!����Ǐ�������͏T~�~h~8~8~8~~$�#�����������Eĳ�X�2�!����������������C�c�ڑ�����}d���#k::Y�0�0�0�H܇ԇ�gϪ�Y�<�U��g~��#}^^��P�H߇݇ڇ�G?�t[���
�Y�=+�g�6����a�a��5ݳ�{�q�:�Y�=��g�,�uܳ�{Vr��[�=+��׿�����,�u�?��{�w��Y�������#�	��%?4?������������͏�������Џ�~h~h~h~jV���fm���͏l~�~�~d���#��y�0�����I�0������ǜ�a�a�a�������ӏ<~�~�~h~8~�,�ww��*{�s�ܩ�] ��������a��9?�>�>�>��a��'?f����}~~�}�}�w�v������� 0�T����M]��w���%wǋ�%w͋�E��x�������vQ�x]�.R�K�H]�.F���E��fW��X\��%M��w��(\.��w��[�-�mK�.�m��Eے�K�.�y��e�R��[�-�֚�c�;қ3\O�s��Eے�K��$�bn1��U+=��o����o���ܒ�����bnѶh[�-��bn�y��%5s{�#��D��Eۢm��T�-�mK��R+�y����bn�s��%;��\���s�:gn��E�"o���e��eF��[�-���	/����)3�d��ˌvI��⒦K�..�K�."�]D.	��\tq��\\..���%;���E�2�]沋�E�s��..��ȵgϏ�e��rq��\\..����⒣���⒣��e�Zq��\�tY�V2u1��\\..���E�pQ��Ë�E�p�ٻ�,�'/���%A����2�]�-���[��?��f��4].��bq͆��q�⚍W���5��\�k6b�N�يE䒲K�."�lʚ]Y��e9��fg��mY�/k�dQ�d풲��%k���%k������r��E�sI���bt��K��H]�.R���E�"u��]��;�̜ם�f��̝bt1�d�"u��]�.)�tˋ�%k���e���]��E��b���vQ����3/v���E��vQ��]��7�f�����/���l���s��Q�����:G�K�K�+k_F_F_F_)��_Y�R�R��ڗ�WʾԾV�_v_v_}�7~��/�������W���l��}���ť�����/ӯd}�~�~�~�~%�K�K�K�+Y_�Ԯd})e���+S_=�K�K���K�K�K�k}������������/����q62:#�_�_i���J�W��d�d�4�4����!�d�d�������/�/�/�/߯L}u�/�/�/�/�/߯d})�~cvb�#1{1g3�;B�K�+S_�_��K�K���K�K�+Y_�_�_�_�_����J֗���������W��港d}�~�~�~%뛳�t����R�"__�_�_�_�_��2�Z�v���������~u�/�/�/ǯN�����/ӯ�}��/�/�/�/ӯ�}�~�~�l�u$�g��l�U?�/�/ӯ�%�e���/�/�/�/�/��d}9~9~	~����������+__�Ӯ������������������/���~��l��M�΅�������Y�#��e��������!�4�4������2�e���/�/�/��d}9~9~9~k�*�6e�����J�w�R�_v��X=;��}g��찞-�����z�Z�fk���n=��g��l����ԾԾ��z�]Ͼ��x=;�g��l����zvZ;��wv\��m�,}��+~y}y}y}I}I}I}}�n_]�K�K�K�K�+k_Y�R�R����_F_��kF�2���$��7��m�����M�K�������4�����������H�H�H�H���$�G�G�G�G�g^������?Y���I܏�Oo���O�~�~�ly�=��园ﶽS������������?j?j?j?^?R?{Ğ<�x�H�H�$���'�?F?���������Iߏя�O���������q��i�я�O�~t~��c������	"��Ϝ�#�#�#򓻟����[S����������������G��i�q�y�*���������������'}?.?��O��q�q�q��u?.?������������ݏяя�O�~\~\~9���Ud�����(��,��я�O�~r�#�#�#�#�����N�c������H�H�H�������V?F?:?:?����I܏яΏ�o��@��@���O�~t~t~V�=:?:?���?F?F?:�=�����#�c�c�c�c��	\~f������t������ߙO��|�-�������������������$�'q?.?)���q��x?:?:?Y�1���Iُ�O�~t~t~\~:ޏΏˏ��Z�W�I~����������G���������'G?�>�����������i?�>�>�>�>�>I�����~�yߝ�Q-m�t������g�̇����'�0���0�ͧ��ǜ���g�̇�̧������G�p��G��'�p�����o>�d>�d>�d>�D7�1�����'�ة��7�eE`���׿����������*i      +   5   x�3�t��K-IM��2���u��2�J�)��2�4q��2��/�H-����� ,;     