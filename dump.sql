PGDMP     	    
            	    z         	   bdcourses    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16397 	   bdcourses    DATABASE     �   CREATE DATABASE bdcourses WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE bdcourses;
                postgres    false                        2615    16779    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false                       0    0    SCHEMA public    COMMENT         COMMENT ON SCHEMA public IS '';
                   postgres    false    5                       0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                   postgres    false    5            �            1259    16780    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false    5            �            1259    16802    courses    TABLE     �  CREATE TABLE public.courses (
    id text NOT NULL,
    name text NOT NULL,
    category text NOT NULL,
    teacher text NOT NULL,
    description text NOT NULL,
    image text NOT NULL,
    active boolean DEFAULT true NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updateAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.courses;
       public         heap    postgres    false    5            �            1259    16791    user    TABLE     z  CREATE TABLE public."user" (
    id text NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    active boolean DEFAULT true NOT NULL,
    admin boolean DEFAULT true NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updateAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false    5            
          0    16780    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    214   �                 0    16802    courses 
   TABLE DATA           s   COPY public.courses (id, name, category, teacher, description, image, active, "createdAt", "updateAt") FROM stdin;
    public          postgres    false    216   h                 0    16791    user 
   TABLE DATA           c   COPY public."user" (id, name, email, password, active, admin, "createdAt", "updateAt") FROM stdin;
    public          postgres    false    215   �       v           2606    16788 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    214            {           2606    16811    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    216            y           2606    16801    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    215            w           1259    16812    user_email_key    INDEX     I   CREATE UNIQUE INDEX user_email_key ON public."user" USING btree (email);
 "   DROP INDEX public.user_email_key;
       public            postgres    false    215            
   �   x�m�K
�0��)z�ɶ��'�UWm�O�����3��"��;Bm�gP�֦6����3��i��a�h�H�]���<��K@����u�)�<�Ut�0�-�_e������������i{���H�<o�<�_t0�         L  x��T���6��O�X.�C��:ǉ� �^ �5Cr�aN"u"�F�46R��I ��@~� �s]�]�p�3ߏt���9 j.P�\	,x+��j�6o�<{��#w�Y�bqFt�6������������}�e޿Y�2�~���~�g
���y�����`��l�tg?�-]�p ������hT����Âl�!Xe���mҙ�4X�o����*�Y���`�̙�[�gڏא�=����/��E��A`�����Yo�^�M%:�tS��h�j�����h�� ���^��ey��)�Y��%/r^v��7ew#���O�wF�Pv}����\ �rT\VM�E�5�Mv�?h�s?N���a�J[�d�f���9��+IB��[Y��Zve��j�>��/�F��83��3�DJx~<�.�>q��:^�b4�����wjC�P
f�U��hQ��$'d�ub�ٰ>��������H%#e��e#*�f�6��nZ��~z��A�M�hCUb�
)y)u��y˵*���$�dEض��M���������ݡ*ʧ�Z�J���i�R�i9(�U����"�h�@�st�e߄8/q��Di��%��B����ܝ�~~ ��b|��u��n���-yQ��$���8_pN���1��`C���ò�ɓý��^�l�@�
��3��"��W�H��K������l���	]H�Nz'���B#u��@��A'��G��=�I��v��O�O���{C9�/6��>mL*�Q٭I�m��?��N�#Iy�͝�E-�Y^�俦��&�R�O���9�{�����w]%yeȰ�b[�zX����M��R<��v��G�x<         N  x�u��n�0�5y�.����ﬆ�@��\à�$NLJ ܞ~2�iG* /���,>��QgS("nE:�) Zk!��4Hl�E�R#Ɋ�h�c�
��ͪ��#%���rx����mK���)n|��Ί�����#�s��x���aݚ<E�Fi_<  ���
F���^�9��FB+�����P
)qbT$$s����>9�_����Wý��I��a���ԔǵQ����ƛTՆy�.pE�
�"� s/���LS!g���4p( ��5F���8u�|�|n�zt���qD%ug��p��M���A��T�3��:�<,�~~���%����{�1-,�HF�@�2��p�0���L~#�;���N�O}�Ξ�F�:�M�`�<�z>i��K��};m��*�4\�zg{��HEp'�(�[U@�?5d"bQK�bBA�����q)�k��%]�U��:�s^�����3�ή�\�t~!�[>�=R��~rٞ�[bS�sE�̽@�(��k�"&D����E@U�b�-3�j{i�j�9;��1]����C�����wڟ)�X�Y$�꥝ �ٿ�椨-6��+�~a��~��"�     