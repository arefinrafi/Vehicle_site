PGDMP     :    8        
    	    x            vehicleheaven13    12.2    12.2 ~    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    40966    vehicleheaven13    DATABASE     �   CREATE DATABASE vehicleheaven13 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE vehicleheaven13;
                postgres    false            �            1259    41094    account_category    TABLE     k   CREATE TABLE public.account_category (
    id integer NOT NULL,
    type character varying(20) NOT NULL
);
 $   DROP TABLE public.account_category;
       public         heap    postgres    false            �            1259    41092    account_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.account_category_id_seq;
       public          postgres    false    219            �           0    0    account_category_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.account_category_id_seq OWNED BY public.account_category.id;
          public          postgres    false    218            �            1259    41113    account_imagefile    TABLE     �   CREATE TABLE public.account_imagefile (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    "imgID_id" integer NOT NULL
);
 %   DROP TABLE public.account_imagefile;
       public         heap    postgres    false            �            1259    41111    account_imagefile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_imagefile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.account_imagefile_id_seq;
       public          postgres    false    223            �           0    0    account_imagefile_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.account_imagefile_id_seq OWNED BY public.account_imagefile.id;
          public          postgres    false    222            �            1259    41102    account_vehicle_info    TABLE     A  CREATE TABLE public.account_vehicle_info (
    id integer NOT NULL,
    brand character varying(50) NOT NULL,
    model character varying(100) NOT NULL,
    year character varying(10) NOT NULL,
    mileage character varying(50) NOT NULL,
    engine_capacity character varying(30) NOT NULL,
    fuel_type character varying(50) NOT NULL,
    max_power character varying(30) NOT NULL,
    max_speed character varying(30) NOT NULL,
    torque character varying(30) NOT NULL,
    fuel_consumption character varying(30) NOT NULL,
    door character varying(20) NOT NULL,
    drive_type character varying(20) NOT NULL,
    seats character varying(20) NOT NULL,
    wheel_base character varying(20) NOT NULL,
    weight character varying(20) NOT NULL,
    length character varying(20) NOT NULL,
    width character varying(20) NOT NULL,
    height character varying(20) NOT NULL,
    fuel_tank_capacity character varying(50) NOT NULL,
    color character varying(100) NOT NULL,
    no_of_cylinder character varying(30) NOT NULL,
    description character varying(1024) NOT NULL,
    price integer NOT NULL,
    showroom_name character varying(50) NOT NULL,
    address character varying(100) NOT NULL,
    contact character varying(20) NOT NULL,
    image character varying(100) NOT NULL,
    user_id integer NOT NULL,
    v_type_id integer NOT NULL
);
 (   DROP TABLE public.account_vehicle_info;
       public         heap    postgres    false            �            1259    41100    account_vehicle_info_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_vehicle_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_vehicle_info_id_seq;
       public          postgres    false    221            �           0    0    account_vehicle_info_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_vehicle_info_id_seq OWNED BY public.account_vehicle_info.id;
          public          postgres    false    220            �            1259    40998 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    40996    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    41008    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    41006    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    40990    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    40988    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    41016 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    41026    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    41024    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    41014    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    41034    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    41032 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    41157    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    41155    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    225            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    224            �            1259    40980    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    40978    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    40969    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    40967    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    41188    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �
           2604    41097    account_category id    DEFAULT     z   ALTER TABLE ONLY public.account_category ALTER COLUMN id SET DEFAULT nextval('public.account_category_id_seq'::regclass);
 B   ALTER TABLE public.account_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    41116    account_imagefile id    DEFAULT     |   ALTER TABLE ONLY public.account_imagefile ALTER COLUMN id SET DEFAULT nextval('public.account_imagefile_id_seq'::regclass);
 C   ALTER TABLE public.account_imagefile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    41105    account_vehicle_info id    DEFAULT     �   ALTER TABLE ONLY public.account_vehicle_info ALTER COLUMN id SET DEFAULT nextval('public.account_vehicle_info_id_seq'::regclass);
 F   ALTER TABLE public.account_vehicle_info ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    41001    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    41011    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    40993    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    41019    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    41029    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    41037    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    41160    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �
           2604    40983    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    40972    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �          0    41094    account_category 
   TABLE DATA           4   COPY public.account_category (id, type) FROM stdin;
    public          postgres    false    219   +�       �          0    41113    account_imagefile 
   TABLE DATA           A   COPY public.account_imagefile (id, file, "imgID_id") FROM stdin;
    public          postgres    false    223   l�       �          0    41102    account_vehicle_info 
   TABLE DATA           Z  COPY public.account_vehicle_info (id, brand, model, year, mileage, engine_capacity, fuel_type, max_power, max_speed, torque, fuel_consumption, door, drive_type, seats, wheel_base, weight, length, width, height, fuel_tank_capacity, color, no_of_cylinder, description, price, showroom_name, address, contact, image, user_id, v_type_id) FROM stdin;
    public          postgres    false    221   ��       �          0    40998 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   ��       �          0    41008    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �       �          0    40990    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   5�       �          0    41016 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   ��       �          0    41026    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ظ       �          0    41034    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ��       �          0    41157    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    225   �       �          0    40980    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   /�       �          0    40969    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   ��       �          0    41188    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    226   ��       �           0    0    account_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.account_category_id_seq', 5, true);
          public          postgres    false    218            �           0    0    account_imagefile_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.account_imagefile_id_seq', 34, true);
          public          postgres    false    222            �           0    0    account_vehicle_info_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.account_vehicle_info_id_seq', 5, true);
          public          postgres    false    220            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    224            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
          public          postgres    false    202            �
           2606    41099 &   account_category account_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.account_category
    ADD CONSTRAINT account_category_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.account_category DROP CONSTRAINT account_category_pkey;
       public            postgres    false    219                       2606    41118 (   account_imagefile account_imagefile_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.account_imagefile
    ADD CONSTRAINT account_imagefile_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.account_imagefile DROP CONSTRAINT account_imagefile_pkey;
       public            postgres    false    223                       2606    41110 .   account_vehicle_info account_vehicle_info_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_vehicle_info
    ADD CONSTRAINT account_vehicle_info_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_vehicle_info DROP CONSTRAINT account_vehicle_info_pkey;
       public            postgres    false    221            �
           2606    41186    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �
           2606    41050 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �
           2606    41013 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �
           2606    41003    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �
           2606    41041 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �
           2606    40995 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            �
           2606    41031 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            �
           2606    41065 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            �
           2606    41021    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            �
           2606    41039 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            �
           2606    41079 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            �
           2606    41180     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            	           2606    41166 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    225            �
           2606    40987 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    40985 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    40977 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203                       2606    41195 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    226                       1259    41136 #   account_imagefile_imgID_id_432cb120    INDEX     i   CREATE INDEX "account_imagefile_imgID_id_432cb120" ON public.account_imagefile USING btree ("imgID_id");
 9   DROP INDEX public."account_imagefile_imgID_id_432cb120";
       public            postgres    false    223                       1259    41129 %   account_vehicle_info_user_id_1d9006ca    INDEX     i   CREATE INDEX account_vehicle_info_user_id_1d9006ca ON public.account_vehicle_info USING btree (user_id);
 9   DROP INDEX public.account_vehicle_info_user_id_1d9006ca;
       public            postgres    false    221                       1259    41130 '   account_vehicle_info_v_type_id_d9befeef    INDEX     m   CREATE INDEX account_vehicle_info_v_type_id_d9befeef ON public.account_vehicle_info USING btree (v_type_id);
 ;   DROP INDEX public.account_vehicle_info_v_type_id_d9befeef;
       public            postgres    false    221            �
           1259    41187    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �
           1259    41061 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �
           1259    41062 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    41047 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            �
           1259    41077 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            �
           1259    41076 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            �
           1259    41091 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            �
           1259    41090 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            �
           1259    41181     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213                       1259    41177 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    225            
           1259    41178 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    225                       1259    41197 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    226                       1259    41196 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    226                       2606    41131 P   account_imagefile account_imagefile_imgID_id_432cb120_fk_account_vehicle_info_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_imagefile
    ADD CONSTRAINT "account_imagefile_imgID_id_432cb120_fk_account_vehicle_info_id" FOREIGN KEY ("imgID_id") REFERENCES public.account_vehicle_info(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.account_imagefile DROP CONSTRAINT "account_imagefile_imgID_id_432cb120_fk_account_vehicle_info_id";
       public          postgres    false    221    2817    223                       2606    41119 J   account_vehicle_info account_vehicle_info_user_id_1d9006ca_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_vehicle_info
    ADD CONSTRAINT account_vehicle_info_user_id_1d9006ca_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_vehicle_info DROP CONSTRAINT account_vehicle_info_user_id_1d9006ca_fk_auth_user_id;
       public          postgres    false    213    221    2798                       2606    41124 S   account_vehicle_info account_vehicle_info_v_type_id_d9befeef_fk_account_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_vehicle_info
    ADD CONSTRAINT account_vehicle_info_v_type_id_d9befeef_fk_account_category_id FOREIGN KEY (v_type_id) REFERENCES public.account_category(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.account_vehicle_info DROP CONSTRAINT account_vehicle_info_v_type_id_d9befeef_fk_account_category_id;
       public          postgres    false    221    2815    219                       2606    41056 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    211    2785    207                       2606    41051 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    211    2790                       2606    41042 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2780    207                       2606    41071 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    215    2790                       2606    41066 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    215    213    2798                       2606    41085 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    207    217    2785                       2606    41080 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2798    213    217                       2606    41167 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    225    2780    205                       2606    41172 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    2798    225            �   1   x�3�t��N�2�t*-�2�tN,�2�)*M��2��/�H-*����� ��
@      �   2  x���Ok�@��]b�o�Z-
!�b),�J�BM�X��7�3��Y��,�w��Ԭ�n��-�R�\�\�驪luo�q첧���_��khgJ贸��I��۴���K�;�i��e/��c�o�����������:ZT�DY�D�tcѨt�Єe��@6ΚMX;k*4a��Y�	�7*Q3����Ɵ������p�S�R��#5iD�8d ij���1p�!����5���=p�BD�|JX�����m^֛�o��z�������#N�3��#Π�nqu��s�"�@G�q������Ϛ      �   =  x��W�n�H]3_qw�4(����v��� F8F{:@(�%�F$��"m�W��Y0���}J�dέ�lO��j/�YU�uιW��v܉aP�i�z�zq��(��0�7^�iHE�}�e��Ƌ�$_Q����
C껆^G~.h�Ƌ����¶hR�����@?����~�;ev�w^��}g���摵{'wg���<�M|w����7�q���y��&	^aO�X�"��(��0���qL;Q���D�'іt�v�@o�Qªwbh�$=�~�dƢ���m��B��������)C�2Dʐ��%u���m!�ѭd����2g�z�S�͊C��R�$۝j%_��E��%m��#���F��w�7��nl:Cz�����H\�{#;������A1��������'�{Y�v�ᱽ���AA�:D�U��hI{U�]/C5g��ek���埽܍��~��1	�vo8i����(i4���
�`ZڪM/�A]�睌�~���w[�8�٧-J�������e�f�e��^#T�V��I3��8T�a�e��M�ΜWQ�n�E��U�����i�z��yv��Y@dπY���u1��X%��'<g�Es����"{�r���,�� ΃�bx�� �I2_��],y��RF�*�rFj�:��!p�e�-���rN+ԭ��@�ZoD�����^�t}{B�'����F��}g����p��^I_+�z�Wo�v�f;��^J��g��lq%���|v ��Rb�8��HQ��yc��r,����Ƒg;�ZB�����绬u�����h�/��|����*q/i#%��r3G(8�졒����{Y����,W�_]3�z���.K�$�2���b��$'�x�E5�h������l�6>V	��6���	U�e�z���h�%������6� ���[)`�Q�k��p`YBvEQ)$���^[ּx�H��������4a�Hy�����+� ��g��"��i9��.����,��{��L�|�������K��������Y�v���,!ީ����:IL�(��t�ʎm�.��\:of�v�8^:�f+��U
��\�h��@��� ����pR��"�3qB��'d�2k�oҜ���g�H�$c������ ߑ��R�e@�[X���(���6�؃���X��P=贱0~�Hwds����#C�� �]�&�S��.Ԡ[��\@�+�|�����M����a=�+	݋����O;l�(彬u7q�"�~Y�v��E�"J��J�z����<^Xq[(K��������d��'!j��5v�S1��$dN�)�%�G���]�<��rW��d]��h+Ѻ�@&Ok^��������¦�w6�7� �9�����``ع���yL�f^�>�ַnoE��p�'W�# �5��3+P>�xHϹ	�΄��vI��̭�l������\*���M �1VY��(ς�v�}x�?[l&�gr= ��5s��>��~�dͨ{w���d�H<�^�q���T��g�5ѫ�[�V%�`yT	�9���"̗H���V~�Dp���:��<�u<�.��I�6nN�����)����D��  �j8_:j5���Ʃ>c�6��_�<f��sS�x��pAa�ޞ�>|>��������G�$@���%A�)��QXlցmt/���Ƿ���m͑R�WЩo7o�A �TfP5O��"n�@o��3m�U�.������E9փ3�^�H��B �u��7��+{Tc��V����I��+Z=@�d�h'�?z#���ÃvY5�%�C����S���şof'����:<�M�xd/f�c)�1����W���g�g7տ��WoGLyv8I��Hwnh�����c����*"|�#�͉(�9_%��������G�_�#^]���$������0�e�-��0}����ư�4c�q��&w)2
��^���\��]MNʟG�u�Κ�F#� ?i�����Df���.�*Ӡ��q0C��'� �D�;���x��:�>?�Ȕs�%�%a�����������޼?[�O����իW��F      �      x������ � �      �      x������ � �      �   {  x�]�A��0E��)8����z�Q�Bԥ�(T@;����a�E~
���6C��nY?v��5ά�u���9"��:PTh1X x���%�
������g?&G5nؓ�S �	�,�K���XQ��(�:Zv��~��ۺ����ɋ'�v�t�YeЂ��h�a2%
l�֕r>��� �thx N<��qt8<���8,�_˖����u���H���k���'����	���u�z��WO(L��Uޙ!ψ��3FzYg�"�Io��q]�sxC*m�b.���"�2.���"(.��\�t����~���B;ٲ��zB������\ [}A�A����y+��Y��S�76��jAHʂU��X��XE�(s�k�?2��]      �     x�u�MO�@��3�
ܚ��.����Z��RQ4&�R�_����b���s���)b}ؔ���f�Z�a�Κ��"�Z-�ăS'"y�R�����"�`�>��g�?���Z��a�`
�`�R�>D-�'`)�����m�U���|V���M5\ȋf.E:F�1ǆ�/�Y#�/���n��2�Z���;����I�����K�:n���7Đ�,������u��# ��79��m�w� �Y�p	q�6����������`�      �      x������ � �      �      x������ � �      �      x������ � �      �   z   x�M�K
�0��a
��w)�*����%r��������SX k"�6�	B�*��f���դ���e�n��
Q��̧J�x���m�B���!����cW_9fz���]s	�΄�"� Z;e      �   �  x����n� ��ݧ�}S33��>˟��-��?j�}�"n]�ڸ7���8�3�E��u�x��P  ���ۦ  xCx�t&yVJ�(�+T'*�4~)x� E���u���H#JT
��E|+"��fV�&m����'bj֋��=����KILg�Ua/��-k�+ҳD>$d�pM�ƛ���n1`/�FU"*��V{0���z��3��#�:����$Uf�_ӏ����wLg[��"�J�6��S���]l�0̞f�i�i\wM_�����ζW���!-���9�p�a�<�o1��~�O����2Ė��a����nS��{U
��*S�J�R��'ׄs�f�mB�ۈ�!�N>m�/vq���C4�{��z!�<�X�8��A̩�4��$W���3(�%��~Pw�5��
�.��W��O9���uی�~>J��>3h�g����}|�Z�	R�YX�~��k!K`�������*�C�q ��9�s���s�<�N��{��      �   |  x����΢H �u�O1�	���b��7�LBD�[��\
}���t2I�A'gu�_�yո��KѦ�q���M��]mU�Տ�Ǆ�Ǡ4�-/�����EŤ	b�F(�u�ˇ�x(6C���^����o2����,������t�B/�:��������We���Ѻ���Ө�YNn�r{��.���OO�wZ����[���6���R���jߔ�0�w��D���s�~
��,�3�������l�J��� ��\�Z��ڙ�? �@?Q�PC���DQ	��_�|Ѽ�Sq(T��'#����z=�-A����(�J���b�i�j�'ź[�X�{x����o�P��D���F1O������@���T��\�g3Je��_jt:k^4;!��e��+Sz\8F�5�b��I�!l��d�՟F����a��X��P�.�(�� �4��F����ǈF3�Ok�qF%��lƌC�e�eҁ{�Gh�����I�-�ĝ��'�����1��#%�QC�>�Sh�	�&F��d���p��z�/�������Y����f�2����b�����h� :�?B�.�ZZ�#<�.���r�:�.r��?�p����w���A���Di""�ȷ�������xd     