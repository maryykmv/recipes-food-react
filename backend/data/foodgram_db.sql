--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

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

ALTER TABLE ONLY public.users_subscription DROP CONSTRAINT users_subscription_user_id_d9433bee_fk_users_customuser_id;
ALTER TABLE ONLY public.users_subscription DROP CONSTRAINT users_subscription_author_id_717ab6a7_fk_users_customuser_id;
ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_use_permission_id_baaa2f74_fk_auth_perm;
ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_use_customuser_id_5771478b_fk_users_cus;
ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_groups_group_id_01390b14_fk_auth_group_id;
ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_gro_customuser_id_958147bf_fk_users_cus;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_customuser_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_users_customuser_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
ALTER TABLE ONLY public.api_shoppinglist DROP CONSTRAINT api_shoppinglist_user_id_decfea1c_fk_users_customuser_id;
ALTER TABLE ONLY public.api_shoppinglist DROP CONSTRAINT api_shoppinglist_recipe_id_bf623920_fk_api_recipe_id;
ALTER TABLE ONLY public.api_recipe_tags DROP CONSTRAINT api_recipe_tags_tag_id_85673ca0_fk_api_tag_id;
ALTER TABLE ONLY public.api_recipe_tags DROP CONSTRAINT api_recipe_tags_recipe_id_39cc25a8_fk_api_recipe_id;
ALTER TABLE ONLY public.api_recipe DROP CONSTRAINT api_recipe_author_id_423d4c07_fk_users_customuser_id;
ALTER TABLE ONLY public.api_ingredientrecipe DROP CONSTRAINT api_ingredientrecipe_recipe_id_68c15ced_fk_api_recipe_id;
ALTER TABLE ONLY public.api_ingredientrecipe DROP CONSTRAINT api_ingredientrecipe_ingredient_id_3b1e815c_fk_api_ingre;
ALTER TABLE ONLY public.api_favorite DROP CONSTRAINT api_favorite_user_id_87b96550_fk_users_customuser_id;
ALTER TABLE ONLY public.api_favorite DROP CONSTRAINT api_favorite_recipe_id_70e48425_fk_api_recipe_id;
DROP INDEX public.users_subscription_user_id_d9433bee;
DROP INDEX public.users_subscription_author_id_717ab6a7;
DROP INDEX public.users_customuser_username_80452fdf_like;
DROP INDEX public.users_customuser_user_permissions_permission_id_baaa2f74;
DROP INDEX public.users_customuser_user_permissions_customuser_id_5771478b;
DROP INDEX public.users_customuser_groups_group_id_01390b14;
DROP INDEX public.users_customuser_groups_customuser_id_958147bf;
DROP INDEX public.users_customuser_email_6445acef_like;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.authtoken_token_key_10f0b77e_like;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
DROP INDEX public.api_tag_slug_dc7250ca_like;
DROP INDEX public.api_tag_name_e0f7a95d_like;
DROP INDEX public.api_tag_color_2a7628a5_like;
DROP INDEX public.api_shoppinglist_user_id_decfea1c;
DROP INDEX public.api_shoppinglist_recipe_id_bf623920;
DROP INDEX public.api_recipe_tags_tag_id_85673ca0;
DROP INDEX public.api_recipe_tags_recipe_id_39cc25a8;
DROP INDEX public.api_recipe_author_id_423d4c07;
DROP INDEX public.api_ingredientrecipe_recipe_id_68c15ced;
DROP INDEX public.api_ingredientrecipe_ingredient_id_3b1e815c;
DROP INDEX public.api_favorite_user_id_87b96550;
DROP INDEX public.api_favorite_recipe_id_70e48425;
ALTER TABLE ONLY public.users_subscription DROP CONSTRAINT users_subscription_pkey;
ALTER TABLE ONLY public.users_customuser DROP CONSTRAINT users_customuser_username_key;
ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_user_permissions_pkey;
ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq;
ALTER TABLE ONLY public.users_customuser DROP CONSTRAINT users_customuser_pkey;
ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_groups_pkey;
ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_groups_customuser_id_group_id_76b619e3_uniq;
ALTER TABLE ONLY public.users_customuser DROP CONSTRAINT users_customuser_email_key;
ALTER TABLE ONLY public.api_shoppinglist DROP CONSTRAINT unique_user_recipe;
ALTER TABLE ONLY public.api_ingredientrecipe DROP CONSTRAINT unique_recipe_ingredient;
ALTER TABLE ONLY public.users_subscription DROP CONSTRAINT unique_following;
ALTER TABLE ONLY public.api_favorite DROP CONSTRAINT unique_favorite_recipe;
ALTER TABLE ONLY public.api_recipe DROP CONSTRAINT unique_author_name;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE ONLY public.api_tag DROP CONSTRAINT api_tag_slug_key;
ALTER TABLE ONLY public.api_tag DROP CONSTRAINT api_tag_pkey;
ALTER TABLE ONLY public.api_tag DROP CONSTRAINT api_tag_name_key;
ALTER TABLE ONLY public.api_tag DROP CONSTRAINT api_tag_color_key;
ALTER TABLE ONLY public.api_shoppinglist DROP CONSTRAINT api_shoppinglist_pkey;
ALTER TABLE ONLY public.api_recipe_tags DROP CONSTRAINT api_recipe_tags_recipe_id_tag_id_4e3605b4_uniq;
ALTER TABLE ONLY public.api_recipe_tags DROP CONSTRAINT api_recipe_tags_pkey;
ALTER TABLE ONLY public.api_recipe DROP CONSTRAINT api_recipe_pkey;
ALTER TABLE ONLY public.api_ingredientrecipe DROP CONSTRAINT api_ingredientrecipe_pkey;
ALTER TABLE ONLY public.api_ingredient DROP CONSTRAINT api_ingredient_pkey;
ALTER TABLE ONLY public.api_favorite DROP CONSTRAINT api_favorite_pkey;
DROP TABLE public.users_subscription;
DROP TABLE public.users_customuser_user_permissions;
DROP TABLE public.users_customuser_groups;
DROP TABLE public.users_customuser;
DROP TABLE public.django_session;
DROP TABLE public.django_migrations;
DROP TABLE public.django_content_type;
DROP TABLE public.django_admin_log;
DROP TABLE public.authtoken_token;
DROP TABLE public.auth_permission;
DROP TABLE public.auth_group_permissions;
DROP TABLE public.auth_group;
DROP TABLE public.api_tag;
DROP TABLE public.api_shoppinglist;
DROP TABLE public.api_recipe_tags;
DROP TABLE public.api_recipe;
DROP TABLE public.api_ingredientrecipe;
DROP TABLE public.api_ingredient;
DROP TABLE public.api_favorite;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: api_favorite; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.api_favorite (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.api_favorite OWNER TO maryk;

--
-- Name: api_favorite_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.api_favorite ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.api_favorite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: api_ingredient; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.api_ingredient (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    measurement_unit character varying(50) NOT NULL
);


ALTER TABLE public.api_ingredient OWNER TO maryk;

--
-- Name: api_ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.api_ingredient ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.api_ingredient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: api_ingredientrecipe; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.api_ingredientrecipe (
    id bigint NOT NULL,
    amount integer NOT NULL,
    ingredient_id bigint NOT NULL,
    recipe_id bigint NOT NULL
);


ALTER TABLE public.api_ingredientrecipe OWNER TO maryk;

--
-- Name: api_ingredientrecipe_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.api_ingredientrecipe ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.api_ingredientrecipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: api_recipe; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.api_recipe (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    image character varying(100) NOT NULL,
    text text NOT NULL,
    cooking_time integer NOT NULL,
    pub_date timestamp with time zone NOT NULL,
    author_id bigint NOT NULL
);


ALTER TABLE public.api_recipe OWNER TO maryk;

--
-- Name: api_recipe_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.api_recipe ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.api_recipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: api_recipe_tags; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.api_recipe_tags (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE public.api_recipe_tags OWNER TO maryk;

--
-- Name: api_recipe_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.api_recipe_tags ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.api_recipe_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: api_shoppinglist; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.api_shoppinglist (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.api_shoppinglist OWNER TO maryk;

--
-- Name: api_shoppinglist_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.api_shoppinglist ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.api_shoppinglist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: api_tag; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.api_tag (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    color character varying(7) NOT NULL,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.api_tag OWNER TO maryk;

--
-- Name: api_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.api_tag ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.api_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO maryk;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO maryk;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO maryk;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO maryk;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO maryk;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO maryk;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO maryk;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO maryk;

--
-- Name: users_customuser; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.users_customuser (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    email character varying(100) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL
);


ALTER TABLE public.users_customuser OWNER TO maryk;

--
-- Name: users_customuser_groups; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.users_customuser_groups (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_customuser_groups OWNER TO maryk;

--
-- Name: users_customuser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.users_customuser_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_customuser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users_customuser_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.users_customuser ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_customuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users_customuser_user_permissions; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.users_customuser_user_permissions (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_customuser_user_permissions OWNER TO maryk;

--
-- Name: users_customuser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.users_customuser_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_customuser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users_subscription; Type: TABLE; Schema: public; Owner: maryk
--

CREATE TABLE public.users_subscription (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.users_subscription OWNER TO maryk;

--
-- Name: users_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: maryk
--

ALTER TABLE public.users_subscription ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: api_favorite; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.api_favorite (id, recipe_id, user_id) FROM stdin;
1	5	1
2	7	1
\.


--
-- Data for Name: api_ingredient; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.api_ingredient (id, name, measurement_unit) FROM stdin;
2189	абрикосовое варенье	г
2190	абрикосовое пюре	г
2191	абрикосовый джем	г
2192	абрикосовый сок	стакан
2193	абрикосы	г
2194	абрикосы консервированные	г
2195	авокадо	по вкусу
2196	агава сироп	г
2197	агар-агар	г
2198	аграм	г
2199	аджика	г
2200	аджика зеленая	г
2201	айва	по вкусу
2202	айвовое пюре	г
2203	айран	г
2204	айсинг	г
2205	акула стейки	г
2206	алкоголь	стакан
2207	алкоголь крепкий	ст. л.
2208	алыча	г
2209	альбухара	шт.
2210	альмехи	г
2211	амарантовая мука	г
2212	ананасовый сироп	г
2213	ананасовый сок	г
2214	ананасы	г
2215	ананасы вяленые	г
2216	ананасы консервированные	по вкусу
2217	анис	по вкусу
2218	анис звездочки	г
2219	анисовый ликер	мл
2220	анис семена	г
2221	анчоусы	г
2222	апельсиновая вода	г
2223	апельсиновая цедра	г
2224	апельсиновая эссенция	ч. л.
2225	апельсиновое варенье	г
2226	апельсиновые цукаты	г
2227	апельсиновый джем	г
2228	апельсиновый джем с имбирем	г
2229	апельсиновый ликер	г
2230	апельсиновый сироп	стакан
2231	апельсиновый сок	по вкусу
2232	апельсиновый сок свежевыжатый	г
2233	апельсиновый уксус	ст. л.
2234	апельсиновый экстракт	ч. л.
2235	апельсины	г
2236	апельсины красные	шт.
2237	апельсины крупные	шт.
2238	арахис	г
2239	арахис жареный	г
2240	арахисовая паста	г
2241	арахисовое масло	г
2242	арахис соленый	г
2243	арбузная мякоть	г
2244	арбузы	г
2245	аргановое масло	г
2246	аришта	г
2247	ароматизатор	г
2248	ароматизатор "ананас"	по вкусу
2249	ароматизатор "вишня"	капля
2250	ароматизатор "малина"	капля
2251	ароматизатор "ром"	г
2252	артишоки	г
2253	артишоки в масле	г
2254	артишоки маринованные	г
2255	аспирин	шт.
2256	ассорти мясное	г
2257	ассорти овощное	г
2258	ассорти фруктовое	г
2259	ассорти ягодное	г
2260	аши	г
2261	багет	г
2262	багет вчерашний	г
2263	багет мини	г
2264	бадан	звездочка
2265	бадьян	щепотка
2266	базилик лимонный	г
2267	базилик свежий	г
2268	базилик сушеный	г
2269	базилик тайский	горсть
2270	базилик фиолетовый	г
2271	баклажаны	по вкусу
2272	баклажаны мини	г
2273	баклажаны тайские	г
2274	балык	г
2275	бальзам	г
2276	бальзамический крем	стакан
2277	бальзамический соус	ст. л.
2278	бальзамический уксус	стакан
2279	бальзам рижский черный	ст. л.
2280	бамия	г
2281	банановое пюре	г
2282	банановые чипсы	горсть
2283	банановый зеленый сироп	мл
2284	банановый ликер	мл
2285	бананы	г
2286	бананы мини	г
2287	барабулька	г
2288	бараний ливер	г
2289	бараний окорок на косточке	кусок
2290	бараний фарш	г
2291	баранина	г
2292	баранки	г
2293	бараньи антрекоты	кг
2294	бараньи голяшки	шт.
2295	бараньи потроха	кг
2296	бараньи ребрышки	шт.
2297	баранья лопатка	кг
2298	баранья нога	г
2299	баранья печень	г
2300	барбарис	г
2301	барбарис вяленый	ст. л.
2302	барбарис молотый	г
2303	бастурма	г
2304	батат	г
2305	батон	г
2306	батончики шоколадные	г
2307	безе	г
2308	бекон	по вкусу
2309	бекон варено-копченый	г
2310	бекон сырокопченый	г
2311	белорыбица	г
2312	бирнель	мл
2313	бисквик смесь готовая	пакет
2314	бисквит	г
2315	бисквитная крошка	г
2316	бисквитный корж	г
2317	бисквитный рулет	г
2318	бисквит шоколадный	г
2319	бифштекс	шт.
2320	блинная мука	г
2321	блины готовые	г
2322	блины овсяные	шт.
2323	бобовые ростки	г
2324	бобы	г
2325	бобы мунг пророщенные	г
2326	бобы тонка	шт.
2327	ботарга	г
2328	брезаола	г
2329	бренди	г
2330	брокколи замороженная	г
2331	брокколи свежая	г
2332	брусника замороженная	г
2333	брусника свежая	г
2334	брусника сушеная	г
2335	брусничное варенье	г
2336	брусничный соус	г
2337	брынза	по вкусу
2338	брынза сербская	г
2339	брюква	г
2340	буженина	г
2341	бузина сироп	ст. л.
2342	букет гарни	пучок
2343	булгур	г
2344	булка	кусок
2345	булка белая	г
2346	булка сдобная	г
2347	булочки	г
2348	булочки белые черствые	г
2349	булочки бриошь	шт.
2350	булочки вчерашние	шт.
2351	булочки для гамбургеров	шт.
2352	булочки зерновые	шт.
2353	булочки ржаные	кусок
2354	булочки с кунжутом	шт.
2355	бульон	г
2356	бульонные кубики	г
2357	бурбон	г
2358	Буррата	г
2359	буряк	г
2360	бусинки кондитерские	ч. л.
2361	бусинки кондитерские серебряные	по вкусу
2362	бычий хвост	г
2363	ванилин	г
2364	ваниль в стручках	г
2365	ванильная настойка	ст. л.
2366	ванильная эссенция	г
2367	ванильный порошок	г
2368	ванильный сироп	г
2369	ванильный экстракт	по вкусу
2370	варенье	г
2371	васаби	г
2372	вафельная крошка	г
2373	вафельные коржи	г
2374	вафельные трубочки	г
2375	вафли	г
2376	вафли шоколадные	г
2377	вермишель	г
2378	вермишель яичная	г
2379	вермут	г
2380	вермут белый	г
2381	вермут сухой	г
2382	ветчина	г
2383	ветчина вареная	г
2384	ветчина варено-копченая	кусок
2385	ветчина копченая	г
2386	ветчина пармская	г
2387	ветчина сырокопченая	г
2388	вешенки	г
2389	винегрет	г
2390	винный камень	щепотка
2391	винный уксус	г
2392	винный уксус белый	г
2393	винный уксус красный	ч. л.
2394	винный уксус на чесноке	ч. л.
2395	винный уксус на эстрагоне	ст. л.
2396	вино белое	по вкусу
2397	вино белое полусладкое	г
2398	вино белое полусухое	г
2399	вино белое сладкое	г
2400	вино белое столовое	стакан
2401	вино белое сухое	г
2402	виноград	г
2403	виноград без косточек	г
2404	виноград белый	г
2405	виноград изабелла	кг
2406	виноградное желе	ст. л.
2407	виноградные листья	г
2408	виноградные листья маринованные	г
2409	виноградные листья молодые	шт.
2410	виноградный сок	г
2411	виноградный сок осветленный	ч. л.
2412	виноград синий	г
2413	виноград черный	г
2414	вино десертное	г
2415	вино игристое сухое	г
2416	вино красное	г
2417	вино красное полусладкое	г
2418	вино красное полусухое	г
2419	вино красное сладкое	г
2420	вино красное сухое	г
2421	вино крепленое	г
2422	вино розовое полусладкое	ст. л.
2423	вино розовое полусухое	г
2424	виски	г
2425	витамин C в порошке	г
2426	вишневая настойка	мл
2427	вишневое варенье	г
2428	вишневые листья	г
2429	вишневый джем	г
2430	вишневый ликер	по вкусу
2431	вишневый сироп	стакан
2432	вишневый сок	г
2433	вишня	г
2434	вишня вяленая	г
2435	вишня замороженная	г
2436	вишня засахаренная кондитерская	шт.
2437	вишня коктейльная	г
2438	вишня мараскино	шт.
2439	вишня, протертая с сахаром	г
2440	вода	г
2441	вода минеральная без газа	стакан
2442	вода минеральная газированная	г
2443	водка	г
2444	водка анисовая	ч. л.
2445	водоросли	г
2446	вустерширский соус	г
2447	галангал корень	долька
2448	галеты	г
2449	гамбургер	г
2450	ганаш	г
2451	гарам масала	г
2452	гарнир	г
2453	гаспачо	г
2454	гвоздика	г
2455	гвоздика молотая	по вкусу
2456	герань листья	г
2457	геркулес	г
2458	глазурь	г
2459	глазурь белая	г
2460	глазурь готовая	по вкусу
2461	глазурь черная	по вкусу
2462	глазурь шоколадная белая	г
2463	глутамат натрия	г
2464	глюкоза	г
2465	глюкоза сироп	г
2466	говядина	г
2467	говядина на кости	г
2468	говяжий фарш	по вкусу
2469	говяжий язык	г
2470	говяжье сердце	по вкусу
2471	говяжьи бифштексы	г
2472	говяжьи голяшки	г
2473	говяжьи легкие	г
2474	говяжьи ребра	г
2475	говяжьи стейки рибай	г
2476	говяжья вырезка	шт.
2477	говяжья грудинка	кг
2478	говяжья лопатка	г
2479	говяжья мозговая кость	шт.
2480	говяжья мякоть	кг
2481	говяжья печень	шт.
2482	говяжья черева	г
2483	говяжья шейка	кг
2484	годжи	г
2485	голец филе	шт.
2486	голубика	г
2487	голубика замороженная	г
2488	голубь	г
2489	горбуша	по вкусу
2490	горбуша в собственном соку	банка
2491	горбуша филе	г
2492	горгонзола	г
2493	горгонзола пиканте	г
2494	горох	г
2495	горох колотый	г
2496	гороховые ростки	горсть
2497	гороховый суп	г
2498	горошек зеленый	г
2499	горошек зеленый замороженный	г
2500	горошек зеленый консервированный	г
2501	горошек стручковый свежий	г
2502	горчица	г
2503	горчица дижонская	г
2504	горчица дижонская с медом	г
2505	горчица желтая семена	г
2506	горчица острая	г
2507	горчица русская	ст. л.
2508	горчица семена	г
2509	горчица с зернами	г
2510	горчица сухая	г
2511	горчица французская	г
2512	горчица цитрусовая	г
2513	горчичное масло	г
2514	горчичный порошок	г
2515	грана падано	ст. л.
2516	гранатные зерна	г
2517	гранатовая паста	ст. л.
2518	гранатовый сироп	г
2519	гранатовый сок	г
2520	гранатовый сок свежевыжатый	мл
2521	гранатовый соус	ч. л.
2522	гранаты	г
2523	гранита	г
2524	гранола с орехами	г
2525	граппа	ч. л.
2526	гратен	кг
2527	грейпфрутовая цедра	г
2528	грейпфрутовый сок	г
2529	грейпфруты	г
2530	грейпфруты розовые	г
2531	гренадин	г
2532	гренки	г
2533	грецкие орехи	г
2534	грецкие орехи рубленые	г
2535	гречневая крупа	г
2536	гречневая крупа зеленая	ст. л.
2537	гречневая лапша соба	г
2538	гречневая мука	г
2539	гречневое молоко	стакан
2540	гречневые хлопья	г
2541	грибы	г
2542	грибы белые	г
2543	грибы белые замороженные	г
2544	грибы белые маринованные	г
2545	грибы белые сухие	г
2546	грибы замороженные	г
2547	грибы замороженные (опята и маслята)	г
2548	грибы лесные	г
2549	грибы маринованные	г
2550	грибы свежие	г
2551	грибы соленые	г
2552	грибы соломенные консервированные	шт.
2553	грибы сухие	г
2554	грибы шиитаке	г
2555	грибы шиитаке сухие	г
2556	гриль	г
2557	гриссини	г
2558	грудинка	г
2559	грудинка варено-копченая	г
2560	грудинка копченая	по вкусу
2561	грушевое пюре	г
2562	грушевый ликер	мл
2563	грушевый сироп	мл
2564	грушевый сок	г
2565	грушевый уксус	ст. л.
2566	груши	по вкусу
2567	груши вяленые	г
2568	грюйер	г
2569	гуава	шт.
2570	гуанчиале	г
2571	гурьевская каша	г
2572	гусиная грудка копченая	г
2573	гусиная печень	г
2574	гусиный жир	ст. л.
2575	гусь	г
2576	гусь тушка	кг
2577	дайкон	г
2578	детское питание	г
2579	джем	г
2580	джин	г
2581	джусай	г
2582	диоксид титана	г
2583	долма	г
2584	дорада	шт.
2585	дорада потрошеная с головой	шт.
2586	дорада с головой	шт.
2587	дорада тушка	шт.
2588	драже	г
2589	дрожжи домашние	г
2590	дрожжи свежие	г
2591	дрожжи сухие	по вкусу
2592	дубовая кора	г
2593	душица	г
2594	дыня	г
2595	ежевика	г
2596	ежевика замороженная	г
2597	ерш	г
2598	ёрш-носарь	шт.
2599	желатин	г
2600	желатин листовой	по вкусу
2601	желе	г
2602	желе для торта	упаковка
2603	желирующее вещество	упаковка
2604	желирующий сахар	г
2605	женьшень	г
2606	жидкий дым	г
2607	жимолость	г
2608	жир	г
2609	жир вытопленный	стакан
2610	жир кулинарный	г
2611	жир растительный	г
2612	заатар	щепотка
2613	завтрак сухой	г
2614	завтрак сухой подушечки	г
2615	загуститель для сливок	г
2616	зайчатина	г
2617	закваска	пакет
2618	закваска вечная	г
2619	заменитель сахара	по вкусу
2620	заменитель сахара стевия	г
2621	заправка для салатов готовая	г
2622	зверобой	по вкусу
2623	зелень	г
2624	зелень рубленая	г
2625	земляника	по вкусу
2626	земляника замороженная	г
2627	зефир	г
2628	зира	г
2629	злаковые хлопья	г
2630	зубатка	г
2631	зубатка филе	г
2632	изолят соевого протеина	г
2633	изюм	г
2634	изюм без косточек	г
2635	изюм белый	г
2636	изюм черный	г
2637	икра	г
2638	икра вяленой рыбы	г
2639	икра горбуши зернистая	г
2640	икра красная	г
2641	икра красной рыбы мелкая	г
2642	икра летучей рыбы	г
2643	икра лосося	г
2644	икра мойвы	г
2645	икра палтуса	г
2646	икра судака	г
2647	икра черная	г
2648	имбирное варенье	г
2649	имбирное печенье	по вкусу
2650	имбирные цукаты	ст. л.
2651	имбирь	г
2652	имбирь засахаренный	г
2653	имбирь корень	г
2654	имбирь маринованный	г
2655	имбирь молотый	г
2656	индейка	г
2657	индейка голень	г
2658	индейка грудка	г
2659	индейка копченая	г
2660	индейка тушка	шт.
2661	индейка фарш	г
2662	индейка филе	г
2663	индоутка	шт.
2664	индюшачья печень	г
2665	инжир	г
2666	инжир свежий	г
2667	инжир сушеный	г
2668	ирга	г
2669	ириски	г
2670	итальянские травы	г
2671	йогурт	г
2672	йогурт греческий	г
2673	йогурт жирный	г
2674	йогурт козий	г
2675	йогурт натуральный	г
2676	йогурт нежирный	г
2677	йогурт обезжиренный	г
2678	йогурт фруктовый	г
2679	кабачки	г
2680	кабачки замороженные	г
2681	кабачки молодые	г
2682	каджунская смесь специй	ст. л.
2683	какао	горсть
2684	какао-бобы	г
2685	какао-масло	г
2686	какао-порошок	по вкусу
2687	какао-порошок обезжиренный	г
2688	какао сгущенное	банка
2689	калина	по вкусу
2690	калина протертая	г
2691	калинджи семена	ч. л.
2692	кальвадос	г
2693	кальмары	г
2694	кальмары вареные	г
2695	кальмары замороженные	г
2696	кальмары консервированные	г
2697	кальмары филе	шт.
2698	камамбер	упаковка
2699	камбала	г
2700	камбала филе	г
2701	кампари	мл
2702	кандурин золотой	ч. л.
2703	каннеллони	г
2704	капеллини	г
2705	каперсы	г
2706	каперсы в винном уксусе	г
2707	каперсы маринованные	г
2708	капуста белокочанная	г
2709	капуста брюссельская	г
2710	капуста брюссельская замороженная	г
2711	капуста кале	г
2712	капуста квашеная	по вкусу
2713	капуста кольраби	г
2714	капуста краснокочанная	г
2715	капуста морская	по вкусу
2716	капуста морская замороженная	г
2717	капуста морская сушеная	г
2718	капуста пекинская	г
2719	капуста савойская	г
2720	капуста цветная	г
2721	капуста цветная замороженная	г
2722	капустный рассол	г
2723	капучино	г
2724	каракатица	г
2725	каракатица очищенная	г
2726	карамбола	г
2727	карамель	мл
2728	карамельный соус	г
2729	карамель с начинкой	г
2730	карамель соленая	г
2731	карась	г
2732	карбонад	г
2733	кардамон	г
2734	кардамон зерна	ч. л.
2735	кардамон молотый	г
2736	кардамон стручки	шт.
2737	каркаде	г
2738	карп	г
2739	карп зеркальный	кг
2740	карп филе	кг
2741	карри	г
2742	карри листья	г
2743	карри паста	пакет
2744	картофель	г
2745	картофель вареный	г
2746	картофель вареный в мундире	г
2747	картофель молодой	г
2748	картофельное пюре	по вкусу
2749	картофельные ньокки	г
2750	картофельные хлопья	г
2751	картофельные чипсы	г
2752	картофельный крахмал	г
2753	картофельный отвар	г
2754	картофельный хэш замороженный	г
2755	картофель печеный	г
2756	катык	г
2757	каффир-лайм листья	по вкусу
2758	каша	г
2759	каша для детского питания	г
2760	каштановая мука	г
2761	каштановый крем	г
2762	каштаны	г
2763	каштаны вареные	г
2764	каштаны консервированные	г
2765	каштаны очищенные	г
2766	квас	г
2767	квасное сусло	г
2768	квасной концентрат сухой	упаковка
2769	квас хлебный	г
2770	кедровая мука	г
2771	кедровые орехи	г
2772	кедровые орехи жареные	г
2773	кета	г
2774	кетчуп острый	по вкусу
2775	кетчуп томатный	г
2776	кетчуп тосканский	ст. л.
2777	кетчуп шашлычный	г
2778	кефаль	г
2779	кефир	по вкусу
2780	кефир 1%	г
2781	кефир 2,5%	г
2782	кефир 3,2%	г
2783	кефир обезжиренный	г
2784	кешью	г
2785	кивано	г
2786	киви	кг
2787	киви желе	г
2788	кижуч	г
2789	кижуч горячего копчения филе	г
2790	кизил	г
2791	килька	г
2792	кимчи	г
2793	кинза свежая	зубчик
2794	кинза сушеная	г
2795	киноа	г
2796	киноа молотая	г
2797	кипяток	г
2798	кирш	ст. л.
2799	кисель	г
2800	кисель сухой	г
2801	кисломолочный напиток Тан	мл
2802	кишки	г
2803	клейковина	г
2804	клементины	г
2805	кленовый сироп	г
2806	клубника	г
2807	клубника в сиропе	г
2808	клубника замороженная	г
2809	клубника, протертая с сахаром	г
2810	клубника сушеная	г
2811	клубничное варенье	г
2812	клубничное желе	упаковка
2813	клубничное пюре	г
2814	клубничный джем	г
2815	клубничный джем густой	мл
2816	клубничный компот	стакан
2817	клубничный ликер	г
2818	клубничный сироп	г
2819	клюква	г
2820	клюква вяленая	г
2821	клюква замороженная	г
2822	клюква, протертая с сахаром	г
2823	клюквенное варенье	г
2824	клюквенный джем	г
2825	клюквенный морс	ст. л.
2826	клюквенный сироп	г
2827	клюквенный соус	г
2828	козлиная печень	г
2829	козлятина молодая	кг
2830	кока-кола	ст. л.
2831	кокосовая вода	стакан
2832	кокосовая мука	ст. л.
2833	кокосовая стружка	г
2834	кокосовая стружка цветная	г
2835	кокосовое масло	мл
2836	кокосовое молоко	г
2837	кокосовые сливки	г
2838	кокосовый ликер	ст. л.
2839	кокосовый экстракт	г
2840	кокосы	г
2841	кола	г
2842	колбаса	г
2843	колбаса вареная	г
2844	колбаса варено-копченая	г
2845	колбаса копченая	г
2846	колбаса кровяная	г
2847	колбаса полукопченая	г
2848	колбаса сырокопченая	г
2849	колбаска свиная свежая (salsiccia)	шт.
2850	колбаски	г
2851	колбаски для жарки	г
2852	колбаски домашние	шт.
2853	колбаски охотничьи	г
2854	колбаски сырокопченые	шт.
2855	компот	г
2856	конопляное масло	ст. л.
2857	конопля семена	г
2858	конфеты	по вкусу
2859	конфеты M&M’s	г
2860	конфеты жевательные лакричные	г
2861	конфеты Коровка	г
2862	конфеты Трюфель	г
2863	конфитюр	по вкусу
2864	конфитюрка	упаковка
2865	коньяк	г
2866	копчености	г
2867	коренья	по вкусу
2868	кориандр	г
2869	кориандр зелень	г
2870	кориандр молотый	г
2871	кориандр семена	г
2872	коринка	ст. л.
2873	корица	г
2874	корица молотая	г
2875	корнишоны	г
2876	корнишоны маринованые	г
2877	корюшка	г
2878	корюшка горячего копчения	г
2879	кости	г
2880	кости мозговые	г
2881	кость сахарная	г
2882	кофе в зернах	стакан
2883	кофе зеленый	г
2884	кофейные зерна в шоколаде	г
2885	кофейный ликер	г
2886	кофейный ликер Kahlua	мл
2887	кофейный напиток	мл
2888	кофейный сироп	г
2889	кофейный экстракт	мл
2890	кофе молотый	ст. л.
2891	кофе растворимый	г
2892	кофе свежесваренный	г
2893	кофе черный	г
2894	кофе эспрессо	стакан
2895	крабовое мясо	г
2896	крабовые палочки	по вкусу
2897	краб снежный	по вкусу
2898	крабы	г
2899	крапива	г
2900	краситель-гель пищевой	шт.
2901	краситель пищевой	г
2902	краситель пищевой вишневый	щепотка
2903	краситель пищевой желтый	г
2904	краситель пищевой зеленый	ст. л.
2905	краситель пищевой красный	г
2906	краситель пищевой оранжевый	г
2907	краситель пищевой фиолетовый	г
2908	краситель пищевой черный	г
2909	красная смородина	г
2910	красная смородина, протертая с сахаром	ст. л.
2911	красноперка	шт.
2912	красносмородиновое варенье	г
2913	красный винный соус	г
2914	крахмал	г
2915	креветки	г
2916	креветки замороженные	г
2917	креветки королевские	г
2918	креветки очищенные	г
2919	креветки очищенные в рассоле	г
2920	креветки салатные	г
2921	креветки сушеные	г
2922	креветки тигровые	г
2923	крекер	г
2924	крекер соленый	г
2925	крем заварной	г
2926	крем заварной порошковый	г
2927	крем-фреш	г
2928	кресс-салат	г
2929	кровь	мл
2930	кролик	г
2931	кролик тушка	г
2932	кролик филе	г
2933	кроличья печень	г
2934	круассаны	по вкусу
2935	крутоны мелкие	г
2936	крыжовник	г
2937	крыжовниковое варенье	банка
2938	кукуруза	г
2939	кукуруза замороженная	г
2940	кукуруза консервированная	г
2941	кукуруза обжаренная кикос	г
2942	кукурузная крупа	г
2943	кукурузная мука	г
2944	кукурузное масло	г
2945	кукурузные лепешки	шт.
2946	кукурузные палочки	г
2947	кукурузные хлопья	г
2948	кукурузные хлопья глазированные	г
2949	кукурузные чипсы	г
2950	кукурузный (золотой) сироп	г
2951	кукурузный крахмал	по вкусу
2952	кумин	г
2953	кумкваты	горсть
2954	кунжут	г
2955	кунжутная мука	г
2956	кунжутная паста	г
2957	кунжутное масло	г
2958	кунжутные семечки	по вкусу
2959	кунжут черный	ч. л.
2960	купаты	шт.
2961	курага	по вкусу
2962	курдючное сало	г
2963	курдючный жир	г
2964	куриная ветчина	г
2965	куриная кожа	г
2966	куриная печень	г
2967	куриное карпаччо	г
2968	куриное филе	г
2969	куриные бедра	г
2970	куриные голени	г
2971	куриные голени копченые	шт.
2972	куриные грудки	г
2973	куриные грудки вареные	г
2974	куриные грудки копченые	г
2975	куриные желудочки	шт.
2976	куриные кости	г
2977	куриные крылья	г
2978	куриные окорочка	г
2979	куриные окорочка копченые	г
2980	куриные потрошки	г
2981	куриные сердечки	г
2982	куриный бульон	г
2983	куриный паштет	г
2984	куриный суповой набор	кг
2985	куриный фарш	г
2986	курица	г
2987	курица вареная	г
2988	курица для жарки	кг
2989	курица копченая	г
2990	курица тушка	г
2991	куркума	г
2992	куропатки	г
2993	кускус	г
2994	кускус жемчужный	стакан
2995	кэроб	г
2996	лаванда	г
2997	лаванда сушеная	щепотка
2998	лавандовый краситель	ч. л.
2999	лаваш	по вкусу
3000	лаваш армянский	г
3001	лаваш персидский круглый	г
3002	лаваш тонкий	пласт
3003	лавровые листья свежие	шт.
3004	лавровый лист	г
3005	лайм	г
3006	лайм листья	шт.
3007	лаймовая цедра	г
3008	лаймовый сок	г
3009	лангустины	шт.
3010	лапша	г
3011	лапша для лагмана	упаковка
3012	лапша ширатаки	г
3013	лапша яичная в гнездах	шт.
3014	латук	г
3015	легкие	г
3016	лед	г
3017	леди-фиш тушка	шт.
3018	лемонграсс (лимонное сорго)	г
3019	лен семена	г
3020	лепешки	г
3021	лепешки арабские	шт.
3022	лесные орехи	г
3023	лечо	г
3024	ливер	г
3025	ликер	г
3026	ликер Alchermes	г
3027	ликер Amaretto	г
3028	ликер Baileys	г
3029	ликер Cointreau	г
3030	ликер кремовый	г
3031	ликер сливочный	г
3032	лимонад	г
3033	лимонная кислота	г
3034	лимонная цедра	г
3035	лимонник стебель	г
3036	лимонник ягоды	г
3037	лимонные корочки засахаренные	г
3038	лимонные цукаты	г
3039	лимонный сок	г
3040	лимонный уксус	г
3041	лимонный экстракт	г
3042	лимончелло	г
3043	лимоны	г
3044	лингвине	шт.
3045	лисички	г
3046	лисички сушеные	г
3047	личи	шт.
3048	личи компот	г
3049	лобстер	г
3050	лонган	г
3051	лонгконг	шт.
3052	лососевые молоки	г
3053	лососевый фарш	г
3054	лосось	г
3055	лосось горячего копчения	г
3056	лосось копченый	г
3057	лосось свежесоленый	г
3058	лосось свежий	г
3059	лосось свежий филе	г
3060	лосось слабосоленый	г
3061	лосось стейки	г
3062	лосось филе	г
3063	лосось филе на коже	г
3064	лосось холодного копчения	г
3065	лосятина	кг
3066	лук белый	по вкусу
3067	лук зеленый	г
3068	лук красный	по вкусу
3069	лук маринованный	г
3070	луковая шелуха	г
3071	луковый порошок	г
3072	лук-порей	горсть
3073	лук-резанец	по вкусу
3074	лук репчатый	г
3075	лук репчатый мелкий	г
3076	лук салатный	шт.
3077	лук сушеный	г
3078	лук-шалот	г
3079	лук-шалот красный	шт.
3080	льняная мука	г
3081	льняное масло	ч. л.
3082	льняное семя	г
3083	льняное семя молотое	г
3084	любисток	г
3085	маасдам	г
3086	мадера	г
3087	майонез	г
3088	майонез домашний	г
3089	майонез легкий	г
3090	майонезный соус «Слобода» Постный	г
3091	майонез оливковый	г
3092	майонез «Слобода» Легкий	г
3093	майонез «Слобода» На перепелиных яйцах	г
3094	майонез «Слобода» Оливковый	г
3095	майонез «Слобода» Провансаль	г
3096	майонез «Слобода» С лимонным соком	г
3097	майонез «Слобода» Сметанный	г
3098	майоран	г
3099	майоран свежий	по вкусу
3100	майоран сушеный	г
3101	мак	г
3102	макаронные изделия	г
3103	макаронные изделия мелкие	г
3104	макароны	г
3105	макароны-бабочки (farfalle)	г
3106	макароны-бабочки (farfalle) мини	г
3107	макароны баветте	г
3108	макароны-бантики	г
3109	макароны букатини	г
3110	макароны джильи	г
3111	макароны диталони	г
3112	макароны-звездочки	стакан
3113	макароны орзо	г
3114	макароны-ракушки (conchiglie)	г
3115	макароны-ракушки (conchiglie rigate)	г
3116	макароны-ракушки крупные	г
3117	макароны рисони	г
3118	макароны-рожки (pipe rigate)	г
3119	макароны-спиральки (fusilli)	г
3120	макароны-ушки (orecchiette)	г
3121	маккерончини	г
3122	мак молотый	г
3123	маковая масса	пачка
3124	малина	г
3125	малина замороженная	г
3126	малина, протертая с сахаром	стакан
3127	малина сушеная	г
3128	малиновое варенье	г
3129	малиновое желе	г
3130	малиновое пюре	г
3131	малиновый джем	г
3132	малиновый крем	г
3133	малиновый сироп	ч. л.
3134	малиновый соус	ч. л.
3135	малиновый уксус	мл
3136	малиновый чай	г
3137	манго	по вкусу
3138	манговый сироп	мл
3139	манго консервированное	г
3140	мангольд	г
3141	мангустин	шт.
3142	мандариновое пюре	г
3143	мандариновые цукаты	г
3144	мандариновый сок	г
3145	мандарины	по вкусу
3146	мандарины в собственном соку	г
3147	манная крупа	г
3148	маракуйя	г
3149	маргарин	г
3150	маргарин сливочный	г
3151	мармелад	по вкусу
3152	мармелад бутербродный	г
3153	марсала	стакан
3154	мартини	г
3155	мартини красный	г
3156	марципан	по вкусу
3157	марципан зеленый	г
3158	марципан розовый	г
3159	маршмеллоу	г
3160	маршмеллоу крем	г
3161	маршмеллоу мини	г
3162	маскарпоне	г
3163	маслины	г
3164	маслины без косточек	г
3165	масло авокадо	г
3166	масло виноградных косточек	г
3167	масло грецкого ореха	ч. л.
3168	масло для фритюра	г
3169	масло кедрового ореха	г
3170	маслята	г
3171	мастика	г
3172	мастика желатиновая	г
3173	мастика шоколадная	г
3174	матча	г
3175	мафальдине	г
3176	маца	г
3177	мацони	г
3178	маш	г
3179	мед	г
3180	мед акации	г
3181	мед гречишный	г
3182	мед жидкий	г
3183	мед лавандовый	г
3184	мелисса	г
3185	меренги	шт.
3186	мидии	г
3187	мидии в раковинах	г
3188	мидии в раковинах крупные черные	г
3189	мидии в раковинах мелкие зеленые	г
3190	мидии замороженные	шт.
3191	мидии копченые в масле	г
3192	микрозелень	горсть
3193	миндаль	г
3194	миндаль жареный	г
3195	миндаль измельченный	г
3196	миндальная масса	г
3197	миндальная мука	г
3198	миндальная паста	г
3199	миндальная эссенция	г
3200	миндальное масло	г
3201	миндальное молоко	г
3202	миндальное печенье	г
3203	миндальное пралине	г
3204	миндальные лепестки	г
3205	миндальный ликер	г
3206	миндальный сироп	г
3207	миндальный экстракт	капля
3208	миндаль очищенный	г
3209	миндаль рубленый	г
3210	мини-кукуруза	шт.
3211	минога	г
3212	минтай	г
3213	минтай печень	г
3214	минтай филе	г
3215	мисо-паста	г
3216	мисо-суп	пакет
3217	можжевельник ягоды	г
3218	мойва	г
3219	моллюски	г
3220	молоко	г
3221	молоко 0,5%	г
3222	молоко 1,5%	г
3223	молоко 2,5%	г
3224	молоко 3,2%	г
3225	молоко 3,6%	г
3226	молоко 4%	г
3227	молоко 6%	г
3228	молоко козье	г
3229	молоко концентрированное	г
3230	молоко рисовое	мл
3231	молоко сгущенное	г
3232	молоко сгущенное вареное	ст. л.
3233	молоко сгущенное с какао	г
3234	молоко сухое	г
3235	молоко сухое обезжиренное	ст. л.
3236	молоко топленое	г
3237	молочная смесь	г
3238	молочные продукты	г
3239	морепродукты	шт.
3240	морковное пюре	г
3241	морковь	г
3242	морковь вареная	г
3243	морковь крупная	г
3244	морковь молодая	г
3245	морковь по-корейски	г
3246	морковь тертая	шт.
3247	мороженое	по вкусу
3248	мороженое ванильное	г
3249	мороженое клубничное	г
3250	мороженое лимонное	по вкусу
3251	мороженое малиновое	г
3252	мороженое пломбир	г
3253	мороженое шоколадное	мл
3254	морошка	г
3255	морские гребешки	кг
3256	морской коктейль	г
3257	морской коктейль в масле	упаковка
3258	морской коктейль замороженный	г
3259	морской черт	г
3260	морской язык	г
3261	морской язык филе	г
3262	мортаделла	г
3263	моцарелла	г
3264	моцарелла для запекания	г
3265	моцарелла для пиццы	г
3266	моцарелла мини	г
3267	моцарелла с травами	г
3268	моцарелла шарик большой	г
3269	мука	г
3270	мука 1 сорт	г
3271	мука 2 сорт	г
3272	мука «Аладушкин»	г
3273	мука грубого помола	г
3274	мука для темпуры	г
3275	мука из пророщенной пшеницы	ст. л.
3276	мука манитоба	г
3277	мука самоподнимающаяся	г
3278	мука с отрубями	ч. л.
3279	мука с семечками	г
3280	мука хлебопекарная	г
3281	мука цельнозерновая	г
3282	мускат белый	мл
3283	мускатное вино	г
3284	мускатный орех	г
3285	мускатный орех молотый	г
3286	мюсли	г
3287	мягкий творог	г
3288	мясной бульон	г
3289	мясной фарш	г
3290	мясо	г
3291	мясо дикого кабана	г
3292	мясо криля	г
3293	мясо на косточке	кг
3294	мята	г
3295	мята сушеная	г
3296	мятный сироп	г
3297	мятный шнапс	г
3298	нардек	г
3299	нектарины	шт.
3300	нога ягненка без кости	г
3301	нори	г
3302	нуга	г
3303	нуга с орехами	г
3304	нут	г
3305	нутелла	г
3306	нут консервированный	г
3307	нутовая мука	г
3308	облепиха	г
3309	облепиха замороженная	г
3310	облепиховый сироп	стакан
3311	овощи	г
3312	овощная смесь	г
3313	овощная смесь замороженная	г
3314	овощная смесь замороженная для wok	г
3315	овощная смесь по-китайски	г
3316	овощной бульон	по вкусу
3317	овсяная мука	г
3318	овсяное молоко	стакан
3319	овсяное печенье	г
3320	овсяное толокно	г
3321	овсяные зерна	г
3322	овсяные отруби	г
3323	овсяные хлопья	г
3324	овсяные хлопья быстрого приготовления	г
3325	огуречный рассол	стакан
3326	огурцы	г
3327	огурцы консервированные	шт.
3328	огурцы малосольные	шт.
3329	огурцы маринованные	банка
3330	огурцы свежие	г
3331	огурцы соленые	г
3332	одуванчики	г
3333	окорок	г
3334	окорок варено-копченый	г
3335	окунь	г
3336	окунь красный филе	г
3337	окунь морской	г
3338	окунь морской филе	г
3339	окунь филе	г
3340	оленина	г
3341	оливки	г
3342	оливки без косточек	г
3343	оливки зеленые	по вкусу
3344	оливки зеленые консервированные	банка
3345	оливки каламата	г
3346	оливки консервированные	г
3347	оливки, фаршированные анчоусами	г
3348	оливки черные	по вкусу
3349	оливковая паста	г
3350	оливковое масло	г
3351	оливковое масло Extra Virgin	г
3352	опунция плоды	г
3353	опята	по вкусу
3354	опята замороженные	г
3355	опята маринованные	г
3356	орегано	г
3357	орегано свежий	г
3358	орегано сушеный	г
3359	орехи	г
3360	орехи бразильские	г
3361	орехи макадамия	г
3362	орехи пекан	г
3363	орехи пинии	г
3364	ореховая крошка	стакан
3365	ореховая паста	шт.
3366	ореховое масло	ст. л.
3367	ореховый ликер	мл
3368	ореховый соус	ст. л.
3369	осетр	г
3370	осетрина холодного копчения	г
3371	осьминог	г
3372	осьминоги консервированные	г
3373	осьминоги мини	г
3374	отруби	г
3375	ошеек	г
3376	пагр	г
3377	пажитник	г
3378	пажитник семена	г
3379	палтус	г
3380	пальмовое масло	г
3381	пангасиус	г
3382	панеттоне	шт.
3383	Панифарин	г
3384	панчетта	г
3385	папайя	г
3386	папайя консервированная в собственном соку	г
3387	папоротник	г
3388	папоротник соленый	упаковка
3389	паппарделле	г
3390	паприка	г
3391	паприка копченая	ст. л.
3392	паприка красная	ст. л.
3393	паприка красная молотая	г
3394	паприка острая копченая	г
3395	паприка сладкая	г
3396	паприка сладкая копченая	г
3397	паприка сладкая хлопьями	ч. л.
3398	пармезан	г
3399	паста	г
3400	паста веджимайт	г
3401	паста тахини	г
3402	паста хариса	ст. л.
3403	пастернак	г
3404	пастила	г
3405	пастила виноградная	г
3406	патиссоны	г
3407	патока	г
3408	патока крахмальная	г
3409	патока черная (меласса)	г
3410	пахта	г
3411	паштет	г
3412	пекарский порошок	г
3413	пекарский порошок	ч. л.
3414	пекорино	г
3415	пектин	г
3416	пеленгас	г
3417	пельмени	г
3418	пенне	г
3419	пенне ригате	г
3420	пеперончино	ч. л.
3421	пеперончино молотый	щепотка
3422	переводной лист для шоколада	шт.
3423	перепелки	тушка
3424	перец	г
3425	перец белый	г
3426	перец белый горошком	по вкусу
3427	перец белый молотый	г
3428	перец белый свежемолотый	ч. л.
3429	перец болгарский	г
3430	перец болгарский желтый	г
3431	перец болгарский зеленый	г
3432	перец болгарский красный	г
3433	перец горошком	г
3434	перец горошком смесь	г
3435	перец душистый	щепотка
3436	перец душистый горошком	г
3437	перец душистый молотый	г
3438	перец испанский острый	шт.
3439	перец кайенский	г
3440	перец кайенский красный	г
3441	перец кайенский молотый	щепотка
3442	перец красный	г
3443	перец красный горошком	г
3444	перец красный жгучий	г
3445	перец красный молотый	г
3446	перец красный острый	г
3447	перец красный острый молотый	по вкусу
3448	перец красный хлопьями	щепотка
3449	перец лимонный	г
3450	перец маринованный	г
3451	перец острый	г
3452	перец острый зеленый	шт.
3453	перец острый молотый	щепотка
3454	перец падрон	г
3455	перец пеперони	г
3456	перец пеперони красный	шт.
3457	перец розовый горошком	г
3458	перец свежемолотый смесь	г
3459	перец сенегальский	по вкусу
3460	перец сладкий	г
3461	перец сладкий желтый	г
3462	перец сладкий зеленый	г
3463	перец сладкий красный	г
3464	перец сладкий красный маринованный	шт.
3465	перец сладкий красный молотый	г
3466	перец сладкий оранжевый	г
3467	перец сладкий сушеный	г
3468	перец сычуаньский	г
3469	перец халапеньо	г
3470	перец халапеньо маринованный	шт.
3471	перец черный	ст. л.
3472	перец черный горошком	по вкусу
3473	перец черный молотый	г
3474	перец черный свежемолотый	г
3475	перец чили	г
3476	перец чили зеленый	стручок
3477	перец чили красный	стручок
3478	перец чили маринованный	по вкусу
3479	перец чили молотый	г
3480	перец чили сухой	ст. л.
3481	перец чили хлопьями	по вкусу
3482	перец ямайский	г
3483	перловая крупа	г
3484	перловая мука	г
3485	персики	г
3486	персики консервированные	г
3487	персики сушеные	горсть
3488	персиковое пюре	г
3489	персиковый джем	г
3490	персиковый мармелад	ст. л.
3491	персиковый сироп	мл
3492	персиковый сок	г
3493	перцовая паста	ч. л.
3494	петрушка	г
3495	петрушка зелень	г
3496	петрушка итальянская	пучок
3497	петрушка корень	г
3498	петрушка рубленая	г
3499	петрушка сушеная	г
3500	печень	г
3501	печенье	по вкусу
3502	печенье Oreo	г
3503	печенье Амаретти	г
3504	печенье бисквитное	г
3505	печенье галетное	шт.
3506	печенье «Дамские пальчики»	г
3507	печенье песочное	г
3508	печенье рассыпчатое	г
3509	печенье Савоярди	г
3510	печенье сахарное	г
3511	печенье сладкое	г
3512	печенье сухое	г
3513	печенье шоколадное	г
3514	печенье Юбилейное молочное	г
3515	пиво	г
3516	пиво имбирное	мл
3517	пиво нефильтрованное	г
3518	пиво светлое	г
3519	пиво темное	банка
3520	пикша	шт.
3521	питы	по вкусу
3522	повидло	г
3523	подсолнечное масло	г
3524	подсолнечные семечки	г
3525	полба	г
3526	полба недозрелая	г
3527	полента	по вкусу
3528	полента быстрого приготовления	стакан
3529	помело	г
3530	помидоры	г
3531	помидоры бурые	г
3532	помидоры вяленые	по вкусу
3533	помидоры вяленые в масле	г
3534	помидоры желтые	шт.
3535	помидоры зеленые	кг
3536	помидоры консервированные	г
3537	помидоры консервированные в собственном соку	г
3538	помидоры консервированные в собственном соку с базиликом	г
3539	помидоры протертые пассата	г
3540	помидоры соленые	шт.
3541	помидоры сушеные хлопьями	г
3542	помидоры черри	г
3543	помидоры черри желтые	г
3544	попкорн	г
3545	поросенок	кг
3546	портвейн	г
3547	портобелло	г
3548	портулак	г
3549	посыпка кондитерская	по вкусу
3550	почки	г
3551	приправа 4 перца	г
3552	приправа 5 специй (five spice)	ч. л.
3553	приправа для баранины	ст. л.
3554	приправа для картофеля	г
3555	приправа для курицы	г
3556	приправа для макарон	по вкусу
3557	приправа для маринования свинины	по вкусу
3558	приправа для морепродуктов	по вкусу
3559	приправа для мяса	г
3560	приправа для паэльи	по вкусу
3561	приправа для пиццы	ч. л.
3562	приправа для плова	г
3563	приправа для птицы	ст. л.
3564	приправа для рыбы	г
3565	приправа для салатов	по вкусу
3566	приправа заатар	ч. л.
3567	приправа креольская	ст. л.
3568	приправа с сушеными грибами	ч. л.
3569	приправы	г
3570	прованские травы	г
3571	проволоне	г
3572	просекко	мл
3573	простокваша	г
3574	протеин сывороточный	г
3575	прошутто	г
3576	пряники	г
3577	пряничные специи	г
3578	пряности	г
3579	псиллиум	г
3580	птитим	г
3581	пудинг	г
3582	пудинг ванильный	г
3583	пудинг ванильный инстант	упаковка
3584	пудинг карамельный	г
3585	пшеница	г
3586	пшеничная крупа	г
3587	пшеничная мука	г
3588	пшеничная мука цельнозерновая	г
3589	пшеничные зародыши	стакан
3590	пшеничные отруби	г
3591	пшеничные ростки	г
3592	пшеничные хлопья	г
3593	пшенные хлопья	ст. л.
3594	пшено	г
3595	пыльца цветочная	г
3596	пюре	по вкусу
3597	радиккио	шт.
3598	разрыхлитель	г
3599	раки	шт.
3600	раковые шейки	г
3601	раковые шейки в рассоле	г
3602	рамбутан	г
3603	рапаны	г
3604	рапсовое масло	по вкусу
3605	рассол	г
3606	рассол от каперсов	ст. л.
3607	рассол от оливок	ст. л.
3608	растительное масло	г
3609	растительное масло для жарки	г
3610	растительное масло нерафинированное	стакан
3611	растительное масло рафинированное	г
3612	растительное молоко	стакан
3613	ревень	г
3614	реган	веточка
3615	редис	г
3616	редька	г
3617	редька белая	шт.
3618	редька зеленая	шт.
3619	редька черная	шт.
3620	репа	г
3621	репа белая	шт.
3622	ржаная закваска	г
3623	ржаная закваска густая	г
3624	ржаная мука	г
3625	ржаные отруби	г
3626	ригатони	г
3627	рикотта	г
3628	рикотта твердая	г
3629	рис	г
3630	рис арборио	г
3631	рис басмати	г
3632	рис бурый	г
3633	рис бурый и дикий смесь	г
3634	рис вареный	г
3635	рис виола	г
3636	рис девзира	г
3637	рис дикий	г
3638	рис дикий и золотистый смесь	г
3639	рис длиннозерный	г
3640	рис длиннозерный золотистый	г
3641	рис для плова	г
3642	рис для пудинга	г
3643	рис для ризотто	г
3644	рис для суши	г
3645	рис жасминовый	г
3646	рис золотистый	г
3647	рис индика	г
3648	рис италика	г
3649	рис карнароли	г
3650	рис красный	г
3651	рис круглозерный	г
3652	рис кубанский	г
3653	рисовая бумага	г
3654	рисовая лапша	г
3655	рисовая мука	г
3656	рисовое вино	ч. л.
3657	рисовые хлопья	г
3658	рисовые шарики воздушные	г
3659	рисовый крахмал	ст. л.
3660	рисовый уксус	по вкусу
3661	рис пропаренный	г
3662	рис пропаренный и дикий смесь	г
3663	рис японика	г
3664	рожь	г
3665	розмарин	шт.
3666	розмарин сушеный	по вкусу
3667	розовая вода	г
3668	розовые бутоны сушеные	г
3669	розовые лепестки	г
3670	розы	г
3671	рокфор	г
3672	ром	бутылка
3673	ромашка сушеная	г
3674	ромовый экстракт	ч. л.
3675	ром темный	г
3676	ростбиф	г
3677	рукола	г
3678	рулька	по вкусу
3679	рыба	г
3680	рыба белая	г
3681	рыба белая филе	г
3682	рыба консервированная	банка
3683	рыба копченая	г
3684	рыба копченая филе	г
3685	рыба красная	г
3686	рыба красная соленая	г
3687	рыба красная филе	г
3688	рыба-меч	г
3689	рыба морская	г
3690	рыба солнечник филе	шт.
3691	рыба-соль	тушка
3692	рыбное филе	г
3693	рыбные консервы	г
3694	рыбные кости	г
3695	рыбные обрезки, головы, плавники	по вкусу
3696	рыбный бульон	г
3697	рыбный соус	г
3698	рыбный соус Nam Pla	г
3699	рыбный соус тайский	г
3700	рыбный фарш	г
3701	рябина черноплодная	г
3702	рябчик	г
3703	ряженка	г
3704	ряженка 4%	г
3705	сайда	г
3706	сайда филе	г
3707	сайра	г
3708	сайра консервированная	банка
3709	саке	ст. л.
3710	салака	г
3711	салат	г
3712	салат айсберг	г
3713	салат китайский	г
3714	салат корн	пучок
3715	салат кочанный	г
3716	салат кучерявый	г
3717	салат листовой	г
3718	салатный микс	г
3719	салат романо	г
3720	салат фриссе	г
3721	сало	г
3722	сало копченое в перце	г
3723	сало копченое с мясными прослойками	г
3724	сало с мясными прослойками	г
3725	сальник	г
3726	сальса	г
3727	сальса верде	ч. л.
3728	салями	г
3729	салями итальянская	г
3730	сардельки	г
3731	сардельки копченые	г
3732	сардинки маленькие	шт.
3733	сардины	г
3734	сардины в масле	банка
3735	сахар	г
3736	сахар ванильный	г
3737	сахар демерара	г
3738	сахар жемчужный	г
3739	сахар коричневый	г
3740	сахар коричневый крупнокристаллический	г
3741	сахар мусковадо	горсть
3742	сахарная пудра	г
3743	сахарная пудра апельсиновая	г
3744	сахарная пудра ванильная	г
3745	сахарные жемчужинки	г
3859	соевая мука	г
3746	сахарные кондитерские украшения	горсть
3747	сахарный песок	г
3748	сахарный песок крупный	г
3749	сахарный песок мелкий	г
3750	сахарный сироп	г
3751	сахар пальмовый	г
3752	сахар-рафинад	г
3753	сахар-рафинад с корицей	г
3754	сахар тростниковый	г
3755	сванская соль	г
3756	свекла	г
3757	свекла вареная	г
3758	свекольная ботва	г
3759	свекольные листья	г
3760	свиная вырезка	г
3761	свиная голова	г
3762	свиная грудинка	г
3763	свиная корейка	г
3764	свиная корейка копченая	г
3765	свиная корейка на кости	г
3766	свиная лопатка варено-копченая	г
3767	свиная мякоть	г
3768	свиная пашина	кг
3769	свиная печень	г
3770	свиная рулька	по вкусу
3771	свиная рулька варено-копченая	г
3772	свиная рулька копченая	г
3773	свиная шейка	кусок
3774	свинина	г
3775	свинина вареная	г
3776	свинина нежирная	г
3777	свинина с жирком	г
3778	свиное сердце	г
3779	свиное филе	г
3780	свиной подчеревок	г
3781	свиной фарш	г
3782	свиной язык	г
3783	свиные котлеты на косточке	шт.
3784	свиные легкие	г
3785	свиные ножки	г
3786	свиные отбивные	г
3787	свиные отбивные на косточке	г
3788	свиные ребра	г
3789	свиные уши	шт.
3790	свиные щечки	шт.
3791	свити	г
3792	сельдерей	г
3793	сельдерей зелень	г
3794	сельдерей корень	г
3795	сельдерей корень сушеный	по вкусу
3796	сельдерейная соль	г
3797	сельдерей семена	ч. л.
3798	сельдерей стебли	г
3799	сельдь	г
3800	сельдь слабосоленая	г
3801	сельдь соленая	шт.
3802	сельдь филе	г
3803	семга	г
3804	семга копченая	г
3805	семга свежая	г
3806	семга соленая	г
3807	семга филе на коже	г
3808	семечки	г
3809	семечки смесь	ст. л.
3810	семолина	г
3811	сервелат варено-копченый	г
3812	сибас	г
3813	сидр	г
3814	сироп	г
3815	сироп от консервированных груш	г
3816	сироп от консервированных персиков	ст. л.
3817	сироп топинамбура	стакан
3818	скумбрия	по вкусу
3819	скумбрия свежая	г
3820	скумбрия филе	г
3821	скумбрия холодного копчения	г
3822	сливки	упаковка
3823	сливки 10-20%	г
3824	сливки 15%	г
3825	сливки 20%	г
3826	сливки 33-35%	г
3827	сливки жирные	г
3828	сливки кондитерские	г
3829	сливовая паста	г
3830	сливовое варенье	г
3831	сливовое вино	г
3832	сливовый джем	г
3833	сливовый ликер	ст. л.
3834	сливовый соус	г
3835	сливочное масло	г
3836	сливы	кг
3837	сливы замороженные	г
3838	смалец	г
3839	смесь для кекса	шт.
3840	смесь для оладий	г
3841	смесь для хлеба 8 злаков	г
3842	сметана	г
3843	сметана 10%	г
3844	сметана 15%	ч. л.
3845	сметана 18%	г
3846	сметана 20%	г
3847	сметана 25%	г
3848	сметана 30%	г
3849	сметана 35%	г
3850	сметана жирная	г
3851	сметана нежирная	г
3852	сметана некислая	г
3853	смородина сушеная	г
3854	смородиновые листья	г
3855	сморчки сухие	г
3856	снежок	л
3857	сныть	г
3858	сода	г
3860	соевое масло	г
3861	соевое молоко	г
3862	соевые ростки	г
3863	соевый соус	г
3864	сок	г
3865	сок из красных апельсинов	мл
3866	сок мультивитаминный	мл
3867	сок юзу	мл
3868	солод	ч. л.
3869	солод жидкий	г
3870	солодовый экстракт	г
3871	солод темный	г
3872	соломка	г
3873	соль	г
3874	соль гималайская	г
3875	соль крупного помола	г
3876	соль морская	г
3877	сом филе	г
3878	сосиски	г
3879	сосиски из куриного фарша	шт.
3880	сосиски копченые	г
3881	соус	г
3882	соус black bean	ст. л.
3883	соус sambal oelek	ч. л.
3884	соус барбекю	г
3885	соус краснодарский	г
3886	соус красный острый	г
3887	соус мирин	по вкусу
3888	соус наршараб	г
3889	соус острый	г
3890	соус песто	по вкусу
3891	соус сацебели	г
3892	соус табаско	капля
3893	соус терияки	г
3894	соус ткемали	стакан
3895	соус ткемали благородный	г
3896	соус ткемали ранний	ст. л.
3897	соус устричный	ч. л.
3898	соус чили	г
3899	соус чили сладкий	ч. л.
3900	соус экзотический	г
3901	соя	г
3902	спагетти	г
3903	спагетти № 3	г
3904	спагетти № 5	г
3905	спагетти лунги	г
3906	спаржа	кг
3907	спаржа белая	г
3908	спаржа зеленая	г
3909	спаржа молодая	г
3910	спек	г
3911	спельта	стакан
3912	спельтовая (полбяная) мука	г
3913	специи	г
3914	спирт	г
3915	спирулина порошок	г
3916	спред	г
3917	ставрида	г
3918	стейк семги	шт.
3919	стейк семги	г
3920	стеклянная лапша	г
3921	страчателла	г
3922	судак	г
3923	судак филе	г
3924	судак филе на коже	г
3925	сулугуни	г
3926	сулугуни копченый	г
3927	сумах	г
3928	суповой набор	г
3929	сухари	по вкусу
3930	сухари белые	г
3931	сухари молотые	г
3932	сухари панировочные	г
3933	сухари ржаные	г
3934	сухарная крошка	г
3935	сухофрукты	г
3936	сухофрукты тропические	по вкусу
3937	сушки	г
3938	сыворотка	г
3939	сыр	г
3940	сыр tete de moine	г
3941	сыр Австрия блю	г
3942	сыр адыгейский	г
3943	сыр бри	г
3944	сыр буко	г
3945	сыр гауда	г
3946	сыр гойя	г
3947	сыр голландский	г
3948	сыр голубой	г
3949	сыр гравьера	г
3950	сыр джугас	г
3951	сыр домашний	г
3952	сыр дорблю	г
3953	сыр имеретинский	г
3954	сыр кефалотири	г
3955	сырки творожные	г
3956	сыр козий мягкий	г
3957	сыр козий твердый	г
3958	сыр колбасный	г
3959	сыр копченый	г
3960	сыр коттедж	г
3961	сыр Маскарпоне	г
3962	сыр мраморный	г
3963	сыр мягкий	по вкусу
3964	сыр овечий	г
3965	сыр панир	г
3966	сыр пеше миньон	г
3967	сыр плавленый	г
3968	сыр плавленый шоколадный	г
3969	сыр пластинками	г
3970	сыр полутвердый	г
3971	сыр провола	г
3972	сыр российский	г
3973	сыр скаморца	г
3974	сыр скаморца копченый	г
3975	сыр сливочный	г
3976	сыр с плесенью	г
3977	сыр с плесенью мягкий	г
3978	сыр твердый	г
3979	сыр филадельфия	г
3980	сыр фонтина	г
3981	сыр хаварти	г
3982	сыр швейцарский	г
3983	сычужный фермент	ч. л.
3984	таледжо	г
3985	тальолини	г
3986	тальятелле	г
3987	тальятелле-гнезда	шт.
3988	тамаринд	шт.
3989	тамариндовая паста	ч. л.
3990	тапиока	г
3991	тарталетки	по вкусу
3992	тартар	ст. л.
3993	тархун	г
3994	творог	г
3995	творог 18%	г
3996	творог 2%	г
3997	творог 5%	г
3998	творог 9%	г
3999	творог жирный	г
4000	творог зерненый	г
4001	творог обезжиренный	г
4002	творожная масса	г
4003	творожная паста	г
4004	творожный сыр	г
4005	творожный сыр соленый	г
4006	творожок клубничный	г
4007	текила	стакан
4008	телятина	по вкусу
4009	телятина вареная	г
4010	телячий фарш	г
4011	телячьи отбивные на косточке	шт.
4012	телячьи шницели	шт.
4013	телячьи эскалопы	г
4014	телячья вырезка	г
4015	телячья печень	г
4016	телячья щека	шт.
4017	тесто бездрожжевое	г
4018	тесто готовое	г
4019	тесто для вонтонов	г
4020	тесто для пиццы	шт.
4021	тесто дрожжевое	по вкусу
4022	тесто катаифи	г
4023	тесто макаронное	г
4024	тесто макаронное для лазаньи	г
4025	тесто пельменное	г
4026	тесто песочное	по вкусу
4027	тесто пресное	г
4028	тесто пряничное	г
4029	тесто слоеное	г
4030	тесто слоеное бездрожжевое	по вкусу
4031	тесто слоеное дрожжевое	кг
4032	тесто фило	г
4033	тилапия	г
4034	тилапия филе	г
4035	тильзитер	г
4036	тимьян	горсть
4037	тимьян лимонный	веточка
4038	тимьян свежий	по вкусу
4039	тимьян сушеный	г
4040	ткемали	г
4041	тмин	г
4042	тмин молотый	г
4043	томатная паста	г
4044	томатное пюре	г
4045	томатный концентрат	г
4046	томатный порошок	г
4047	томатный сок	г
4048	томатный соус	г
4049	томатный соус итальянский	г
4050	томатный соус острый	г
4051	томатный соус с базиликом	г
4052	тоник	бутылка
4053	топинамбур	г
4054	топленое масло	г
4055	тортильи	по вкусу
4056	тортильони	г
4057	тофу	г
4058	травы ароматные	г
4059	травы пряные с перцем	ч. л.
4060	травы сухие	г
4061	треска	г
4062	треска печень	г
4063	треска филе	г
4064	трюфель	г
4065	трюфельная крошка	г
4066	трюфельное масло	ст. л.
4067	трюфель черный	шт.
4068	тунец	по вкусу
4069	тунец консервированный	г
4070	тунец филе	г
4071	тушенка	г
4072	тыква	г
4073	тыквенное масло	шт.
4074	тыквенное пюре	г
4075	тыквенные семечки	г
4076	тюлька свежая	г
4077	угорь	г
4078	угорь копченый	г
4079	угурт	г
4080	укроп	г
4081	укропное семя	ч. л.
4082	укроп свежий	г
4083	укроп сушеный	г
4084	уксус	г
4085	уксус 9%	г
4086	уксус из сидра	ст. л.
4087	уксусная эссенция	г
4088	уксус столовый	г
4089	улитки	г
4090	улитки виноградные	шт.
4091	урюк	г
4092	устрицы	г
4093	утиная грудка	г
4094	утиная печень	г
4095	утиное филе	г
4096	утиные бедрышки	г
4097	утиные ножки	по вкусу
4098	утка	по вкусу
4099	утка печеная	г
4100	утка тушка	тушка
4101	уцхо-сунели	г
4102	фазан	г
4103	фарш (баранина и говядина)	г
4104	фарш (свинина и курица)	г
4105	фасоль	г
4106	фасоль белая	г
4107	фасоль белая консервированная	г
4108	фасоль белая лима	г
4109	фасоль зеленая стручковая	г
4110	фасоль кенийская	горсть
4111	фасоль кидни красная	г
4112	фасоль консервированная	г
4113	фасоль красная	г
4114	фасоль красная вареная	стакан
4115	фасоль красная консервированная	г
4116	фасоль молодая замороженная	г
4117	фасоль пинто	г
4118	фасоль спаржевая вареная	г
4119	фасоль стручковая	г
4120	фасоль стручковая замороженная	г
4121	фасоль стручковая консервированная	г
4122	фасоль черный глаз	г
4123	фейхоа	г
4124	фенхель	г
4125	фенхель семена	г
4126	фенхель семена молотые	г
4127	фестонате	г
4128	фета	г
4129	фетаки	г
4130	фетакса	г
4131	феттучине	г
4132	фиалки засахаренные	шт.
4133	фиалковый сироп	г
4134	физалис	по вкусу
4135	филе красного окуня	шт.
4136	филе лосося	г
4137	филе палтуса	шт.
4138	финики	г
4139	финики без косточек	стакан
4140	финики иранские	г
4141	финики иранские без косточек	шт.
4142	фисташки	г
4143	фисташки очищенные	г
4144	фисташки очищенные несоленые	горсть
4145	фисташки рубленые	г
4146	фисташковая мука	г
4147	фисташковая паста	г
4148	фисташковое масло	г
4149	фокачча	по вкусу
4150	форель	г
4151	форель вареная	г
4152	форель горячего копчения	г
4153	форель озерная свежая	шт.
4154	форель слабосоленая	г
4155	форель стейки	шт.
4156	форель филе	г
4157	форель холодного копчения	г
4158	фрикадельки	г
4159	фрукт дракона	шт.
4160	фруктовый сироп	г
4161	фруктовый сок	г
4162	фруктовый сок без сахара	стакан
4163	фруктоза	г
4164	фрукты	г
4165	фрукты консервированные	г
4166	фундук	г
4167	фундучная мука	г
4168	фунчоза	г
4169	халва	г
4170	халва ванильная	г
4171	халва подсолнечная	г
4172	халуми	г
4173	хамон	г
4174	хек	г
4175	хек филе	г
4176	херес	стакан
4177	хересный уксус	ч. л.
4178	хлеб	г
4179	хлеб 7 злаков	батон
4180	хлеб белый	г
4181	хлеб белый сухой	г
4182	хлеб бородинский	кусок
4183	хлеб датский ржаной	г
4184	хлеб для сэндвичей	г
4185	хлебная крошка	г
4186	хлеб ржаной	г
4187	хлеб серый	г
4188	хлеб с кунжутом	кусок
4189	хлеб цельнозерновой	г
4190	хлебцы пшенично-ржаные цельнозерновые	г
4191	хлопья 4 злака	г
4192	хлопья 5 злаков	г
4193	хлопья 7 злаков	ст. л.
4194	хлопья быстрого приготовления	стакан
4195	хлорид кальция	г
4196	хмели-сунели	г
4197	хмель	ст. л.
4198	хрен	г
4199	хрен протертый	г
4200	хрен со сливками	г
4201	хурма	г
4202	хурма спелая	г
4203	цесарка тушка	г
4204	цикорий	ч. л.
4314	шпроты в масле	г
4205	цитроновые цукаты	горсть
4206	цитрусовые цукаты	шт.
4207	цитрусовый свежевыжатый сок	мл
4208	цукаты	г
4209	цукини	г
4210	цукини цветы	шт.
4211	цыплята	г
4212	цыплята-корнишоны	шт.
4213	чабер	г
4214	чабрец	г
4215	чабрец сушеный	г
4216	чай дарджилинг	пакетик
4217	чай жасминовый	ст. л.
4218	чай зеленый	пакетик
4219	чай копченый лапсанг сушонг	г
4220	чай красный	г
4221	чай ройбуш	ст. л.
4222	чай черный	г
4223	чай черный крупнолистовой	ч. л.
4224	чай черный со специями	пакет
4225	чай эрл грей	стакан
4226	чатни манго	г
4227	чеддер	г
4228	черемуха	г
4229	черемуховая мука	г
4230	черемша	г
4231	черешневый джем	г
4232	черешня	г
4233	черешня консервированная без косточек	ст. л.
4234	черная смородина	г
4235	черника	г
4236	черника замороженная	г
4237	чернила каракатицы	г
4238	черничный джем	стакан
4239	чернослив	г
4240	чернослив без косточек	г
4241	чернослив вяленый	г
4242	чернослив копченый без косточек	г
4243	черносмородиновое варенье	г
4244	черносмородиновый джем	г
4245	чеснок	г
4246	чеснок молодой	г
4247	чеснок сушеный	г
4248	чесночная соль	щепотка
4249	чесночное масло	по вкусу
4250	чесночный порошок	г
4251	чечевица	г
4252	чечевица вареная	ст. л.
4253	чечевица зеленая	г
4254	чечевица красная	г
4255	чечил спагетти	г
4256	чиабатта	кусок
4257	чиа семена	г
4258	чипотле молотый	щепотка
4259	чипсы	г
4260	чоризо	г
4261	шалфей	г
4262	шалфей свежий	пучок
4263	шалфей сушеный	лист
4264	шампанское	г
4265	шампанское советское	стакан
4266	шампанское сухое	ст. л.
4267	шампиньоны	по вкусу
4268	шампиньоны замороженные	г
4269	шампиньоны консервированные	г
4270	шампиньоны маринованные	г
4271	шампиньоны свежие	г
4272	шафран	г
4273	шафран имеретинский	г
4274	шафран молотый	ч. л.
4275	шафран нити	шт.
4276	шелковица	г
4277	шелковица сушеная	г
4278	шиповник	г
4279	шиповниковый сироп	г
4280	шнапс	г
4281	шнитт-лук	стебель
4282	шоколад	г
4283	шоколад белый	г
4284	шоколад горький с апельсиновой цедрой	г
4285	шоколад молочный	г
4286	шоколад мятный	г
4287	шоколадная паста	г
4288	шоколадная стружка	г
4289	шоколадное масло	г
4290	шоколадно-ореховая паста	г
4291	шоколадные горошины	г
4292	шоколадные капли	г
4293	шоколадные капли белые	г
4294	шоколадные конфеты	г
4295	шоколадные хлопья	г
4296	шоколадные шарики из готовых завтраков	горсть
4297	шоколадный ликер	г
4298	шоколадный сироп	г
4299	шоколадный соус	г
4300	шоколад полусладкий	г
4301	шоколад с орехами	г
4302	шоколад черный горький	г
4303	шоколад черный горький 70%	г
4304	шоколад черный горький 75%	ч. л.
4305	шоколад черный горький 85%	г
4306	шортенинг	стакан
4307	шпик	шт.
4308	шпик копченый	г
4309	шпинат	г
4310	шпинат замороженный	г
4311	шпинат молодой	г
4312	шпинат свежий	г
4313	шпроты	г
4315	шрот	г
4316	щавель замороженный	г
4317	щавель свежий	веточка
4318	щука	г
4319	щука филе	г
4320	эгг-ног	стакан
4321	эдам	г
4322	эль	мл
4323	эмменталь	г
4324	эскалоп	г
4325	эстрагон	г
4326	эстрагон сушеный	веточка
4327	яблоки	г
4328	яблоки антоновка	кг
4329	яблоки гала	г
4330	яблоки голден	г
4331	яблоки гренни смит	кг
4332	яблоки зеленые	г
4333	яблоки красные	шт.
4334	яблоки моченые	шт.
4335	яблоки нетвердых сортов	г
4336	яблоки сладкие	г
4337	яблоки сушеные	г
4338	яблочная эссенция	ч. л.
4339	яблочное варенье	г
4340	яблочное повидло	г
4341	яблочное пюре	г
4342	яблочные чипсы	стакан
4343	яблочный джем	г
4344	яблочный сироп	ст. л.
4345	яблочный сок	г
4346	яблочный соус	ст. л.
4347	яблочный уксус	г
4348	ягнятина	г
4349	ягнятина кострец	г
4350	ягнятина фарш	г
4351	ягнячьи отбивные на косточке	шт.
4352	ягнячья голень нарубленная	г
4353	ягнячья корейка	г
4354	ягодное варенье	ст. л.
4355	ягодное желе	г
4356	ягодный сироп	г
4357	ягодный сок	г
4358	ягодный соус кислый	г
4359	ягоды	г
4360	ягоды вяленые	по вкусу
4361	ягоды замороженные	г
4362	ягоды лесные	г
4363	ягоды лесные замороженные	г
4364	яичные белки	г
4365	яичные желтки	г
4366	яичные желтки вареные	шт.
4367	яичные желтки крупные	г
4368	яичный меланж	г
4369	яичный порошок	ст. л.
4370	яйца куриные	г
4371	яйца куриные крупные	г
4372	яйца перепелиные	г
4373	японская крошка панко	г
4374	ячменные хлопья	г
4375	ячмень	г
4376	ячневая крупа	г
\.


--
-- Data for Name: api_ingredientrecipe; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.api_ingredientrecipe (id, amount, ingredient_id, recipe_id) FROM stdin;
2	1000	4072	1
3	250	3629	2
4	500	3223	2
5	30	3735	2
6	10	3873	2
7	3500	2193	3
8	2500	3735	3
9	300	3193	3
10	1000	3124	4
11	300	3735	4
12	600	2744	5
13	300	3223	5
14	100	3826	5
15	20	3284	5
16	100	2568	5
17	20	4245	5
18	20	3873	5
19	5	3473	5
20	1000	2466	6
21	1000	2420	6
22	30	4245	6
23	100	3067	6
24	20	3494	6
25	1	4036	6
26	10	3004	6
27	8	3472	6
28	100	2308	6
29	50	3835	6
30	50	3350	6
31	60	3269	6
32	50	3608	6
33	100	3241	6
34	200	3078	6
35	500	4267	6
36	50	3873	6
37	400	4327	7
38	100	3179	7
39	50	3826	7
\.


--
-- Data for Name: api_recipe; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.api_recipe (id, name, image, text, cooking_time, pub_date, author_id) FROM stdin;
4	Малиновое варенье	recipes/temp_AuD5Kfz.jpeg	- Сухую малину перебрать и очистить от цветоножек. Разложить в чистые сухие банки до верху пересыпая сахаром. 3 банки по 0,5л. Сахар, примерно по 100г на банку. Вы можете положить больше сахара, если привыкли к более густому сиропу.\nОставить на ночь в холодильнике для выделения сока.\n\n- На следующий день ягода пустила достаточно сока, уплотнилась и осела. Малину с сиропом из одной банки распределяем по двум неполным. Закрываем неплотно крышкой.\n\n- Ставим банки в кастрюлю. Наполняем ее теплой водой до уровня "плечиков" банок. На сильном огне доводим до кипения воды. Кипятим 5 минут. Быстро закручиваем крышки. Если на дне осталось немного сахара, аккуратно вертим банку до его быстрого растворения.\n\n-Хранить в прохладном месте.	10	2023-06-18 11:48:02.311087+00	1
6	Говядина по-бургундски	recipes/temp.webp	- Говядину нарезать крупными кубиками, репчатый лук нарезать полукольцами, чеснок раздавить плоской стороной ножа. Положить мясо, лук, чеснок, веточки петрушки, лавровый лист, тимьян, черный перец горошком в глубокую миску и залить красным вином. Перемешать и поставить в холодильник на сутки мариноваться. Из готового маринада достать мясо, обсушить кусочки на салфетке. Бекон нарезать мелкими кубиками и обжарить в сковороде на растительном масле до золотистой корочки.\n\n- Извлечь бекон из сковороды и в жире и масле обжарить говядину до образования коричневой корочки. Добавить муки, перемешать и жарить еще минуту.\n\n\n-Извлечь мясо и переложить его в глубокий сотейник. Процедить через сито маринад и добавить его к мясу. Высыпать в сотейник жареный бекон и поставить мясо тушиться.\n\n-Примерно через полтора часа разогреть сковородку и на смеси оливкового и сливочного масел обжарить крупно нарезанную морковь до золотистой корочки. Пересыпать морковь к мясу, тушить еще двадцать минут.\n\n- После чего обжарить на том же масле в той же сковородке очищенный лук-шалот целыми маленькими луковицами. Пересыпать лук в сотейник и тушить еще двадцать минут.\n\n- Разрезать шампиньоны на половинки и обжарить их во все той же сковородке. Добавить в сотейник к мясу и луку. Попробовать бульон, посолить, поперчить. Тушить еще двадцать-двадцать пять минут. Снять с огня и подавать с картофельным пюре или рисом.	180	2023-06-18 11:57:45.149352+00	1
7	Запеченные яблоки	recipes/temp_wruFpcp.jpeg	- Подготовить продукты. Включить духовку.\n\n- Из яблок удалить сердцевину с семенами.\n\n- Разместить яблоки в глубокой форме или на фольге с бортиками. Облить яблоки жидким медом.\nЗапекать яблоки с мёдом при температуре 180-190 градусов до мягкости, 30-40 минут (в зависимости от сорта и размера).\n\n- Готовые яблоки, запечённые с мёдом, подать со сливками (или молоком).	50	2023-06-18 11:59:48.59259+00	1
3	Абрикосовое варенье с миндалем	recipes/temp_djr9My9.jpeg	- Абрикосы отделить от косточек и разрезать на половинки. Протушить без воды в микроволновке 10 минут (частями).\r\n\r\n- Смешать полученную массу с сахаром и довести до кипения в кастрюле для варенья (с толстым дном).\r\n\r\n- Всыпать миндаль и варить на слабом огне, помешивая. Как только появилась пенка — проварить еще 10 минут.\r\n\r\n- Разложить абрикосово-ореховую массу в стерилизованные банки, закатать и перевернуть вверх дном.	20	2023-06-18 11:46:26.196526+00	2
1	Тыквенное пюре	recipes/temp.jpeg	- Разрежьте тыкву пополам. Удалите семена и волокна.\r\n\r\n- Разогрейте духовку до 200 градусов.\r\n\r\n- Выложите половинки тыквы на противень, разрезанной стороной вверх. \r\n\r\n- Отделите мякоть от кожицы и переложите в миску. Разомните вилкой или измельчите блендером.	60	2023-06-18 11:42:10.5616+00	3
2	Рисовая каша на молоке	recipes/temp_MBJJWKy.jpeg	- Промыть рис, засыпать в кипящую воду и варить 5–8 минут, после чего выложить на дуршлаг или решето.\r\n\r\n- Как только вода стечет, переложить рис в кастрюлю с горячим молоком и, помешивая, варить его на слабом огне 15 минут, затем положить сахар и соль, размешать, накрыть крышкой и для упревания поставить на 10–15 минут на водяную баню.\r\n\r\n- При подаче на стол можно в кашу положить сливочное масло. Посыпать корицей по вкусу.	30	2023-06-18 11:44:35.398824+00	3
5	Гратен дофинуа	recipes/temp_AXvSf9o.jpeg	- Очистить картошку и нарезать ее тонкими дольками (2–3 мм) — ножом, на терке, удобнее всего на мандолине. Тонко настрогав картошку, не мойте ее, чтобы с водой не выплеснуть крахмал, который понадобится для сгущения сливок.\r\n\r\n- В кастрюле на среднем огне довести до кипения молоко и сливки. Добавить картошку и перемешать, чтобы картофель покрылся слоем сливок. Приправить мускатным орехом, солью и перцем.\r\n\r\n-Убавить огонь и варить восемь-десять минут, помешивая, чтобы смесь не прилипла ко дну кастрюли. После того как картошка будет готова, что легко проверить на вкус, вмешайте в альянс молока, картофеля и сливок тертый сыр и затем снимите кастрюлю с огня.\r\n\r\n- Раздавить чеснок и смешать его с картофелем и всем прочим. Смесь перелить в глубокую форму и поставить запекаться в духовку, разогретую до 120 градусов на двадцать пять минут.\r\n\r\n- Гратен готов, когда кончик острого ножа легко пронзает его (при этом нож не должен входить как в масло, какое-то невесомое сопротивление вы все-таки должны ощущать). Чтобы запеканка подрумянилась, поставьте ее на самую верхнюю полку в духовке и включите максимальный огонь примерно на минуту. Перед подачей дайте картофелю чуть-чуть остыть, чтобы сырно-сливочный соус слегка загустел.	65	2023-06-18 11:51:42.890099+00	2
\.


--
-- Data for Name: api_recipe_tags; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.api_recipe_tags (id, recipe_id, tag_id) FROM stdin;
3	1	1
4	1	2
5	2	1
6	3	2
7	3	3
8	4	1
9	4	2
10	5	2
11	5	3
12	6	2
13	6	3
14	7	1
15	7	2
16	7	3
\.


--
-- Data for Name: api_shoppinglist; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.api_shoppinglist (id, recipe_id, user_id) FROM stdin;
1	3	1
2	1	1
3	5	1
\.


--
-- Data for Name: api_tag; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.api_tag (id, name, color, slug) FROM stdin;
1	Завтрак	#DA70D6	breakfast
2	Обед	#3CB371	lunch
3	Ужин	#5CACEE	dinner
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Token	6	add_token
22	Can change Token	6	change_token
23	Can delete Token	6	delete_token
24	Can view Token	6	view_token
25	Can add token	7	add_tokenproxy
26	Can change token	7	change_tokenproxy
27	Can delete token	7	delete_tokenproxy
28	Can view token	7	view_tokenproxy
29	Can add Ингредиент	8	add_ingredient
30	Can change Ингредиент	8	change_ingredient
31	Can delete Ингредиент	8	delete_ingredient
32	Can view Ингредиент	8	view_ingredient
33	Can add Количество ингредиента	9	add_ingredientrecipe
34	Can change Количество ингредиента	9	change_ingredientrecipe
35	Can delete Количество ингредиента	9	delete_ingredientrecipe
36	Can view Количество ингредиента	9	view_ingredientrecipe
37	Can add Рецепт	10	add_recipe
38	Can change Рецепт	10	change_recipe
39	Can delete Рецепт	10	delete_recipe
40	Can view Рецепт	10	view_recipe
41	Can add Тег	11	add_tag
42	Can change Тег	11	change_tag
43	Can delete Тег	11	delete_tag
44	Can view Тег	11	view_tag
45	Can add Список покупок	12	add_shoppinglist
46	Can change Список покупок	12	change_shoppinglist
47	Can delete Список покупок	12	delete_shoppinglist
48	Can view Список покупок	12	view_shoppinglist
49	Can add Избранное	13	add_favorite
50	Can change Избранное	13	change_favorite
51	Can delete Избранное	13	delete_favorite
52	Can view Избранное	13	view_favorite
53	Can add user	14	add_customuser
54	Can change user	14	change_customuser
55	Can delete user	14	delete_customuser
56	Can view user	14	view_customuser
57	Can add Подписка	15	add_subscription
58	Can change Подписка	15	change_subscription
59	Can delete Подписка	15	delete_subscription
60	Can view Подписка	15	view_subscription
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
67b09dc8a3405f2b71343ead3852c8acdad19a51	2023-06-18 11:21:09.249925+00	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2023-06-18 11:20:48.822763+00	2189	абрикосовое варенье	1	new through import_export	8	1
2	2023-06-18 11:20:48.82375+00	2190	абрикосовое пюре	1	new through import_export	8	1
3	2023-06-18 11:20:48.824217+00	2191	абрикосовый джем	1	new through import_export	8	1
4	2023-06-18 11:20:48.82458+00	2192	абрикосовый сок	1	new through import_export	8	1
5	2023-06-18 11:20:48.824945+00	2193	абрикосы	1	new through import_export	8	1
6	2023-06-18 11:20:48.825248+00	2194	абрикосы консервированные	1	new through import_export	8	1
7	2023-06-18 11:20:48.825575+00	2195	авокадо	1	new through import_export	8	1
8	2023-06-18 11:20:48.825865+00	2196	агава сироп	1	new through import_export	8	1
9	2023-06-18 11:20:48.826274+00	2197	агар-агар	1	new through import_export	8	1
10	2023-06-18 11:20:48.826548+00	2198	аграм	1	new through import_export	8	1
11	2023-06-18 11:20:48.826789+00	2199	аджика	1	new through import_export	8	1
12	2023-06-18 11:20:48.827027+00	2200	аджика зеленая	1	new through import_export	8	1
13	2023-06-18 11:20:48.827303+00	2201	айва	1	new through import_export	8	1
14	2023-06-18 11:20:48.827626+00	2202	айвовое пюре	1	new through import_export	8	1
15	2023-06-18 11:20:48.827916+00	2203	айран	1	new through import_export	8	1
16	2023-06-18 11:20:48.82819+00	2204	айсинг	1	new through import_export	8	1
17	2023-06-18 11:20:48.828464+00	2205	акула стейки	1	new through import_export	8	1
18	2023-06-18 11:20:48.828732+00	2206	алкоголь	1	new through import_export	8	1
19	2023-06-18 11:20:48.829026+00	2207	алкоголь крепкий	1	new through import_export	8	1
20	2023-06-18 11:20:48.82934+00	2208	алыча	1	new through import_export	8	1
21	2023-06-18 11:20:48.829598+00	2209	альбухара	1	new through import_export	8	1
22	2023-06-18 11:20:48.829838+00	2210	альмехи	1	new through import_export	8	1
23	2023-06-18 11:20:48.830104+00	2211	амарантовая мука	1	new through import_export	8	1
24	2023-06-18 11:20:48.830401+00	2212	ананасовый сироп	1	new through import_export	8	1
25	2023-06-18 11:20:48.830695+00	2213	ананасовый сок	1	new through import_export	8	1
26	2023-06-18 11:20:48.830984+00	2214	ананасы	1	new through import_export	8	1
27	2023-06-18 11:20:48.831268+00	2215	ананасы вяленые	1	new through import_export	8	1
28	2023-06-18 11:20:48.831566+00	2216	ананасы консервированные	1	new through import_export	8	1
29	2023-06-18 11:20:48.831827+00	2217	анис	1	new through import_export	8	1
30	2023-06-18 11:20:48.832064+00	2218	анис звездочки	1	new through import_export	8	1
31	2023-06-18 11:20:48.832328+00	2219	анисовый ликер	1	new through import_export	8	1
32	2023-06-18 11:20:48.832567+00	2220	анис семена	1	new through import_export	8	1
33	2023-06-18 11:20:48.832794+00	2221	анчоусы	1	new through import_export	8	1
34	2023-06-18 11:20:48.833021+00	2222	апельсиновая вода	1	new through import_export	8	1
35	2023-06-18 11:20:48.833271+00	2223	апельсиновая цедра	1	new through import_export	8	1
36	2023-06-18 11:20:48.833559+00	2224	апельсиновая эссенция	1	new through import_export	8	1
37	2023-06-18 11:20:48.833815+00	2225	апельсиновое варенье	1	new through import_export	8	1
38	2023-06-18 11:20:48.834048+00	2226	апельсиновые цукаты	1	new through import_export	8	1
39	2023-06-18 11:20:48.834292+00	2227	апельсиновый джем	1	new through import_export	8	1
40	2023-06-18 11:20:48.834557+00	2228	апельсиновый джем с имбирем	1	new through import_export	8	1
41	2023-06-18 11:20:48.834804+00	2229	апельсиновый ликер	1	new through import_export	8	1
42	2023-06-18 11:20:48.835192+00	2230	апельсиновый сироп	1	new through import_export	8	1
43	2023-06-18 11:20:48.835446+00	2231	апельсиновый сок	1	new through import_export	8	1
44	2023-06-18 11:20:48.835683+00	2232	апельсиновый сок свежевыжатый	1	new through import_export	8	1
45	2023-06-18 11:20:48.835917+00	2233	апельсиновый уксус	1	new through import_export	8	1
46	2023-06-18 11:20:48.836143+00	2234	апельсиновый экстракт	1	new through import_export	8	1
47	2023-06-18 11:20:48.836376+00	2235	апельсины	1	new through import_export	8	1
48	2023-06-18 11:20:48.836603+00	2236	апельсины красные	1	new through import_export	8	1
49	2023-06-18 11:20:48.83683+00	2237	апельсины крупные	1	new through import_export	8	1
50	2023-06-18 11:20:48.837054+00	2238	арахис	1	new through import_export	8	1
51	2023-06-18 11:20:48.837286+00	2239	арахис жареный	1	new through import_export	8	1
52	2023-06-18 11:20:48.83752+00	2240	арахисовая паста	1	new through import_export	8	1
53	2023-06-18 11:20:48.837752+00	2241	арахисовое масло	1	new through import_export	8	1
54	2023-06-18 11:20:48.83798+00	2242	арахис соленый	1	new through import_export	8	1
55	2023-06-18 11:20:48.838223+00	2243	арбузная мякоть	1	new through import_export	8	1
56	2023-06-18 11:20:48.838461+00	2244	арбузы	1	new through import_export	8	1
57	2023-06-18 11:20:48.838712+00	2245	аргановое масло	1	new through import_export	8	1
58	2023-06-18 11:20:48.838958+00	2246	аришта	1	new through import_export	8	1
59	2023-06-18 11:20:48.839227+00	2247	ароматизатор	1	new through import_export	8	1
60	2023-06-18 11:20:48.839478+00	2248	ароматизатор "ананас"	1	new through import_export	8	1
61	2023-06-18 11:20:48.839704+00	2249	ароматизатор "вишня"	1	new through import_export	8	1
62	2023-06-18 11:20:48.839933+00	2250	ароматизатор "малина"	1	new through import_export	8	1
63	2023-06-18 11:20:48.840168+00	2251	ароматизатор "ром"	1	new through import_export	8	1
64	2023-06-18 11:20:48.840455+00	2252	артишоки	1	new through import_export	8	1
65	2023-06-18 11:20:48.840691+00	2253	артишоки в масле	1	new through import_export	8	1
66	2023-06-18 11:20:48.84093+00	2254	артишоки маринованные	1	new through import_export	8	1
67	2023-06-18 11:20:48.841155+00	2255	аспирин	1	new through import_export	8	1
68	2023-06-18 11:20:48.841379+00	2256	ассорти мясное	1	new through import_export	8	1
69	2023-06-18 11:20:48.841815+00	2257	ассорти овощное	1	new through import_export	8	1
70	2023-06-18 11:20:48.842051+00	2258	ассорти фруктовое	1	new through import_export	8	1
71	2023-06-18 11:20:48.842276+00	2259	ассорти ягодное	1	new through import_export	8	1
72	2023-06-18 11:20:48.842544+00	2260	аши	1	new through import_export	8	1
73	2023-06-18 11:20:48.842828+00	2261	багет	1	new through import_export	8	1
74	2023-06-18 11:20:48.843072+00	2262	багет вчерашний	1	new through import_export	8	1
75	2023-06-18 11:20:48.843485+00	2263	багет мини	1	new through import_export	8	1
76	2023-06-18 11:20:48.843733+00	2264	бадан	1	new through import_export	8	1
77	2023-06-18 11:20:48.843959+00	2265	бадьян	1	new through import_export	8	1
78	2023-06-18 11:20:48.844212+00	2266	базилик лимонный	1	new through import_export	8	1
79	2023-06-18 11:20:48.844468+00	2267	базилик свежий	1	new through import_export	8	1
80	2023-06-18 11:20:48.844712+00	2268	базилик сушеный	1	new through import_export	8	1
81	2023-06-18 11:20:48.844957+00	2269	базилик тайский	1	new through import_export	8	1
82	2023-06-18 11:20:48.845203+00	2270	базилик фиолетовый	1	new through import_export	8	1
83	2023-06-18 11:20:48.845455+00	2271	баклажаны	1	new through import_export	8	1
84	2023-06-18 11:20:48.845682+00	2272	баклажаны мини	1	new through import_export	8	1
85	2023-06-18 11:20:48.845912+00	2273	баклажаны тайские	1	new through import_export	8	1
86	2023-06-18 11:20:48.846149+00	2274	балык	1	new through import_export	8	1
87	2023-06-18 11:20:48.8464+00	2275	бальзам	1	new through import_export	8	1
88	2023-06-18 11:20:48.846699+00	2276	бальзамический крем	1	new through import_export	8	1
89	2023-06-18 11:20:48.846948+00	2277	бальзамический соус	1	new through import_export	8	1
90	2023-06-18 11:20:48.847197+00	2278	бальзамический уксус	1	new through import_export	8	1
91	2023-06-18 11:20:48.847491+00	2279	бальзам рижский черный	1	new through import_export	8	1
92	2023-06-18 11:20:48.847771+00	2280	бамия	1	new through import_export	8	1
93	2023-06-18 11:20:48.848012+00	2281	банановое пюре	1	new through import_export	8	1
94	2023-06-18 11:20:48.848271+00	2282	банановые чипсы	1	new through import_export	8	1
95	2023-06-18 11:20:48.848562+00	2283	банановый зеленый сироп	1	new through import_export	8	1
96	2023-06-18 11:20:48.848808+00	2284	банановый ликер	1	new through import_export	8	1
97	2023-06-18 11:20:48.84906+00	2285	бананы	1	new through import_export	8	1
98	2023-06-18 11:20:48.849305+00	2286	бананы мини	1	new through import_export	8	1
99	2023-06-18 11:20:48.84957+00	2287	барабулька	1	new through import_export	8	1
100	2023-06-18 11:20:48.849814+00	2288	бараний ливер	1	new through import_export	8	1
101	2023-06-18 11:20:48.850039+00	2289	бараний окорок на косточке	1	new through import_export	8	1
102	2023-06-18 11:20:48.850275+00	2290	бараний фарш	1	new through import_export	8	1
103	2023-06-18 11:20:48.850513+00	2291	баранина	1	new through import_export	8	1
104	2023-06-18 11:20:48.850766+00	2292	баранки	1	new through import_export	8	1
105	2023-06-18 11:20:48.851009+00	2293	бараньи антрекоты	1	new through import_export	8	1
106	2023-06-18 11:20:48.851233+00	2294	бараньи голяшки	1	new through import_export	8	1
107	2023-06-18 11:20:48.851461+00	2295	бараньи потроха	1	new through import_export	8	1
108	2023-06-18 11:20:48.85192+00	2296	бараньи ребрышки	1	new through import_export	8	1
109	2023-06-18 11:20:48.85219+00	2297	баранья лопатка	1	new through import_export	8	1
110	2023-06-18 11:20:48.852438+00	2298	баранья нога	1	new through import_export	8	1
111	2023-06-18 11:20:48.852674+00	2299	баранья печень	1	new through import_export	8	1
112	2023-06-18 11:20:48.852897+00	2300	барбарис	1	new through import_export	8	1
113	2023-06-18 11:20:48.853125+00	2301	барбарис вяленый	1	new through import_export	8	1
114	2023-06-18 11:20:48.853348+00	2302	барбарис молотый	1	new through import_export	8	1
115	2023-06-18 11:20:48.85357+00	2303	бастурма	1	new through import_export	8	1
116	2023-06-18 11:20:48.853793+00	2304	батат	1	new through import_export	8	1
117	2023-06-18 11:20:48.854047+00	2305	батон	1	new through import_export	8	1
118	2023-06-18 11:20:48.854304+00	2306	батончики шоколадные	1	new through import_export	8	1
119	2023-06-18 11:20:48.854577+00	2307	безе	1	new through import_export	8	1
120	2023-06-18 11:20:48.854816+00	2308	бекон	1	new through import_export	8	1
121	2023-06-18 11:20:48.855046+00	2309	бекон варено-копченый	1	new through import_export	8	1
122	2023-06-18 11:20:48.855271+00	2310	бекон сырокопченый	1	new through import_export	8	1
123	2023-06-18 11:20:48.855529+00	2311	белорыбица	1	new through import_export	8	1
124	2023-06-18 11:20:48.855765+00	2312	бирнель	1	new through import_export	8	1
125	2023-06-18 11:20:48.856038+00	2313	бисквик смесь готовая	1	new through import_export	8	1
126	2023-06-18 11:20:48.856285+00	2314	бисквит	1	new through import_export	8	1
127	2023-06-18 11:20:48.856524+00	2315	бисквитная крошка	1	new through import_export	8	1
128	2023-06-18 11:20:48.856747+00	2316	бисквитный корж	1	new through import_export	8	1
129	2023-06-18 11:20:48.856971+00	2317	бисквитный рулет	1	new through import_export	8	1
130	2023-06-18 11:20:48.857191+00	2318	бисквит шоколадный	1	new through import_export	8	1
131	2023-06-18 11:20:48.857415+00	2319	бифштекс	1	new through import_export	8	1
132	2023-06-18 11:20:48.857638+00	2320	блинная мука	1	new through import_export	8	1
133	2023-06-18 11:20:48.857866+00	2321	блины готовые	1	new through import_export	8	1
134	2023-06-18 11:20:48.858088+00	2322	блины овсяные	1	new through import_export	8	1
135	2023-06-18 11:20:48.858319+00	2323	бобовые ростки	1	new through import_export	8	1
136	2023-06-18 11:20:48.858541+00	2324	бобы	1	new through import_export	8	1
137	2023-06-18 11:20:48.858778+00	2325	бобы мунг пророщенные	1	new through import_export	8	1
138	2023-06-18 11:20:48.859004+00	2326	бобы тонка	1	new through import_export	8	1
139	2023-06-18 11:20:48.859229+00	2327	ботарга	1	new through import_export	8	1
140	2023-06-18 11:20:48.859458+00	2328	брезаола	1	new through import_export	8	1
141	2023-06-18 11:20:48.859826+00	2329	бренди	1	new through import_export	8	1
142	2023-06-18 11:20:48.860102+00	2330	брокколи замороженная	1	new through import_export	8	1
143	2023-06-18 11:20:48.860354+00	2331	брокколи свежая	1	new through import_export	8	1
144	2023-06-18 11:20:48.860579+00	2332	брусника замороженная	1	new through import_export	8	1
145	2023-06-18 11:20:48.860802+00	2333	брусника свежая	1	new through import_export	8	1
146	2023-06-18 11:20:48.861025+00	2334	брусника сушеная	1	new through import_export	8	1
147	2023-06-18 11:20:48.861253+00	2335	брусничное варенье	1	new through import_export	8	1
148	2023-06-18 11:20:48.861482+00	2336	брусничный соус	1	new through import_export	8	1
149	2023-06-18 11:20:48.861704+00	2337	брынза	1	new through import_export	8	1
150	2023-06-18 11:20:48.861932+00	2338	брынза сербская	1	new through import_export	8	1
151	2023-06-18 11:20:48.862163+00	2339	брюква	1	new through import_export	8	1
152	2023-06-18 11:20:48.862415+00	2340	буженина	1	new through import_export	8	1
153	2023-06-18 11:20:48.862734+00	2341	бузина сироп	1	new through import_export	8	1
154	2023-06-18 11:20:48.862983+00	2342	букет гарни	1	new through import_export	8	1
155	2023-06-18 11:20:48.863209+00	2343	булгур	1	new through import_export	8	1
156	2023-06-18 11:20:48.863442+00	2344	булка	1	new through import_export	8	1
157	2023-06-18 11:20:48.863686+00	2345	булка белая	1	new through import_export	8	1
158	2023-06-18 11:20:48.863969+00	2346	булка сдобная	1	new through import_export	8	1
159	2023-06-18 11:20:48.864251+00	2347	булочки	1	new through import_export	8	1
160	2023-06-18 11:20:48.864532+00	2348	булочки белые черствые	1	new through import_export	8	1
161	2023-06-18 11:20:48.864815+00	2349	булочки бриошь	1	new through import_export	8	1
162	2023-06-18 11:20:48.865062+00	2350	булочки вчерашние	1	new through import_export	8	1
163	2023-06-18 11:20:48.865292+00	2351	булочки для гамбургеров	1	new through import_export	8	1
164	2023-06-18 11:20:48.865547+00	2352	булочки зерновые	1	new through import_export	8	1
165	2023-06-18 11:20:48.865782+00	2353	булочки ржаные	1	new through import_export	8	1
166	2023-06-18 11:20:48.866041+00	2354	булочки с кунжутом	1	new through import_export	8	1
167	2023-06-18 11:20:48.866327+00	2355	бульон	1	new through import_export	8	1
168	2023-06-18 11:20:48.866572+00	2356	бульонные кубики	1	new through import_export	8	1
169	2023-06-18 11:20:48.866797+00	2357	бурбон	1	new through import_export	8	1
170	2023-06-18 11:20:48.867029+00	2358	Буррата	1	new through import_export	8	1
171	2023-06-18 11:20:48.867258+00	2359	буряк	1	new through import_export	8	1
172	2023-06-18 11:20:48.867498+00	2360	бусинки кондитерские	1	new through import_export	8	1
173	2023-06-18 11:20:48.867742+00	2361	бусинки кондитерские серебряные	1	new through import_export	8	1
174	2023-06-18 11:20:48.868127+00	2362	бычий хвост	1	new through import_export	8	1
175	2023-06-18 11:20:48.868376+00	2363	ванилин	1	new through import_export	8	1
176	2023-06-18 11:20:48.868627+00	2364	ваниль в стручках	1	new through import_export	8	1
177	2023-06-18 11:20:48.868869+00	2365	ванильная настойка	1	new through import_export	8	1
178	2023-06-18 11:20:48.869117+00	2366	ванильная эссенция	1	new through import_export	8	1
179	2023-06-18 11:20:48.869355+00	2367	ванильный порошок	1	new through import_export	8	1
180	2023-06-18 11:20:48.869578+00	2368	ванильный сироп	1	new through import_export	8	1
181	2023-06-18 11:20:48.869801+00	2369	ванильный экстракт	1	new through import_export	8	1
182	2023-06-18 11:20:48.870031+00	2370	варенье	1	new through import_export	8	1
183	2023-06-18 11:20:48.870259+00	2371	васаби	1	new through import_export	8	1
184	2023-06-18 11:20:48.870493+00	2372	вафельная крошка	1	new through import_export	8	1
185	2023-06-18 11:20:48.870714+00	2373	вафельные коржи	1	new through import_export	8	1
186	2023-06-18 11:20:48.870947+00	2374	вафельные трубочки	1	new through import_export	8	1
187	2023-06-18 11:20:48.871177+00	2375	вафли	1	new through import_export	8	1
188	2023-06-18 11:20:48.871402+00	2376	вафли шоколадные	1	new through import_export	8	1
189	2023-06-18 11:20:48.871626+00	2377	вермишель	1	new through import_export	8	1
190	2023-06-18 11:20:48.871896+00	2378	вермишель яичная	1	new through import_export	8	1
191	2023-06-18 11:20:48.872178+00	2379	вермут	1	new through import_export	8	1
192	2023-06-18 11:20:48.872437+00	2380	вермут белый	1	new through import_export	8	1
193	2023-06-18 11:20:48.872679+00	2381	вермут сухой	1	new through import_export	8	1
194	2023-06-18 11:20:48.872906+00	2382	ветчина	1	new through import_export	8	1
195	2023-06-18 11:20:48.873128+00	2383	ветчина вареная	1	new through import_export	8	1
196	2023-06-18 11:20:48.873354+00	2384	ветчина варено-копченая	1	new through import_export	8	1
197	2023-06-18 11:20:48.873586+00	2385	ветчина копченая	1	new through import_export	8	1
198	2023-06-18 11:20:48.873809+00	2386	ветчина пармская	1	new through import_export	8	1
199	2023-06-18 11:20:48.874037+00	2387	ветчина сырокопченая	1	new through import_export	8	1
200	2023-06-18 11:20:48.874261+00	2388	вешенки	1	new through import_export	8	1
201	2023-06-18 11:20:48.87449+00	2389	винегрет	1	new through import_export	8	1
202	2023-06-18 11:20:48.874711+00	2390	винный камень	1	new through import_export	8	1
203	2023-06-18 11:20:48.874942+00	2391	винный уксус	1	new through import_export	8	1
204	2023-06-18 11:20:48.875164+00	2392	винный уксус белый	1	new through import_export	8	1
205	2023-06-18 11:20:48.875404+00	2393	винный уксус красный	1	new through import_export	8	1
206	2023-06-18 11:20:48.875691+00	2394	винный уксус на чесноке	1	new through import_export	8	1
207	2023-06-18 11:20:48.876084+00	2395	винный уксус на эстрагоне	1	new through import_export	8	1
208	2023-06-18 11:20:48.876336+00	2396	вино белое	1	new through import_export	8	1
209	2023-06-18 11:20:48.876559+00	2397	вино белое полусладкое	1	new through import_export	8	1
210	2023-06-18 11:20:48.87678+00	2398	вино белое полусухое	1	new through import_export	8	1
211	2023-06-18 11:20:48.877005+00	2399	вино белое сладкое	1	new through import_export	8	1
212	2023-06-18 11:20:48.877226+00	2400	вино белое столовое	1	new through import_export	8	1
213	2023-06-18 11:20:48.877468+00	2401	вино белое сухое	1	new through import_export	8	1
214	2023-06-18 11:20:48.877696+00	2402	виноград	1	new through import_export	8	1
215	2023-06-18 11:20:48.877928+00	2403	виноград без косточек	1	new through import_export	8	1
216	2023-06-18 11:20:48.878155+00	2404	виноград белый	1	new through import_export	8	1
217	2023-06-18 11:20:48.878384+00	2405	виноград изабелла	1	new through import_export	8	1
218	2023-06-18 11:20:48.87861+00	2406	виноградное желе	1	new through import_export	8	1
219	2023-06-18 11:20:48.87884+00	2407	виноградные листья	1	new through import_export	8	1
220	2023-06-18 11:20:48.879065+00	2408	виноградные листья маринованные	1	new through import_export	8	1
221	2023-06-18 11:20:48.879292+00	2409	виноградные листья молодые	1	new through import_export	8	1
222	2023-06-18 11:20:48.879525+00	2410	виноградный сок	1	new through import_export	8	1
223	2023-06-18 11:20:48.879756+00	2411	виноградный сок осветленный	1	new through import_export	8	1
224	2023-06-18 11:20:48.880011+00	2412	виноград синий	1	new through import_export	8	1
225	2023-06-18 11:20:48.880277+00	2413	виноград черный	1	new through import_export	8	1
226	2023-06-18 11:20:48.880581+00	2414	вино десертное	1	new through import_export	8	1
227	2023-06-18 11:20:48.880833+00	2415	вино игристое сухое	1	new through import_export	8	1
228	2023-06-18 11:20:48.881057+00	2416	вино красное	1	new through import_export	8	1
229	2023-06-18 11:20:48.881283+00	2417	вино красное полусладкое	1	new through import_export	8	1
230	2023-06-18 11:20:48.881534+00	2418	вино красное полусухое	1	new through import_export	8	1
231	2023-06-18 11:20:48.881795+00	2419	вино красное сладкое	1	new through import_export	8	1
232	2023-06-18 11:20:48.882037+00	2420	вино красное сухое	1	new through import_export	8	1
233	2023-06-18 11:20:48.882259+00	2421	вино крепленое	1	new through import_export	8	1
234	2023-06-18 11:20:48.882503+00	2422	вино розовое полусладкое	1	new through import_export	8	1
235	2023-06-18 11:20:48.882738+00	2423	вино розовое полусухое	1	new through import_export	8	1
236	2023-06-18 11:20:48.883004+00	2424	виски	1	new through import_export	8	1
237	2023-06-18 11:20:48.883232+00	2425	витамин C в порошке	1	new through import_export	8	1
238	2023-06-18 11:20:48.883457+00	2426	вишневая настойка	1	new through import_export	8	1
239	2023-06-18 11:20:48.88369+00	2427	вишневое варенье	1	new through import_export	8	1
240	2023-06-18 11:20:48.88413+00	2428	вишневые листья	1	new through import_export	8	1
241	2023-06-18 11:20:48.884385+00	2429	вишневый джем	1	new through import_export	8	1
242	2023-06-18 11:20:48.884609+00	2430	вишневый ликер	1	new through import_export	8	1
243	2023-06-18 11:20:48.884844+00	2431	вишневый сироп	1	new through import_export	8	1
244	2023-06-18 11:20:48.885079+00	2432	вишневый сок	1	new through import_export	8	1
245	2023-06-18 11:20:48.885303+00	2433	вишня	1	new through import_export	8	1
246	2023-06-18 11:20:48.885535+00	2434	вишня вяленая	1	new through import_export	8	1
247	2023-06-18 11:20:48.885761+00	2435	вишня замороженная	1	new through import_export	8	1
248	2023-06-18 11:20:48.885983+00	2436	вишня засахаренная кондитерская	1	new through import_export	8	1
249	2023-06-18 11:20:48.886205+00	2437	вишня коктейльная	1	new through import_export	8	1
250	2023-06-18 11:20:48.886437+00	2438	вишня мараскино	1	new through import_export	8	1
251	2023-06-18 11:20:48.88666+00	2439	вишня, протертая с сахаром	1	new through import_export	8	1
252	2023-06-18 11:20:48.886886+00	2440	вода	1	new through import_export	8	1
253	2023-06-18 11:20:48.887111+00	2441	вода минеральная без газа	1	new through import_export	8	1
254	2023-06-18 11:20:48.887338+00	2442	вода минеральная газированная	1	new through import_export	8	1
255	2023-06-18 11:20:48.887592+00	2443	водка	1	new through import_export	8	1
256	2023-06-18 11:20:48.887866+00	2444	водка анисовая	1	new through import_export	8	1
257	2023-06-18 11:20:48.888105+00	2445	водоросли	1	new through import_export	8	1
258	2023-06-18 11:20:48.888334+00	2446	вустерширский соус	1	new through import_export	8	1
259	2023-06-18 11:20:48.888594+00	2447	галангал корень	1	new through import_export	8	1
260	2023-06-18 11:20:48.888837+00	2448	галеты	1	new through import_export	8	1
261	2023-06-18 11:20:48.889058+00	2449	гамбургер	1	new through import_export	8	1
262	2023-06-18 11:20:48.889278+00	2450	ганаш	1	new through import_export	8	1
263	2023-06-18 11:20:48.889515+00	2451	гарам масала	1	new through import_export	8	1
264	2023-06-18 11:20:48.889742+00	2452	гарнир	1	new through import_export	8	1
265	2023-06-18 11:20:48.889973+00	2453	гаспачо	1	new through import_export	8	1
266	2023-06-18 11:20:48.890202+00	2454	гвоздика	1	new through import_export	8	1
267	2023-06-18 11:20:48.890442+00	2455	гвоздика молотая	1	new through import_export	8	1
268	2023-06-18 11:20:48.890676+00	2456	герань листья	1	new through import_export	8	1
269	2023-06-18 11:20:48.890915+00	2457	геркулес	1	new through import_export	8	1
270	2023-06-18 11:20:48.891157+00	2458	глазурь	1	new through import_export	8	1
271	2023-06-18 11:20:48.891382+00	2459	глазурь белая	1	new through import_export	8	1
272	2023-06-18 11:20:48.891611+00	2460	глазурь готовая	1	new through import_export	8	1
273	2023-06-18 11:20:48.891982+00	2461	глазурь черная	1	new through import_export	8	1
274	2023-06-18 11:20:48.892222+00	2462	глазурь шоколадная белая	1	new through import_export	8	1
275	2023-06-18 11:20:48.892456+00	2463	глутамат натрия	1	new through import_export	8	1
276	2023-06-18 11:20:48.89268+00	2464	глюкоза	1	new through import_export	8	1
277	2023-06-18 11:20:48.892905+00	2465	глюкоза сироп	1	new through import_export	8	1
278	2023-06-18 11:20:48.893126+00	2466	говядина	1	new through import_export	8	1
279	2023-06-18 11:20:48.893354+00	2467	говядина на кости	1	new through import_export	8	1
280	2023-06-18 11:20:48.893582+00	2468	говяжий фарш	1	new through import_export	8	1
281	2023-06-18 11:20:48.893806+00	2469	говяжий язык	1	new through import_export	8	1
282	2023-06-18 11:20:48.894037+00	2470	говяжье сердце	1	new through import_export	8	1
283	2023-06-18 11:20:48.89426+00	2471	говяжьи бифштексы	1	new through import_export	8	1
284	2023-06-18 11:20:48.894528+00	2472	говяжьи голяшки	1	new through import_export	8	1
285	2023-06-18 11:20:48.894835+00	2473	говяжьи легкие	1	new through import_export	8	1
286	2023-06-18 11:20:48.895087+00	2474	говяжьи ребра	1	new through import_export	8	1
287	2023-06-18 11:20:48.895321+00	2475	говяжьи стейки рибай	1	new through import_export	8	1
288	2023-06-18 11:20:48.895564+00	2476	говяжья вырезка	1	new through import_export	8	1
289	2023-06-18 11:20:48.895821+00	2477	говяжья грудинка	1	new through import_export	8	1
290	2023-06-18 11:20:48.896056+00	2478	говяжья лопатка	1	new through import_export	8	1
291	2023-06-18 11:20:48.896282+00	2479	говяжья мозговая кость	1	new through import_export	8	1
292	2023-06-18 11:20:48.896516+00	2480	говяжья мякоть	1	new through import_export	8	1
293	2023-06-18 11:20:48.896742+00	2481	говяжья печень	1	new through import_export	8	1
294	2023-06-18 11:20:48.896962+00	2482	говяжья черева	1	new through import_export	8	1
295	2023-06-18 11:20:48.897185+00	2483	говяжья шейка	1	new through import_export	8	1
296	2023-06-18 11:20:48.897404+00	2484	годжи	1	new through import_export	8	1
297	2023-06-18 11:20:48.897627+00	2485	голец филе	1	new through import_export	8	1
298	2023-06-18 11:20:48.897849+00	2486	голубика	1	new through import_export	8	1
299	2023-06-18 11:20:48.898068+00	2487	голубика замороженная	1	new through import_export	8	1
300	2023-06-18 11:20:48.898288+00	2488	голубь	1	new through import_export	8	1
301	2023-06-18 11:20:48.898517+00	2489	горбуша	1	new through import_export	8	1
302	2023-06-18 11:20:48.898739+00	2490	горбуша в собственном соку	1	new through import_export	8	1
303	2023-06-18 11:20:48.898979+00	2491	горбуша филе	1	new through import_export	8	1
304	2023-06-18 11:20:48.899199+00	2492	горгонзола	1	new through import_export	8	1
305	2023-06-18 11:20:48.899441+00	2493	горгонзола пиканте	1	new through import_export	8	1
306	2023-06-18 11:20:48.899845+00	2494	горох	1	new through import_export	8	1
307	2023-06-18 11:20:48.900123+00	2495	горох колотый	1	new through import_export	8	1
308	2023-06-18 11:20:48.900365+00	2496	гороховые ростки	1	new through import_export	8	1
309	2023-06-18 11:20:48.900592+00	2497	гороховый суп	1	new through import_export	8	1
310	2023-06-18 11:20:48.900817+00	2498	горошек зеленый	1	new through import_export	8	1
311	2023-06-18 11:20:48.901038+00	2499	горошек зеленый замороженный	1	new through import_export	8	1
312	2023-06-18 11:20:48.901261+00	2500	горошек зеленый консервированный	1	new through import_export	8	1
313	2023-06-18 11:20:48.9015+00	2501	горошек стручковый свежий	1	new through import_export	8	1
314	2023-06-18 11:20:48.901721+00	2502	горчица	1	new through import_export	8	1
315	2023-06-18 11:20:48.901943+00	2503	горчица дижонская	1	new through import_export	8	1
316	2023-06-18 11:20:48.902168+00	2504	горчица дижонская с медом	1	new through import_export	8	1
317	2023-06-18 11:20:48.902415+00	2505	горчица желтая семена	1	new through import_export	8	1
318	2023-06-18 11:20:48.902655+00	2506	горчица острая	1	new through import_export	8	1
319	2023-06-18 11:20:48.902879+00	2507	горчица русская	1	new through import_export	8	1
320	2023-06-18 11:20:48.903101+00	2508	горчица семена	1	new through import_export	8	1
321	2023-06-18 11:20:48.903338+00	2509	горчица с зернами	1	new through import_export	8	1
322	2023-06-18 11:20:48.903609+00	2510	горчица сухая	1	new through import_export	8	1
323	2023-06-18 11:20:48.903853+00	2511	горчица французская	1	new through import_export	8	1
324	2023-06-18 11:20:48.90408+00	2512	горчица цитрусовая	1	new through import_export	8	1
325	2023-06-18 11:20:48.904302+00	2513	горчичное масло	1	new through import_export	8	1
326	2023-06-18 11:20:48.904542+00	2514	горчичный порошок	1	new through import_export	8	1
327	2023-06-18 11:20:48.904762+00	2515	грана падано	1	new through import_export	8	1
328	2023-06-18 11:20:48.904982+00	2516	гранатные зерна	1	new through import_export	8	1
329	2023-06-18 11:20:48.905203+00	2517	гранатовая паста	1	new through import_export	8	1
330	2023-06-18 11:20:48.905435+00	2518	гранатовый сироп	1	new through import_export	8	1
331	2023-06-18 11:20:48.90566+00	2519	гранатовый сок	1	new through import_export	8	1
332	2023-06-18 11:20:48.905881+00	2520	гранатовый сок свежевыжатый	1	new through import_export	8	1
333	2023-06-18 11:20:48.906115+00	2521	гранатовый соус	1	new through import_export	8	1
334	2023-06-18 11:20:48.90634+00	2522	гранаты	1	new through import_export	8	1
335	2023-06-18 11:20:48.906563+00	2523	гранита	1	new through import_export	8	1
336	2023-06-18 11:20:48.9068+00	2524	гранола с орехами	1	new through import_export	8	1
337	2023-06-18 11:20:48.907025+00	2525	граппа	1	new through import_export	8	1
338	2023-06-18 11:20:48.907402+00	2526	гратен	1	new through import_export	8	1
339	2023-06-18 11:20:48.907663+00	2527	грейпфрутовая цедра	1	new through import_export	8	1
340	2023-06-18 11:20:48.907891+00	2528	грейпфрутовый сок	1	new through import_export	8	1
341	2023-06-18 11:20:48.908112+00	2529	грейпфруты	1	new through import_export	8	1
342	2023-06-18 11:20:48.90836+00	2530	грейпфруты розовые	1	new through import_export	8	1
343	2023-06-18 11:20:48.908611+00	2531	гренадин	1	new through import_export	8	1
344	2023-06-18 11:20:48.908892+00	2532	гренки	1	new through import_export	8	1
345	2023-06-18 11:20:48.909137+00	2533	грецкие орехи	1	new through import_export	8	1
346	2023-06-18 11:20:48.909363+00	2534	грецкие орехи рубленые	1	new through import_export	8	1
347	2023-06-18 11:20:48.909603+00	2535	гречневая крупа	1	new through import_export	8	1
348	2023-06-18 11:20:48.909851+00	2536	гречневая крупа зеленая	1	new through import_export	8	1
349	2023-06-18 11:20:48.910131+00	2537	гречневая лапша соба	1	new through import_export	8	1
350	2023-06-18 11:20:48.910377+00	2538	гречневая мука	1	new through import_export	8	1
351	2023-06-18 11:20:48.910603+00	2539	гречневое молоко	1	new through import_export	8	1
352	2023-06-18 11:20:48.910829+00	2540	гречневые хлопья	1	new through import_export	8	1
353	2023-06-18 11:20:48.911053+00	2541	грибы	1	new through import_export	8	1
354	2023-06-18 11:20:48.911273+00	2542	грибы белые	1	new through import_export	8	1
355	2023-06-18 11:20:48.911568+00	2543	грибы белые замороженные	1	new through import_export	8	1
356	2023-06-18 11:20:48.91183+00	2544	грибы белые маринованные	1	new through import_export	8	1
357	2023-06-18 11:20:48.912083+00	2545	грибы белые сухие	1	new through import_export	8	1
358	2023-06-18 11:20:48.912324+00	2546	грибы замороженные	1	new through import_export	8	1
359	2023-06-18 11:20:48.912581+00	2547	грибы замороженные (опята и маслята)	1	new through import_export	8	1
360	2023-06-18 11:20:48.912866+00	2548	грибы лесные	1	new through import_export	8	1
361	2023-06-18 11:20:48.913112+00	2549	грибы маринованные	1	new through import_export	8	1
362	2023-06-18 11:20:48.913355+00	2550	грибы свежие	1	new through import_export	8	1
363	2023-06-18 11:20:48.913589+00	2551	грибы соленые	1	new through import_export	8	1
364	2023-06-18 11:20:48.913817+00	2552	грибы соломенные консервированные	1	new through import_export	8	1
365	2023-06-18 11:20:48.914049+00	2553	грибы сухие	1	new through import_export	8	1
366	2023-06-18 11:20:48.914275+00	2554	грибы шиитаке	1	new through import_export	8	1
367	2023-06-18 11:20:48.914512+00	2555	грибы шиитаке сухие	1	new through import_export	8	1
368	2023-06-18 11:20:48.914736+00	2556	гриль	1	new through import_export	8	1
369	2023-06-18 11:20:48.914961+00	2557	гриссини	1	new through import_export	8	1
370	2023-06-18 11:20:48.915183+00	2558	грудинка	1	new through import_export	8	1
371	2023-06-18 11:20:48.915575+00	2559	грудинка варено-копченая	1	new through import_export	8	1
372	2023-06-18 11:20:48.915818+00	2560	грудинка копченая	1	new through import_export	8	1
373	2023-06-18 11:20:48.916052+00	2561	грушевое пюре	1	new through import_export	8	1
374	2023-06-18 11:20:48.91628+00	2562	грушевый ликер	1	new through import_export	8	1
375	2023-06-18 11:20:48.916522+00	2563	грушевый сироп	1	new through import_export	8	1
376	2023-06-18 11:20:48.916755+00	2564	грушевый сок	1	new through import_export	8	1
377	2023-06-18 11:20:48.916983+00	2565	грушевый уксус	1	new through import_export	8	1
378	2023-06-18 11:20:48.917219+00	2566	груши	1	new through import_export	8	1
379	2023-06-18 11:20:48.917455+00	2567	груши вяленые	1	new through import_export	8	1
380	2023-06-18 11:20:48.917682+00	2568	грюйер	1	new through import_export	8	1
381	2023-06-18 11:20:48.91791+00	2569	гуава	1	new through import_export	8	1
382	2023-06-18 11:20:48.918134+00	2570	гуанчиале	1	new through import_export	8	1
383	2023-06-18 11:20:48.918357+00	2571	гурьевская каша	1	new through import_export	8	1
384	2023-06-18 11:20:48.918582+00	2572	гусиная грудка копченая	1	new through import_export	8	1
385	2023-06-18 11:20:48.918811+00	2573	гусиная печень	1	new through import_export	8	1
386	2023-06-18 11:20:48.919035+00	2574	гусиный жир	1	new through import_export	8	1
387	2023-06-18 11:20:48.919261+00	2575	гусь	1	new through import_export	8	1
388	2023-06-18 11:20:48.91954+00	2576	гусь тушка	1	new through import_export	8	1
389	2023-06-18 11:20:48.919779+00	2577	дайкон	1	new through import_export	8	1
390	2023-06-18 11:20:48.92001+00	2578	детское питание	1	new through import_export	8	1
391	2023-06-18 11:20:48.92024+00	2579	джем	1	new through import_export	8	1
392	2023-06-18 11:20:48.920473+00	2580	джин	1	new through import_export	8	1
393	2023-06-18 11:20:48.920701+00	2581	джусай	1	new through import_export	8	1
394	2023-06-18 11:20:48.920933+00	2582	диоксид титана	1	new through import_export	8	1
395	2023-06-18 11:20:48.921156+00	2583	долма	1	new through import_export	8	1
396	2023-06-18 11:20:48.921386+00	2584	дорада	1	new through import_export	8	1
397	2023-06-18 11:20:48.921612+00	2585	дорада потрошеная с головой	1	new through import_export	8	1
398	2023-06-18 11:20:48.921838+00	2586	дорада с головой	1	new through import_export	8	1
399	2023-06-18 11:20:48.922068+00	2587	дорада тушка	1	new through import_export	8	1
400	2023-06-18 11:20:48.922337+00	2588	драже	1	new through import_export	8	1
401	2023-06-18 11:20:48.92262+00	2589	дрожжи домашние	1	new through import_export	8	1
402	2023-06-18 11:20:48.922871+00	2590	дрожжи свежие	1	new through import_export	8	1
403	2023-06-18 11:20:48.923103+00	2591	дрожжи сухие	1	new through import_export	8	1
404	2023-06-18 11:20:48.923499+00	2592	дубовая кора	1	new through import_export	8	1
405	2023-06-18 11:20:48.923741+00	2593	душица	1	new through import_export	8	1
406	2023-06-18 11:20:48.924281+00	2594	дыня	1	new through import_export	8	1
407	2023-06-18 11:20:48.92457+00	2595	ежевика	1	new through import_export	8	1
408	2023-06-18 11:20:48.924817+00	2596	ежевика замороженная	1	new through import_export	8	1
409	2023-06-18 11:20:48.92515+00	2597	ерш	1	new through import_export	8	1
410	2023-06-18 11:20:48.92544+00	2598	ёрш-носарь	1	new through import_export	8	1
411	2023-06-18 11:20:48.925711+00	2599	желатин	1	new through import_export	8	1
412	2023-06-18 11:20:48.925977+00	2600	желатин листовой	1	new through import_export	8	1
413	2023-06-18 11:20:48.926245+00	2601	желе	1	new through import_export	8	1
414	2023-06-18 11:20:48.926509+00	2602	желе для торта	1	new through import_export	8	1
415	2023-06-18 11:20:48.926739+00	2603	желирующее вещество	1	new through import_export	8	1
416	2023-06-18 11:20:48.926971+00	2604	желирующий сахар	1	new through import_export	8	1
417	2023-06-18 11:20:48.927222+00	2605	женьшень	1	new through import_export	8	1
418	2023-06-18 11:20:48.927484+00	2606	жидкий дым	1	new through import_export	8	1
419	2023-06-18 11:20:48.927759+00	2607	жимолость	1	new through import_export	8	1
420	2023-06-18 11:20:48.927994+00	2608	жир	1	new through import_export	8	1
421	2023-06-18 11:20:48.928242+00	2609	жир вытопленный	1	new through import_export	8	1
422	2023-06-18 11:20:48.928535+00	2610	жир кулинарный	1	new through import_export	8	1
423	2023-06-18 11:20:48.928781+00	2611	жир растительный	1	new through import_export	8	1
424	2023-06-18 11:20:48.929009+00	2612	заатар	1	new through import_export	8	1
425	2023-06-18 11:20:48.929237+00	2613	завтрак сухой	1	new through import_export	8	1
426	2023-06-18 11:20:48.929483+00	2614	завтрак сухой подушечки	1	new through import_export	8	1
427	2023-06-18 11:20:48.929719+00	2615	загуститель для сливок	1	new through import_export	8	1
428	2023-06-18 11:20:48.92994+00	2616	зайчатина	1	new through import_export	8	1
429	2023-06-18 11:20:48.930162+00	2617	закваска	1	new through import_export	8	1
430	2023-06-18 11:20:48.930383+00	2618	закваска вечная	1	new through import_export	8	1
431	2023-06-18 11:20:48.930612+00	2619	заменитель сахара	1	new through import_export	8	1
432	2023-06-18 11:20:48.930854+00	2620	заменитель сахара стевия	1	new through import_export	8	1
433	2023-06-18 11:20:48.931105+00	2621	заправка для салатов готовая	1	new through import_export	8	1
434	2023-06-18 11:20:48.931334+00	2622	зверобой	1	new through import_export	8	1
435	2023-06-18 11:20:48.931562+00	2623	зелень	1	new through import_export	8	1
436	2023-06-18 11:20:48.932029+00	2624	зелень рубленая	1	new through import_export	8	1
437	2023-06-18 11:20:48.932267+00	2625	земляника	1	new through import_export	8	1
438	2023-06-18 11:20:48.9325+00	2626	земляника замороженная	1	new through import_export	8	1
439	2023-06-18 11:20:48.93273+00	2627	зефир	1	new through import_export	8	1
440	2023-06-18 11:20:48.932957+00	2628	зира	1	new through import_export	8	1
441	2023-06-18 11:20:48.933184+00	2629	злаковые хлопья	1	new through import_export	8	1
442	2023-06-18 11:20:48.933426+00	2630	зубатка	1	new through import_export	8	1
443	2023-06-18 11:20:48.933647+00	2631	зубатка филе	1	new through import_export	8	1
444	2023-06-18 11:20:48.933883+00	2632	изолят соевого протеина	1	new through import_export	8	1
445	2023-06-18 11:20:48.934117+00	2633	изюм	1	new through import_export	8	1
446	2023-06-18 11:20:48.934352+00	2634	изюм без косточек	1	new through import_export	8	1
447	2023-06-18 11:20:48.934582+00	2635	изюм белый	1	new through import_export	8	1
448	2023-06-18 11:20:48.934803+00	2636	изюм черный	1	new through import_export	8	1
449	2023-06-18 11:20:48.935029+00	2637	икра	1	new through import_export	8	1
450	2023-06-18 11:20:48.935283+00	2638	икра вяленой рыбы	1	new through import_export	8	1
451	2023-06-18 11:20:48.93554+00	2639	икра горбуши зернистая	1	new through import_export	8	1
452	2023-06-18 11:20:48.935805+00	2640	икра красная	1	new through import_export	8	1
453	2023-06-18 11:20:48.936053+00	2641	икра красной рыбы мелкая	1	new through import_export	8	1
454	2023-06-18 11:20:48.93628+00	2642	икра летучей рыбы	1	new through import_export	8	1
455	2023-06-18 11:20:48.936514+00	2643	икра лосося	1	new through import_export	8	1
456	2023-06-18 11:20:48.936738+00	2644	икра мойвы	1	new through import_export	8	1
457	2023-06-18 11:20:48.93698+00	2645	икра палтуса	1	new through import_export	8	1
458	2023-06-18 11:20:48.937205+00	2646	икра судака	1	new through import_export	8	1
459	2023-06-18 11:20:48.937442+00	2647	икра черная	1	new through import_export	8	1
460	2023-06-18 11:20:48.93767+00	2648	имбирное варенье	1	new through import_export	8	1
461	2023-06-18 11:20:48.937915+00	2649	имбирное печенье	1	new through import_export	8	1
462	2023-06-18 11:20:48.938153+00	2650	имбирные цукаты	1	new through import_export	8	1
463	2023-06-18 11:20:48.938383+00	2651	имбирь	1	new through import_export	8	1
464	2023-06-18 11:20:48.938622+00	2652	имбирь засахаренный	1	new through import_export	8	1
465	2023-06-18 11:20:48.938853+00	2653	имбирь корень	1	new through import_export	8	1
466	2023-06-18 11:20:48.939104+00	2654	имбирь маринованный	1	new through import_export	8	1
467	2023-06-18 11:20:48.93939+00	2655	имбирь молотый	1	new through import_export	8	1
468	2023-06-18 11:20:48.939648+00	2656	индейка	1	new through import_export	8	1
469	2023-06-18 11:20:48.940027+00	2657	индейка голень	1	new through import_export	8	1
470	2023-06-18 11:20:48.940266+00	2658	индейка грудка	1	new through import_export	8	1
471	2023-06-18 11:20:48.9405+00	2659	индейка копченая	1	new through import_export	8	1
472	2023-06-18 11:20:48.940721+00	2660	индейка тушка	1	new through import_export	8	1
473	2023-06-18 11:20:48.941063+00	2661	индейка фарш	1	new through import_export	8	1
474	2023-06-18 11:20:48.941298+00	2662	индейка филе	1	new through import_export	8	1
475	2023-06-18 11:20:48.941535+00	2663	индоутка	1	new through import_export	8	1
476	2023-06-18 11:20:48.94176+00	2664	индюшачья печень	1	new through import_export	8	1
477	2023-06-18 11:20:48.941986+00	2665	инжир	1	new through import_export	8	1
478	2023-06-18 11:20:48.942236+00	2666	инжир свежий	1	new through import_export	8	1
479	2023-06-18 11:20:48.942483+00	2667	инжир сушеный	1	new through import_export	8	1
480	2023-06-18 11:20:48.942711+00	2668	ирга	1	new through import_export	8	1
481	2023-06-18 11:20:48.942946+00	2669	ириски	1	new through import_export	8	1
482	2023-06-18 11:20:48.943171+00	2670	итальянские травы	1	new through import_export	8	1
483	2023-06-18 11:20:48.943394+00	2671	йогурт	1	new through import_export	8	1
484	2023-06-18 11:20:48.943619+00	2672	йогурт греческий	1	new through import_export	8	1
485	2023-06-18 11:20:48.943839+00	2673	йогурт жирный	1	new through import_export	8	1
486	2023-06-18 11:20:48.944104+00	2674	йогурт козий	1	new through import_export	8	1
487	2023-06-18 11:20:48.944347+00	2675	йогурт натуральный	1	new through import_export	8	1
488	2023-06-18 11:20:48.944601+00	2676	йогурт нежирный	1	new through import_export	8	1
489	2023-06-18 11:20:48.944877+00	2677	йогурт обезжиренный	1	new through import_export	8	1
490	2023-06-18 11:20:48.945108+00	2678	йогурт фруктовый	1	new through import_export	8	1
491	2023-06-18 11:20:48.945369+00	2679	кабачки	1	new through import_export	8	1
492	2023-06-18 11:20:48.945612+00	2680	кабачки замороженные	1	new through import_export	8	1
493	2023-06-18 11:20:48.945858+00	2681	кабачки молодые	1	new through import_export	8	1
494	2023-06-18 11:20:48.946104+00	2682	каджунская смесь специй	1	new through import_export	8	1
495	2023-06-18 11:20:48.946341+00	2683	какао	1	new through import_export	8	1
496	2023-06-18 11:20:48.946569+00	2684	какао-бобы	1	new through import_export	8	1
497	2023-06-18 11:20:48.946803+00	2685	какао-масло	1	new through import_export	8	1
498	2023-06-18 11:20:48.947031+00	2686	какао-порошок	1	new through import_export	8	1
499	2023-06-18 11:20:48.947261+00	2687	какао-порошок обезжиренный	1	new through import_export	8	1
500	2023-06-18 11:20:48.947528+00	2688	какао сгущенное	1	new through import_export	8	1
501	2023-06-18 11:20:48.947827+00	2689	калина	1	new through import_export	8	1
502	2023-06-18 11:20:48.948217+00	2690	калина протертая	1	new through import_export	8	1
503	2023-06-18 11:20:48.948474+00	2691	калинджи семена	1	new through import_export	8	1
504	2023-06-18 11:20:48.948701+00	2692	кальвадос	1	new through import_export	8	1
505	2023-06-18 11:20:48.948928+00	2693	кальмары	1	new through import_export	8	1
506	2023-06-18 11:20:48.949157+00	2694	кальмары вареные	1	new through import_export	8	1
507	2023-06-18 11:20:48.949409+00	2695	кальмары замороженные	1	new through import_export	8	1
508	2023-06-18 11:20:48.949637+00	2696	кальмары консервированные	1	new through import_export	8	1
509	2023-06-18 11:20:48.949858+00	2697	кальмары филе	1	new through import_export	8	1
510	2023-06-18 11:20:48.950081+00	2698	камамбер	1	new through import_export	8	1
511	2023-06-18 11:20:48.950301+00	2699	камбала	1	new through import_export	8	1
512	2023-06-18 11:20:48.95056+00	2700	камбала филе	1	new through import_export	8	1
513	2023-06-18 11:20:48.950829+00	2701	кампари	1	new through import_export	8	1
514	2023-06-18 11:20:48.951114+00	2702	кандурин золотой	1	new through import_export	8	1
515	2023-06-18 11:20:48.951378+00	2703	каннеллони	1	new through import_export	8	1
516	2023-06-18 11:20:48.951609+00	2704	капеллини	1	new through import_export	8	1
517	2023-06-18 11:20:48.951855+00	2705	каперсы	1	new through import_export	8	1
518	2023-06-18 11:20:48.952092+00	2706	каперсы в винном уксусе	1	new through import_export	8	1
519	2023-06-18 11:20:48.952348+00	2707	каперсы маринованные	1	new through import_export	8	1
520	2023-06-18 11:20:48.952587+00	2708	капуста белокочанная	1	new through import_export	8	1
521	2023-06-18 11:20:48.952815+00	2709	капуста брюссельская	1	new through import_export	8	1
522	2023-06-18 11:20:48.953039+00	2710	капуста брюссельская замороженная	1	new through import_export	8	1
523	2023-06-18 11:20:48.953296+00	2711	капуста кале	1	new through import_export	8	1
524	2023-06-18 11:20:48.953581+00	2712	капуста квашеная	1	new through import_export	8	1
525	2023-06-18 11:20:48.953824+00	2713	капуста кольраби	1	new through import_export	8	1
526	2023-06-18 11:20:48.954049+00	2714	капуста краснокочанная	1	new through import_export	8	1
527	2023-06-18 11:20:48.954286+00	2715	капуста морская	1	new through import_export	8	1
528	2023-06-18 11:20:48.954523+00	2716	капуста морская замороженная	1	new through import_export	8	1
529	2023-06-18 11:20:48.954756+00	2717	капуста морская сушеная	1	new through import_export	8	1
530	2023-06-18 11:20:48.954979+00	2718	капуста пекинская	1	new through import_export	8	1
531	2023-06-18 11:20:48.955202+00	2719	капуста савойская	1	new through import_export	8	1
532	2023-06-18 11:20:48.955427+00	2720	капуста цветная	1	new through import_export	8	1
533	2023-06-18 11:20:48.955654+00	2721	капуста цветная замороженная	1	new through import_export	8	1
534	2023-06-18 11:20:48.955885+00	2722	капустный рассол	1	new through import_export	8	1
535	2023-06-18 11:20:48.956247+00	2723	капучино	1	new through import_export	8	1
536	2023-06-18 11:20:48.956497+00	2724	каракатица	1	new through import_export	8	1
537	2023-06-18 11:20:48.95675+00	2725	каракатица очищенная	1	new through import_export	8	1
538	2023-06-18 11:20:48.956988+00	2726	карамбола	1	new through import_export	8	1
539	2023-06-18 11:20:48.957245+00	2727	карамель	1	new through import_export	8	1
540	2023-06-18 11:20:48.957872+00	2728	карамельный соус	1	new through import_export	8	1
541	2023-06-18 11:20:48.958141+00	2729	карамель с начинкой	1	new through import_export	8	1
542	2023-06-18 11:20:48.958374+00	2730	карамель соленая	1	new through import_export	8	1
543	2023-06-18 11:20:48.958642+00	2731	карась	1	new through import_export	8	1
544	2023-06-18 11:20:48.958893+00	2732	карбонад	1	new through import_export	8	1
545	2023-06-18 11:20:48.959163+00	2733	кардамон	1	new through import_export	8	1
546	2023-06-18 11:20:48.959402+00	2734	кардамон зерна	1	new through import_export	8	1
547	2023-06-18 11:20:48.959636+00	2735	кардамон молотый	1	new through import_export	8	1
548	2023-06-18 11:20:48.959858+00	2736	кардамон стручки	1	new through import_export	8	1
549	2023-06-18 11:20:48.960074+00	2737	каркаде	1	new through import_export	8	1
550	2023-06-18 11:20:48.960316+00	2738	карп	1	new through import_export	8	1
551	2023-06-18 11:20:48.96056+00	2739	карп зеркальный	1	new through import_export	8	1
552	2023-06-18 11:20:48.960828+00	2740	карп филе	1	new through import_export	8	1
553	2023-06-18 11:20:48.96106+00	2741	карри	1	new through import_export	8	1
554	2023-06-18 11:20:48.961278+00	2742	карри листья	1	new through import_export	8	1
555	2023-06-18 11:20:48.961525+00	2743	карри паста	1	new through import_export	8	1
556	2023-06-18 11:20:48.96176+00	2744	картофель	1	new through import_export	8	1
557	2023-06-18 11:20:48.961973+00	2745	картофель вареный	1	new through import_export	8	1
558	2023-06-18 11:20:48.962233+00	2746	картофель вареный в мундире	1	new through import_export	8	1
559	2023-06-18 11:20:48.96251+00	2747	картофель молодой	1	new through import_export	8	1
560	2023-06-18 11:20:48.962772+00	2748	картофельное пюре	1	new through import_export	8	1
561	2023-06-18 11:20:48.963055+00	2749	картофельные ньокки	1	new through import_export	8	1
562	2023-06-18 11:20:48.963297+00	2750	картофельные хлопья	1	new through import_export	8	1
563	2023-06-18 11:20:48.96357+00	2751	картофельные чипсы	1	new through import_export	8	1
564	2023-06-18 11:20:48.963852+00	2752	картофельный крахмал	1	new through import_export	8	1
565	2023-06-18 11:20:48.964087+00	2753	картофельный отвар	1	new through import_export	8	1
566	2023-06-18 11:20:48.964317+00	2754	картофельный хэш замороженный	1	new through import_export	8	1
567	2023-06-18 11:20:48.96477+00	2755	картофель печеный	1	new through import_export	8	1
568	2023-06-18 11:20:48.965014+00	2756	катык	1	new through import_export	8	1
569	2023-06-18 11:20:48.965241+00	2757	каффир-лайм листья	1	new through import_export	8	1
570	2023-06-18 11:20:48.965456+00	2758	каша	1	new through import_export	8	1
571	2023-06-18 11:20:48.965681+00	2759	каша для детского питания	1	new through import_export	8	1
572	2023-06-18 11:20:48.965939+00	2760	каштановая мука	1	new through import_export	8	1
573	2023-06-18 11:20:48.966227+00	2761	каштановый крем	1	new through import_export	8	1
574	2023-06-18 11:20:48.96651+00	2762	каштаны	1	new through import_export	8	1
575	2023-06-18 11:20:48.966782+00	2763	каштаны вареные	1	new through import_export	8	1
576	2023-06-18 11:20:48.967042+00	2764	каштаны консервированные	1	new through import_export	8	1
577	2023-06-18 11:20:48.967293+00	2765	каштаны очищенные	1	new through import_export	8	1
578	2023-06-18 11:20:48.96756+00	2766	квас	1	new through import_export	8	1
579	2023-06-18 11:20:48.967805+00	2767	квасное сусло	1	new through import_export	8	1
580	2023-06-18 11:20:48.968054+00	2768	квасной концентрат сухой	1	new through import_export	8	1
581	2023-06-18 11:20:48.968302+00	2769	квас хлебный	1	new through import_export	8	1
582	2023-06-18 11:20:48.968563+00	2770	кедровая мука	1	new through import_export	8	1
583	2023-06-18 11:20:48.968886+00	2771	кедровые орехи	1	new through import_export	8	1
584	2023-06-18 11:20:48.969167+00	2772	кедровые орехи жареные	1	new through import_export	8	1
585	2023-06-18 11:20:48.969452+00	2773	кета	1	new through import_export	8	1
586	2023-06-18 11:20:48.969746+00	2774	кетчуп острый	1	new through import_export	8	1
587	2023-06-18 11:20:48.970023+00	2775	кетчуп томатный	1	new through import_export	8	1
588	2023-06-18 11:20:48.970272+00	2776	кетчуп тосканский	1	new through import_export	8	1
589	2023-06-18 11:20:48.970543+00	2777	кетчуп шашлычный	1	new through import_export	8	1
590	2023-06-18 11:20:48.970788+00	2778	кефаль	1	new through import_export	8	1
591	2023-06-18 11:20:48.971054+00	2779	кефир	1	new through import_export	8	1
592	2023-06-18 11:20:48.971341+00	2780	кефир 1%	1	new through import_export	8	1
593	2023-06-18 11:20:48.971672+00	2781	кефир 2,5%	1	new through import_export	8	1
594	2023-06-18 11:20:48.971943+00	2782	кефир 3,2%	1	new through import_export	8	1
595	2023-06-18 11:20:48.972197+00	2783	кефир обезжиренный	1	new through import_export	8	1
596	2023-06-18 11:20:48.972484+00	2784	кешью	1	new through import_export	8	1
597	2023-06-18 11:20:48.972763+00	2785	кивано	1	new through import_export	8	1
598	2023-06-18 11:20:48.973022+00	2786	киви	1	new through import_export	8	1
599	2023-06-18 11:20:48.973284+00	2787	киви желе	1	new through import_export	8	1
600	2023-06-18 11:20:48.97357+00	2788	кижуч	1	new through import_export	8	1
601	2023-06-18 11:20:48.973968+00	2789	кижуч горячего копчения филе	1	new through import_export	8	1
602	2023-06-18 11:20:48.974229+00	2790	кизил	1	new through import_export	8	1
603	2023-06-18 11:20:48.974551+00	2791	килька	1	new through import_export	8	1
604	2023-06-18 11:20:48.974847+00	2792	кимчи	1	new through import_export	8	1
605	2023-06-18 11:20:48.975117+00	2793	кинза свежая	1	new through import_export	8	1
606	2023-06-18 11:20:48.975402+00	2794	кинза сушеная	1	new through import_export	8	1
607	2023-06-18 11:20:48.975674+00	2795	киноа	1	new through import_export	8	1
608	2023-06-18 11:20:48.975939+00	2796	киноа молотая	1	new through import_export	8	1
609	2023-06-18 11:20:48.976229+00	2797	кипяток	1	new through import_export	8	1
610	2023-06-18 11:20:48.976508+00	2798	кирш	1	new through import_export	8	1
611	2023-06-18 11:20:48.976761+00	2799	кисель	1	new through import_export	8	1
612	2023-06-18 11:20:48.977014+00	2800	кисель сухой	1	new through import_export	8	1
613	2023-06-18 11:20:48.977256+00	2801	кисломолочный напиток Тан	1	new through import_export	8	1
614	2023-06-18 11:20:48.977517+00	2802	кишки	1	new through import_export	8	1
615	2023-06-18 11:20:48.977776+00	2803	клейковина	1	new through import_export	8	1
616	2023-06-18 11:20:48.978029+00	2804	клементины	1	new through import_export	8	1
617	2023-06-18 11:20:48.978304+00	2805	кленовый сироп	1	new through import_export	8	1
618	2023-06-18 11:20:48.978608+00	2806	клубника	1	new through import_export	8	1
619	2023-06-18 11:20:48.978866+00	2807	клубника в сиропе	1	new through import_export	8	1
620	2023-06-18 11:20:48.979111+00	2808	клубника замороженная	1	new through import_export	8	1
621	2023-06-18 11:20:48.979362+00	2809	клубника, протертая с сахаром	1	new through import_export	8	1
622	2023-06-18 11:20:48.979649+00	2810	клубника сушеная	1	new through import_export	8	1
623	2023-06-18 11:20:48.979915+00	2811	клубничное варенье	1	new through import_export	8	1
624	2023-06-18 11:20:48.980175+00	2812	клубничное желе	1	new through import_export	8	1
625	2023-06-18 11:20:48.980445+00	2813	клубничное пюре	1	new through import_export	8	1
626	2023-06-18 11:20:48.980719+00	2814	клубничный джем	1	new through import_export	8	1
627	2023-06-18 11:20:48.980968+00	2815	клубничный джем густой	1	new through import_export	8	1
628	2023-06-18 11:20:48.981215+00	2816	клубничный компот	1	new through import_export	8	1
629	2023-06-18 11:20:48.981467+00	2817	клубничный ликер	1	new through import_export	8	1
630	2023-06-18 11:20:48.981726+00	2818	клубничный сироп	1	new through import_export	8	1
631	2023-06-18 11:20:48.982018+00	2819	клюква	1	new through import_export	8	1
632	2023-06-18 11:20:48.982791+00	2820	клюква вяленая	1	new through import_export	8	1
633	2023-06-18 11:20:48.983218+00	2821	клюква замороженная	1	new through import_export	8	1
634	2023-06-18 11:20:48.983596+00	2822	клюква, протертая с сахаром	1	new through import_export	8	1
635	2023-06-18 11:20:48.983857+00	2823	клюквенное варенье	1	new through import_export	8	1
636	2023-06-18 11:20:48.984105+00	2824	клюквенный джем	1	new through import_export	8	1
637	2023-06-18 11:20:48.984388+00	2825	клюквенный морс	1	new through import_export	8	1
638	2023-06-18 11:20:48.984689+00	2826	клюквенный сироп	1	new through import_export	8	1
639	2023-06-18 11:20:48.984947+00	2827	клюквенный соус	1	new through import_export	8	1
640	2023-06-18 11:20:48.985194+00	2828	козлиная печень	1	new through import_export	8	1
641	2023-06-18 11:20:48.985455+00	2829	козлятина молодая	1	new through import_export	8	1
642	2023-06-18 11:20:48.985711+00	2830	кока-кола	1	new through import_export	8	1
643	2023-06-18 11:20:48.985962+00	2831	кокосовая вода	1	new through import_export	8	1
644	2023-06-18 11:20:48.986216+00	2832	кокосовая мука	1	new through import_export	8	1
645	2023-06-18 11:20:48.986483+00	2833	кокосовая стружка	1	new through import_export	8	1
646	2023-06-18 11:20:48.986744+00	2834	кокосовая стружка цветная	1	new through import_export	8	1
647	2023-06-18 11:20:48.986993+00	2835	кокосовое масло	1	new through import_export	8	1
648	2023-06-18 11:20:48.987252+00	2836	кокосовое молоко	1	new through import_export	8	1
649	2023-06-18 11:20:48.987544+00	2837	кокосовые сливки	1	new through import_export	8	1
650	2023-06-18 11:20:48.98782+00	2838	кокосовый ликер	1	new through import_export	8	1
651	2023-06-18 11:20:48.988075+00	2839	кокосовый экстракт	1	new through import_export	8	1
652	2023-06-18 11:20:48.988352+00	2840	кокосы	1	new through import_export	8	1
653	2023-06-18 11:20:48.988623+00	2841	кола	1	new through import_export	8	1
654	2023-06-18 11:20:48.988872+00	2842	колбаса	1	new through import_export	8	1
655	2023-06-18 11:20:48.989119+00	2843	колбаса вареная	1	new through import_export	8	1
656	2023-06-18 11:20:48.989366+00	2844	колбаса варено-копченая	1	new through import_export	8	1
657	2023-06-18 11:20:48.989612+00	2845	колбаса копченая	1	new through import_export	8	1
658	2023-06-18 11:20:48.989859+00	2846	колбаса кровяная	1	new through import_export	8	1
659	2023-06-18 11:20:48.990104+00	2847	колбаса полукопченая	1	new through import_export	8	1
660	2023-06-18 11:20:48.990367+00	2848	колбаса сырокопченая	1	new through import_export	8	1
661	2023-06-18 11:20:48.99062+00	2849	колбаска свиная свежая (salsiccia)	1	new through import_export	8	1
662	2023-06-18 11:20:48.990868+00	2850	колбаски	1	new through import_export	8	1
663	2023-06-18 11:20:48.991117+00	2851	колбаски для жарки	1	new through import_export	8	1
664	2023-06-18 11:20:48.991365+00	2852	колбаски домашние	1	new through import_export	8	1
665	2023-06-18 11:20:48.991608+00	2853	колбаски охотничьи	1	new through import_export	8	1
666	2023-06-18 11:20:48.992073+00	2854	колбаски сырокопченые	1	new through import_export	8	1
667	2023-06-18 11:20:48.992344+00	2855	компот	1	new through import_export	8	1
668	2023-06-18 11:20:48.992596+00	2856	конопляное масло	1	new through import_export	8	1
669	2023-06-18 11:20:48.992864+00	2857	конопля семена	1	new through import_export	8	1
670	2023-06-18 11:20:48.993136+00	2858	конфеты	1	new through import_export	8	1
671	2023-06-18 11:20:48.993396+00	2859	конфеты M&M’s	1	new through import_export	8	1
672	2023-06-18 11:20:48.993651+00	2860	конфеты жевательные лакричные	1	new through import_export	8	1
673	2023-06-18 11:20:48.993895+00	2861	конфеты Коровка	1	new through import_export	8	1
674	2023-06-18 11:20:48.994165+00	2862	конфеты Трюфель	1	new through import_export	8	1
675	2023-06-18 11:20:48.994461+00	2863	конфитюр	1	new through import_export	8	1
676	2023-06-18 11:20:48.994716+00	2864	конфитюрка	1	new through import_export	8	1
677	2023-06-18 11:20:48.994967+00	2865	коньяк	1	new through import_export	8	1
678	2023-06-18 11:20:48.995209+00	2866	копчености	1	new through import_export	8	1
679	2023-06-18 11:20:48.995462+00	2867	коренья	1	new through import_export	8	1
680	2023-06-18 11:20:48.995722+00	2868	кориандр	1	new through import_export	8	1
681	2023-06-18 11:20:48.99602+00	2869	кориандр зелень	1	new through import_export	8	1
682	2023-06-18 11:20:48.996406+00	2870	кориандр молотый	1	new through import_export	8	1
683	2023-06-18 11:20:48.996789+00	2871	кориандр семена	1	new through import_export	8	1
684	2023-06-18 11:20:48.997042+00	2872	коринка	1	new through import_export	8	1
685	2023-06-18 11:20:48.997287+00	2873	корица	1	new through import_export	8	1
686	2023-06-18 11:20:48.997562+00	2874	корица молотая	1	new through import_export	8	1
687	2023-06-18 11:20:48.997821+00	2875	корнишоны	1	new through import_export	8	1
688	2023-06-18 11:20:48.998081+00	2876	корнишоны маринованые	1	new through import_export	8	1
689	2023-06-18 11:20:48.998356+00	2877	корюшка	1	new through import_export	8	1
690	2023-06-18 11:20:48.99865+00	2878	корюшка горячего копчения	1	new through import_export	8	1
691	2023-06-18 11:20:48.998907+00	2879	кости	1	new through import_export	8	1
692	2023-06-18 11:20:48.999166+00	2880	кости мозговые	1	new through import_export	8	1
693	2023-06-18 11:20:48.999422+00	2881	кость сахарная	1	new through import_export	8	1
694	2023-06-18 11:20:48.999691+00	2882	кофе в зернах	1	new through import_export	8	1
695	2023-06-18 11:20:49.000076+00	2883	кофе зеленый	1	new through import_export	8	1
696	2023-06-18 11:20:49.00035+00	2884	кофейные зерна в шоколаде	1	new through import_export	8	1
697	2023-06-18 11:20:49.000616+00	2885	кофейный ликер	1	new through import_export	8	1
698	2023-06-18 11:20:49.000888+00	2886	кофейный ликер Kahlua	1	new through import_export	8	1
699	2023-06-18 11:20:49.001135+00	2887	кофейный напиток	1	new through import_export	8	1
700	2023-06-18 11:20:49.001388+00	2888	кофейный сироп	1	new through import_export	8	1
701	2023-06-18 11:20:49.00164+00	2889	кофейный экстракт	1	new through import_export	8	1
702	2023-06-18 11:20:49.001898+00	2890	кофе молотый	1	new through import_export	8	1
703	2023-06-18 11:20:49.002162+00	2891	кофе растворимый	1	new through import_export	8	1
704	2023-06-18 11:20:49.002463+00	2892	кофе свежесваренный	1	new through import_export	8	1
705	2023-06-18 11:20:49.002724+00	2893	кофе черный	1	new through import_export	8	1
706	2023-06-18 11:20:49.002981+00	2894	кофе эспрессо	1	new through import_export	8	1
707	2023-06-18 11:20:49.003234+00	2895	крабовое мясо	1	new through import_export	8	1
708	2023-06-18 11:20:49.003504+00	2896	крабовые палочки	1	new through import_export	8	1
709	2023-06-18 11:20:49.003786+00	2897	краб снежный	1	new through import_export	8	1
710	2023-06-18 11:20:49.004057+00	2898	крабы	1	new through import_export	8	1
711	2023-06-18 11:20:49.004338+00	2899	крапива	1	new through import_export	8	1
712	2023-06-18 11:20:49.0046+00	2900	краситель-гель пищевой	1	new through import_export	8	1
713	2023-06-18 11:20:49.00486+00	2901	краситель пищевой	1	new through import_export	8	1
714	2023-06-18 11:20:49.005116+00	2902	краситель пищевой вишневый	1	new through import_export	8	1
715	2023-06-18 11:20:49.00538+00	2903	краситель пищевой желтый	1	new through import_export	8	1
716	2023-06-18 11:20:49.005656+00	2904	краситель пищевой зеленый	1	new through import_export	8	1
717	2023-06-18 11:20:49.005923+00	2905	краситель пищевой красный	1	new through import_export	8	1
718	2023-06-18 11:20:49.006199+00	2906	краситель пищевой оранжевый	1	new through import_export	8	1
719	2023-06-18 11:20:49.006482+00	2907	краситель пищевой фиолетовый	1	new through import_export	8	1
720	2023-06-18 11:20:49.006734+00	2908	краситель пищевой черный	1	new through import_export	8	1
721	2023-06-18 11:20:49.006994+00	2909	красная смородина	1	new through import_export	8	1
722	2023-06-18 11:20:49.00725+00	2910	красная смородина, протертая с сахаром	1	new through import_export	8	1
723	2023-06-18 11:20:49.007519+00	2911	красноперка	1	new through import_export	8	1
724	2023-06-18 11:20:49.007838+00	2912	красносмородиновое варенье	1	new through import_export	8	1
725	2023-06-18 11:20:49.008188+00	2913	красный винный соус	1	new through import_export	8	1
726	2023-06-18 11:20:49.008639+00	2914	крахмал	1	new through import_export	8	1
727	2023-06-18 11:20:49.008981+00	2915	креветки	1	new through import_export	8	1
728	2023-06-18 11:20:49.009253+00	2916	креветки замороженные	1	new through import_export	8	1
729	2023-06-18 11:20:49.009553+00	2917	креветки королевские	1	new through import_export	8	1
730	2023-06-18 11:20:49.009807+00	2918	креветки очищенные	1	new through import_export	8	1
731	2023-06-18 11:20:49.010063+00	2919	креветки очищенные в рассоле	1	new through import_export	8	1
732	2023-06-18 11:20:49.010322+00	2920	креветки салатные	1	new through import_export	8	1
733	2023-06-18 11:20:49.010587+00	2921	креветки сушеные	1	new through import_export	8	1
734	2023-06-18 11:20:49.010845+00	2922	креветки тигровые	1	new through import_export	8	1
735	2023-06-18 11:20:49.011095+00	2923	крекер	1	new through import_export	8	1
736	2023-06-18 11:20:49.011344+00	2924	крекер соленый	1	new through import_export	8	1
737	2023-06-18 11:20:49.011803+00	2925	крем заварной	1	new through import_export	8	1
738	2023-06-18 11:20:49.012071+00	2926	крем заварной порошковый	1	new through import_export	8	1
739	2023-06-18 11:20:49.012346+00	2927	крем-фреш	1	new through import_export	8	1
740	2023-06-18 11:20:49.012603+00	2928	кресс-салат	1	new through import_export	8	1
741	2023-06-18 11:20:49.012893+00	2929	кровь	1	new through import_export	8	1
742	2023-06-18 11:20:49.013141+00	2930	кролик	1	new through import_export	8	1
743	2023-06-18 11:20:49.013415+00	2931	кролик тушка	1	new through import_export	8	1
744	2023-06-18 11:20:49.013713+00	2932	кролик филе	1	new through import_export	8	1
745	2023-06-18 11:20:49.013989+00	2933	кроличья печень	1	new through import_export	8	1
746	2023-06-18 11:20:49.014258+00	2934	круассаны	1	new through import_export	8	1
747	2023-06-18 11:20:49.014584+00	2935	крутоны мелкие	1	new through import_export	8	1
748	2023-06-18 11:20:49.014878+00	2936	крыжовник	1	new through import_export	8	1
749	2023-06-18 11:20:49.015219+00	2937	крыжовниковое варенье	1	new through import_export	8	1
750	2023-06-18 11:20:49.015485+00	2938	кукуруза	1	new through import_export	8	1
751	2023-06-18 11:20:49.015748+00	2939	кукуруза замороженная	1	new through import_export	8	1
752	2023-06-18 11:20:49.015998+00	2940	кукуруза консервированная	1	new through import_export	8	1
753	2023-06-18 11:20:49.016246+00	2941	кукуруза обжаренная кикос	1	new through import_export	8	1
754	2023-06-18 11:20:49.016506+00	2942	кукурузная крупа	1	new through import_export	8	1
755	2023-06-18 11:20:49.01675+00	2943	кукурузная мука	1	new through import_export	8	1
756	2023-06-18 11:20:49.016999+00	2944	кукурузное масло	1	new through import_export	8	1
757	2023-06-18 11:20:49.017265+00	2945	кукурузные лепешки	1	new through import_export	8	1
758	2023-06-18 11:20:49.017558+00	2946	кукурузные палочки	1	new through import_export	8	1
759	2023-06-18 11:20:49.017813+00	2947	кукурузные хлопья	1	new through import_export	8	1
760	2023-06-18 11:20:49.01823+00	2948	кукурузные хлопья глазированные	1	new through import_export	8	1
761	2023-06-18 11:20:49.018499+00	2949	кукурузные чипсы	1	new through import_export	8	1
762	2023-06-18 11:20:49.018771+00	2950	кукурузный (золотой) сироп	1	new through import_export	8	1
763	2023-06-18 11:20:49.019042+00	2951	кукурузный крахмал	1	new through import_export	8	1
764	2023-06-18 11:20:49.019305+00	2952	кумин	1	new through import_export	8	1
765	2023-06-18 11:20:49.019588+00	2953	кумкваты	1	new through import_export	8	1
766	2023-06-18 11:20:49.019846+00	2954	кунжут	1	new through import_export	8	1
767	2023-06-18 11:20:49.020094+00	2955	кунжутная мука	1	new through import_export	8	1
768	2023-06-18 11:20:49.020355+00	2956	кунжутная паста	1	new through import_export	8	1
769	2023-06-18 11:20:49.020618+00	2957	кунжутное масло	1	new through import_export	8	1
770	2023-06-18 11:20:49.020901+00	2958	кунжутные семечки	1	new through import_export	8	1
771	2023-06-18 11:20:49.021196+00	2959	кунжут черный	1	new through import_export	8	1
772	2023-06-18 11:20:49.02149+00	2960	купаты	1	new through import_export	8	1
773	2023-06-18 11:20:49.021756+00	2961	курага	1	new through import_export	8	1
774	2023-06-18 11:20:49.022007+00	2962	курдючное сало	1	new through import_export	8	1
775	2023-06-18 11:20:49.022322+00	2963	курдючный жир	1	new through import_export	8	1
776	2023-06-18 11:20:49.022623+00	2964	куриная ветчина	1	new through import_export	8	1
777	2023-06-18 11:20:49.022921+00	2965	куриная кожа	1	new through import_export	8	1
778	2023-06-18 11:20:49.023201+00	2966	куриная печень	1	new through import_export	8	1
779	2023-06-18 11:20:49.023483+00	2967	куриное карпаччо	1	new through import_export	8	1
780	2023-06-18 11:20:49.02374+00	2968	куриное филе	1	new through import_export	8	1
781	2023-06-18 11:20:49.024001+00	2969	куриные бедра	1	new through import_export	8	1
782	2023-06-18 11:20:49.024258+00	2970	куриные голени	1	new through import_export	8	1
783	2023-06-18 11:20:49.024525+00	2971	куриные голени копченые	1	new through import_export	8	1
784	2023-06-18 11:20:49.024776+00	2972	куриные грудки	1	new through import_export	8	1
785	2023-06-18 11:20:49.025017+00	2973	куриные грудки вареные	1	new through import_export	8	1
786	2023-06-18 11:20:49.025303+00	2974	куриные грудки копченые	1	new through import_export	8	1
787	2023-06-18 11:20:49.025612+00	2975	куриные желудочки	1	new through import_export	8	1
788	2023-06-18 11:20:49.025874+00	2976	куриные кости	1	new through import_export	8	1
789	2023-06-18 11:20:49.026125+00	2977	куриные крылья	1	new through import_export	8	1
790	2023-06-18 11:20:49.026375+00	2978	куриные окорочка	1	new through import_export	8	1
791	2023-06-18 11:20:49.026758+00	2979	куриные окорочка копченые	1	new through import_export	8	1
792	2023-06-18 11:20:49.027043+00	2980	куриные потрошки	1	new through import_export	8	1
793	2023-06-18 11:20:49.027331+00	2981	куриные сердечки	1	new through import_export	8	1
794	2023-06-18 11:20:49.027607+00	2982	куриный бульон	1	new through import_export	8	1
795	2023-06-18 11:20:49.027892+00	2983	куриный паштет	1	new through import_export	8	1
796	2023-06-18 11:20:49.028166+00	2984	куриный суповой набор	1	new through import_export	8	1
797	2023-06-18 11:20:49.028449+00	2985	куриный фарш	1	new through import_export	8	1
798	2023-06-18 11:20:49.028736+00	2986	курица	1	new through import_export	8	1
799	2023-06-18 11:20:49.029016+00	2987	курица вареная	1	new through import_export	8	1
800	2023-06-18 11:20:49.029306+00	2988	курица для жарки	1	new through import_export	8	1
801	2023-06-18 11:20:49.029595+00	2989	курица копченая	1	new through import_export	8	1
802	2023-06-18 11:20:49.029849+00	2990	курица тушка	1	new through import_export	8	1
803	2023-06-18 11:20:49.030097+00	2991	куркума	1	new through import_export	8	1
804	2023-06-18 11:20:49.03035+00	2992	куропатки	1	new through import_export	8	1
805	2023-06-18 11:20:49.030627+00	2993	кускус	1	new through import_export	8	1
806	2023-06-18 11:20:49.030957+00	2994	кускус жемчужный	1	new through import_export	8	1
807	2023-06-18 11:20:49.031268+00	2995	кэроб	1	new through import_export	8	1
808	2023-06-18 11:20:49.031573+00	2996	лаванда	1	new through import_export	8	1
809	2023-06-18 11:20:49.03183+00	2997	лаванда сушеная	1	new through import_export	8	1
810	2023-06-18 11:20:49.032106+00	2998	лавандовый краситель	1	new through import_export	8	1
811	2023-06-18 11:20:49.032386+00	2999	лаваш	1	new through import_export	8	1
812	2023-06-18 11:20:49.03266+00	3000	лаваш армянский	1	new through import_export	8	1
813	2023-06-18 11:20:49.032922+00	3001	лаваш персидский круглый	1	new through import_export	8	1
814	2023-06-18 11:20:49.033172+00	3002	лаваш тонкий	1	new through import_export	8	1
815	2023-06-18 11:20:49.033419+00	3003	лавровые листья свежие	1	new through import_export	8	1
816	2023-06-18 11:20:49.033698+00	3004	лавровый лист	1	new through import_export	8	1
817	2023-06-18 11:20:49.033949+00	3005	лайм	1	new through import_export	8	1
818	2023-06-18 11:20:49.034217+00	3006	лайм листья	1	new through import_export	8	1
819	2023-06-18 11:20:49.034472+00	3007	лаймовая цедра	1	new through import_export	8	1
820	2023-06-18 11:20:49.034721+00	3008	лаймовый сок	1	new through import_export	8	1
821	2023-06-18 11:20:49.034972+00	3009	лангустины	1	new through import_export	8	1
822	2023-06-18 11:20:49.03522+00	3010	лапша	1	new through import_export	8	1
823	2023-06-18 11:20:49.035476+00	3011	лапша для лагмана	1	new through import_export	8	1
824	2023-06-18 11:20:49.035883+00	3012	лапша ширатаки	1	new through import_export	8	1
825	2023-06-18 11:20:49.036133+00	3013	лапша яичная в гнездах	1	new through import_export	8	1
826	2023-06-18 11:20:49.036386+00	3014	латук	1	new through import_export	8	1
827	2023-06-18 11:20:49.036639+00	3015	легкие	1	new through import_export	8	1
828	2023-06-18 11:20:49.036881+00	3016	лед	1	new through import_export	8	1
829	2023-06-18 11:20:49.03715+00	3017	леди-фиш тушка	1	new through import_export	8	1
830	2023-06-18 11:20:49.037401+00	3018	лемонграсс (лимонное сорго)	1	new through import_export	8	1
831	2023-06-18 11:20:49.037654+00	3019	лен семена	1	new through import_export	8	1
832	2023-06-18 11:20:49.037912+00	3020	лепешки	1	new through import_export	8	1
833	2023-06-18 11:20:49.038195+00	3021	лепешки арабские	1	new through import_export	8	1
834	2023-06-18 11:20:49.038498+00	3022	лесные орехи	1	new through import_export	8	1
835	2023-06-18 11:20:49.039059+00	3023	лечо	1	new through import_export	8	1
836	2023-06-18 11:20:49.03959+00	3024	ливер	1	new through import_export	8	1
837	2023-06-18 11:20:49.039857+00	3025	ликер	1	new through import_export	8	1
838	2023-06-18 11:20:49.040112+00	3026	ликер Alchermes	1	new through import_export	8	1
839	2023-06-18 11:20:49.040373+00	3027	ликер Amaretto	1	new through import_export	8	1
840	2023-06-18 11:20:49.040634+00	3028	ликер Baileys	1	new through import_export	8	1
841	2023-06-18 11:20:49.040918+00	3029	ликер Cointreau	1	new through import_export	8	1
842	2023-06-18 11:20:49.041176+00	3030	ликер кремовый	1	new through import_export	8	1
843	2023-06-18 11:20:49.041438+00	3031	ликер сливочный	1	new through import_export	8	1
844	2023-06-18 11:20:49.041703+00	3032	лимонад	1	new through import_export	8	1
845	2023-06-18 11:20:49.041967+00	3033	лимонная кислота	1	new through import_export	8	1
846	2023-06-18 11:20:49.042245+00	3034	лимонная цедра	1	new through import_export	8	1
847	2023-06-18 11:20:49.042559+00	3035	лимонник стебель	1	new through import_export	8	1
848	2023-06-18 11:20:49.042839+00	3036	лимонник ягоды	1	new through import_export	8	1
849	2023-06-18 11:20:49.04309+00	3037	лимонные корочки засахаренные	1	new through import_export	8	1
850	2023-06-18 11:20:49.04335+00	3038	лимонные цукаты	1	new through import_export	8	1
851	2023-06-18 11:20:49.043603+00	3039	лимонный сок	1	new through import_export	8	1
852	2023-06-18 11:20:49.043866+00	3040	лимонный уксус	1	new through import_export	8	1
853	2023-06-18 11:20:49.044127+00	3041	лимонный экстракт	1	new through import_export	8	1
854	2023-06-18 11:20:49.044395+00	3042	лимончелло	1	new through import_export	8	1
855	2023-06-18 11:20:49.044686+00	3043	лимоны	1	new through import_export	8	1
856	2023-06-18 11:20:49.044956+00	3044	лингвине	1	new through import_export	8	1
857	2023-06-18 11:20:49.045212+00	3045	лисички	1	new through import_export	8	1
858	2023-06-18 11:20:49.045476+00	3046	лисички сушеные	1	new through import_export	8	1
859	2023-06-18 11:20:49.045755+00	3047	личи	1	new through import_export	8	1
860	2023-06-18 11:20:49.046007+00	3048	личи компот	1	new through import_export	8	1
861	2023-06-18 11:20:49.046256+00	3049	лобстер	1	new through import_export	8	1
862	2023-06-18 11:20:49.046512+00	3050	лонган	1	new through import_export	8	1
863	2023-06-18 11:20:49.046768+00	3051	лонгконг	1	new through import_export	8	1
864	2023-06-18 11:20:49.047149+00	3052	лососевые молоки	1	new through import_export	8	1
865	2023-06-18 11:20:49.047405+00	3053	лососевый фарш	1	new through import_export	8	1
866	2023-06-18 11:20:49.047658+00	3054	лосось	1	new through import_export	8	1
867	2023-06-18 11:20:49.047903+00	3055	лосось горячего копчения	1	new through import_export	8	1
868	2023-06-18 11:20:49.048157+00	3056	лосось копченый	1	new through import_export	8	1
869	2023-06-18 11:20:49.048407+00	3057	лосось свежесоленый	1	new through import_export	8	1
870	2023-06-18 11:20:49.048656+00	3058	лосось свежий	1	new through import_export	8	1
871	2023-06-18 11:20:49.048902+00	3059	лосось свежий филе	1	new through import_export	8	1
872	2023-06-18 11:20:49.049166+00	3060	лосось слабосоленый	1	new through import_export	8	1
873	2023-06-18 11:20:49.049441+00	3061	лосось стейки	1	new through import_export	8	1
874	2023-06-18 11:20:49.049709+00	3062	лосось филе	1	new through import_export	8	1
875	2023-06-18 11:20:49.049981+00	3063	лосось филе на коже	1	new through import_export	8	1
876	2023-06-18 11:20:49.050243+00	3064	лосось холодного копчения	1	new through import_export	8	1
877	2023-06-18 11:20:49.050545+00	3065	лосятина	1	new through import_export	8	1
878	2023-06-18 11:20:49.050824+00	3066	лук белый	1	new through import_export	8	1
879	2023-06-18 11:20:49.051112+00	3067	лук зеленый	1	new through import_export	8	1
880	2023-06-18 11:20:49.051384+00	3068	лук красный	1	new through import_export	8	1
881	2023-06-18 11:20:49.051658+00	3069	лук маринованный	1	new through import_export	8	1
882	2023-06-18 11:20:49.051913+00	3070	луковая шелуха	1	new through import_export	8	1
883	2023-06-18 11:20:49.052159+00	3071	луковый порошок	1	new through import_export	8	1
884	2023-06-18 11:20:49.052422+00	3072	лук-порей	1	new through import_export	8	1
885	2023-06-18 11:20:49.052743+00	3073	лук-резанец	1	new through import_export	8	1
886	2023-06-18 11:20:49.053058+00	3074	лук репчатый	1	new through import_export	8	1
887	2023-06-18 11:20:49.053464+00	3075	лук репчатый мелкий	1	new through import_export	8	1
888	2023-06-18 11:20:49.053994+00	3076	лук салатный	1	new through import_export	8	1
889	2023-06-18 11:20:49.054265+00	3077	лук сушеный	1	new through import_export	8	1
890	2023-06-18 11:20:49.054557+00	3078	лук-шалот	1	new through import_export	8	1
891	2023-06-18 11:20:49.054873+00	3079	лук-шалот красный	1	new through import_export	8	1
892	2023-06-18 11:20:49.055136+00	3080	льняная мука	1	new through import_export	8	1
893	2023-06-18 11:20:49.05539+00	3081	льняное масло	1	new through import_export	8	1
894	2023-06-18 11:20:49.055648+00	3082	льняное семя	1	new through import_export	8	1
895	2023-06-18 11:20:49.05591+00	3083	льняное семя молотое	1	new through import_export	8	1
896	2023-06-18 11:20:49.056165+00	3084	любисток	1	new through import_export	8	1
897	2023-06-18 11:20:49.056418+00	3085	маасдам	1	new through import_export	8	1
898	2023-06-18 11:20:49.056666+00	3086	мадера	1	new through import_export	8	1
899	2023-06-18 11:20:49.056909+00	3087	майонез	1	new through import_export	8	1
900	2023-06-18 11:20:49.057162+00	3088	майонез домашний	1	new through import_export	8	1
901	2023-06-18 11:20:49.057461+00	3089	майонез легкий	1	new through import_export	8	1
902	2023-06-18 11:20:49.057709+00	3090	майонезный соус «Слобода» Постный	1	new through import_export	8	1
903	2023-06-18 11:20:49.057955+00	3091	майонез оливковый	1	new through import_export	8	1
904	2023-06-18 11:20:49.058198+00	3092	майонез «Слобода» Легкий	1	new through import_export	8	1
905	2023-06-18 11:20:49.058466+00	3093	майонез «Слобода» На перепелиных яйцах	1	new through import_export	8	1
906	2023-06-18 11:20:49.058711+00	3094	майонез «Слобода» Оливковый	1	new through import_export	8	1
907	2023-06-18 11:20:49.058958+00	3095	майонез «Слобода» Провансаль	1	new through import_export	8	1
908	2023-06-18 11:20:49.059208+00	3096	майонез «Слобода» С лимонным соком	1	new through import_export	8	1
909	2023-06-18 11:20:49.059467+00	3097	майонез «Слобода» Сметанный	1	new through import_export	8	1
910	2023-06-18 11:20:49.059745+00	3098	майоран	1	new through import_export	8	1
911	2023-06-18 11:20:49.059989+00	3099	майоран свежий	1	new through import_export	8	1
912	2023-06-18 11:20:49.060236+00	3100	майоран сушеный	1	new through import_export	8	1
913	2023-06-18 11:20:49.060509+00	3101	мак	1	new through import_export	8	1
914	2023-06-18 11:20:49.060756+00	3102	макаронные изделия	1	new through import_export	8	1
915	2023-06-18 11:20:49.061024+00	3103	макаронные изделия мелкие	1	new through import_export	8	1
916	2023-06-18 11:20:49.061279+00	3104	макароны	1	new through import_export	8	1
917	2023-06-18 11:20:49.061554+00	3105	макароны-бабочки (farfalle)	1	new through import_export	8	1
918	2023-06-18 11:20:49.0618+00	3106	макароны-бабочки (farfalle) мини	1	new through import_export	8	1
919	2023-06-18 11:20:49.062048+00	3107	макароны баветте	1	new through import_export	8	1
920	2023-06-18 11:20:49.062332+00	3108	макароны-бантики	1	new through import_export	8	1
921	2023-06-18 11:20:49.062842+00	3109	макароны букатини	1	new through import_export	8	1
922	2023-06-18 11:20:49.063103+00	3110	макароны джильи	1	new through import_export	8	1
923	2023-06-18 11:20:49.063345+00	3111	макароны диталони	1	new through import_export	8	1
924	2023-06-18 11:20:49.063633+00	3112	макароны-звездочки	1	new through import_export	8	1
925	2023-06-18 11:20:49.063933+00	3113	макароны орзо	1	new through import_export	8	1
926	2023-06-18 11:20:49.064191+00	3114	макароны-ракушки (conchiglie)	1	new through import_export	8	1
927	2023-06-18 11:20:49.064589+00	3115	макароны-ракушки (conchiglie rigate)	1	new through import_export	8	1
928	2023-06-18 11:20:49.064885+00	3116	макароны-ракушки крупные	1	new through import_export	8	1
929	2023-06-18 11:20:49.065147+00	3117	макароны рисони	1	new through import_export	8	1
930	2023-06-18 11:20:49.065411+00	3118	макароны-рожки (pipe rigate)	1	new through import_export	8	1
931	2023-06-18 11:20:49.065704+00	3119	макароны-спиральки (fusilli)	1	new through import_export	8	1
932	2023-06-18 11:20:49.065967+00	3120	макароны-ушки (orecchiette)	1	new through import_export	8	1
933	2023-06-18 11:20:49.066219+00	3121	маккерончини	1	new through import_export	8	1
934	2023-06-18 11:20:49.066477+00	3122	мак молотый	1	new through import_export	8	1
935	2023-06-18 11:20:49.066889+00	3123	маковая масса	1	new through import_export	8	1
936	2023-06-18 11:20:49.067901+00	3124	малина	1	new through import_export	8	1
937	2023-06-18 11:20:49.068172+00	3125	малина замороженная	1	new through import_export	8	1
938	2023-06-18 11:20:49.068447+00	3126	малина, протертая с сахаром	1	new through import_export	8	1
939	2023-06-18 11:20:49.068717+00	3127	малина сушеная	1	new through import_export	8	1
940	2023-06-18 11:20:49.068969+00	3128	малиновое варенье	1	new through import_export	8	1
941	2023-06-18 11:20:49.069217+00	3129	малиновое желе	1	new through import_export	8	1
942	2023-06-18 11:20:49.069488+00	3130	малиновое пюре	1	new through import_export	8	1
943	2023-06-18 11:20:49.069751+00	3131	малиновый джем	1	new through import_export	8	1
944	2023-06-18 11:20:49.070046+00	3132	малиновый крем	1	new through import_export	8	1
945	2023-06-18 11:20:49.070306+00	3133	малиновый сироп	1	new through import_export	8	1
946	2023-06-18 11:20:49.070595+00	3134	малиновый соус	1	new through import_export	8	1
947	2023-06-18 11:20:49.070849+00	3135	малиновый уксус	1	new through import_export	8	1
948	2023-06-18 11:20:49.071095+00	3136	малиновый чай	1	new through import_export	8	1
949	2023-06-18 11:20:49.071368+00	3137	манго	1	new through import_export	8	1
950	2023-06-18 11:20:49.071638+00	3138	манговый сироп	1	new through import_export	8	1
951	2023-06-18 11:20:49.071889+00	3139	манго консервированное	1	new through import_export	8	1
952	2023-06-18 11:20:49.072138+00	3140	мангольд	1	new through import_export	8	1
953	2023-06-18 11:20:49.072403+00	3141	мангустин	1	new through import_export	8	1
954	2023-06-18 11:20:49.072653+00	3142	мандариновое пюре	1	new through import_export	8	1
955	2023-06-18 11:20:49.072899+00	3143	мандариновые цукаты	1	new through import_export	8	1
956	2023-06-18 11:20:49.073146+00	3144	мандариновый сок	1	new through import_export	8	1
957	2023-06-18 11:20:49.073393+00	3145	мандарины	1	new through import_export	8	1
958	2023-06-18 11:20:49.073658+00	3146	мандарины в собственном соку	1	new through import_export	8	1
959	2023-06-18 11:20:49.073941+00	3147	манная крупа	1	new through import_export	8	1
960	2023-06-18 11:20:49.074207+00	3148	маракуйя	1	new through import_export	8	1
961	2023-06-18 11:20:49.074477+00	3149	маргарин	1	new through import_export	8	1
962	2023-06-18 11:20:49.074729+00	3150	маргарин сливочный	1	new through import_export	8	1
963	2023-06-18 11:20:49.074991+00	3151	мармелад	1	new through import_export	8	1
964	2023-06-18 11:20:49.075244+00	3152	мармелад бутербродный	1	new through import_export	8	1
965	2023-06-18 11:20:49.075505+00	3153	марсала	1	new through import_export	8	1
966	2023-06-18 11:20:49.075774+00	3154	мартини	1	new through import_export	8	1
967	2023-06-18 11:20:49.07603+00	3155	мартини красный	1	new through import_export	8	1
968	2023-06-18 11:20:49.076281+00	3156	марципан	1	new through import_export	8	1
969	2023-06-18 11:20:49.076675+00	3157	марципан зеленый	1	new through import_export	8	1
970	2023-06-18 11:20:49.076925+00	3158	марципан розовый	1	new through import_export	8	1
971	2023-06-18 11:20:49.077176+00	3159	маршмеллоу	1	new through import_export	8	1
972	2023-06-18 11:20:49.077449+00	3160	маршмеллоу крем	1	new through import_export	8	1
973	2023-06-18 11:20:49.077706+00	3161	маршмеллоу мини	1	new through import_export	8	1
974	2023-06-18 11:20:49.078173+00	3162	маскарпоне	1	new through import_export	8	1
975	2023-06-18 11:20:49.078537+00	3163	маслины	1	new through import_export	8	1
976	2023-06-18 11:20:49.07881+00	3164	маслины без косточек	1	new through import_export	8	1
977	2023-06-18 11:20:49.079059+00	3165	масло авокадо	1	new through import_export	8	1
978	2023-06-18 11:20:49.07933+00	3166	масло виноградных косточек	1	new through import_export	8	1
979	2023-06-18 11:20:49.079622+00	3167	масло грецкого ореха	1	new through import_export	8	1
980	2023-06-18 11:20:49.079898+00	3168	масло для фритюра	1	new through import_export	8	1
981	2023-06-18 11:20:49.080187+00	3169	масло кедрового ореха	1	new through import_export	8	1
982	2023-06-18 11:20:49.080476+00	3170	маслята	1	new through import_export	8	1
983	2023-06-18 11:20:49.080751+00	3171	мастика	1	new through import_export	8	1
984	2023-06-18 11:20:49.081007+00	3172	мастика желатиновая	1	new through import_export	8	1
985	2023-06-18 11:20:49.081249+00	3173	мастика шоколадная	1	new through import_export	8	1
986	2023-06-18 11:20:49.081537+00	3174	матча	1	new through import_export	8	1
987	2023-06-18 11:20:49.081791+00	3175	мафальдине	1	new through import_export	8	1
988	2023-06-18 11:20:49.082033+00	3176	маца	1	new through import_export	8	1
989	2023-06-18 11:20:49.082293+00	3177	мацони	1	new through import_export	8	1
990	2023-06-18 11:20:49.082584+00	3178	маш	1	new through import_export	8	1
991	2023-06-18 11:20:49.082846+00	3179	мед	1	new through import_export	8	1
992	2023-06-18 11:20:49.083089+00	3180	мед акации	1	new through import_export	8	1
993	2023-06-18 11:20:49.083346+00	3181	мед гречишный	1	new through import_export	8	1
994	2023-06-18 11:20:49.083623+00	3182	мед жидкий	1	new through import_export	8	1
995	2023-06-18 11:20:49.083884+00	3183	мед лавандовый	1	new through import_export	8	1
996	2023-06-18 11:20:49.084127+00	3184	мелисса	1	new through import_export	8	1
997	2023-06-18 11:20:49.084391+00	3185	меренги	1	new through import_export	8	1
998	2023-06-18 11:20:49.084758+00	3186	мидии	1	new through import_export	8	1
999	2023-06-18 11:20:49.085001+00	3187	мидии в раковинах	1	new through import_export	8	1
1000	2023-06-18 11:20:49.085245+00	3188	мидии в раковинах крупные черные	1	new through import_export	8	1
1001	2023-06-18 11:20:49.085512+00	3189	мидии в раковинах мелкие зеленые	1	new through import_export	8	1
1002	2023-06-18 11:20:49.085784+00	3190	мидии замороженные	1	new through import_export	8	1
1003	2023-06-18 11:20:49.086064+00	3191	мидии копченые в масле	1	new through import_export	8	1
1004	2023-06-18 11:20:49.086347+00	3192	микрозелень	1	new through import_export	8	1
1005	2023-06-18 11:20:49.08663+00	3193	миндаль	1	new through import_export	8	1
1006	2023-06-18 11:20:49.086898+00	3194	миндаль жареный	1	new through import_export	8	1
1007	2023-06-18 11:20:49.087145+00	3195	миндаль измельченный	1	new through import_export	8	1
1008	2023-06-18 11:20:49.087392+00	3196	миндальная масса	1	new through import_export	8	1
1009	2023-06-18 11:20:49.087641+00	3197	миндальная мука	1	new through import_export	8	1
1010	2023-06-18 11:20:49.087907+00	3198	миндальная паста	1	new through import_export	8	1
1011	2023-06-18 11:20:49.088152+00	3199	миндальная эссенция	1	new through import_export	8	1
1012	2023-06-18 11:20:49.08842+00	3200	миндальное масло	1	new through import_export	8	1
1013	2023-06-18 11:20:49.088728+00	3201	миндальное молоко	1	new through import_export	8	1
1014	2023-06-18 11:20:49.089218+00	3202	миндальное печенье	1	new through import_export	8	1
1015	2023-06-18 11:20:49.08952+00	3203	миндальное пралине	1	new through import_export	8	1
1016	2023-06-18 11:20:49.089817+00	3204	миндальные лепестки	1	new through import_export	8	1
1017	2023-06-18 11:20:49.090089+00	3205	миндальный ликер	1	new through import_export	8	1
1018	2023-06-18 11:20:49.090355+00	3206	миндальный сироп	1	new through import_export	8	1
1019	2023-06-18 11:20:49.090624+00	3207	миндальный экстракт	1	new through import_export	8	1
1020	2023-06-18 11:20:49.090912+00	3208	миндаль очищенный	1	new through import_export	8	1
1021	2023-06-18 11:20:49.091179+00	3209	миндаль рубленый	1	new through import_export	8	1
1022	2023-06-18 11:20:49.091446+00	3210	мини-кукуруза	1	new through import_export	8	1
1023	2023-06-18 11:20:49.091709+00	3211	минога	1	new through import_export	8	1
1024	2023-06-18 11:20:49.091958+00	3212	минтай	1	new through import_export	8	1
1025	2023-06-18 11:20:49.092214+00	3213	минтай печень	1	new through import_export	8	1
1026	2023-06-18 11:20:49.09248+00	3214	минтай филе	1	new through import_export	8	1
1027	2023-06-18 11:20:49.092746+00	3215	мисо-паста	1	new through import_export	8	1
1028	2023-06-18 11:20:49.093001+00	3216	мисо-суп	1	new through import_export	8	1
1029	2023-06-18 11:20:49.093242+00	3217	можжевельник ягоды	1	new through import_export	8	1
1030	2023-06-18 11:20:49.093495+00	3218	мойва	1	new through import_export	8	1
1031	2023-06-18 11:20:49.093752+00	3219	моллюски	1	new through import_export	8	1
1032	2023-06-18 11:20:49.094116+00	3220	молоко	1	new through import_export	8	1
1033	2023-06-18 11:20:49.094378+00	3221	молоко 0,5%	1	new through import_export	8	1
1034	2023-06-18 11:20:49.094648+00	3222	молоко 1,5%	1	new through import_export	8	1
1035	2023-06-18 11:20:49.094927+00	3223	молоко 2,5%	1	new through import_export	8	1
1036	2023-06-18 11:20:49.095196+00	3224	молоко 3,2%	1	new through import_export	8	1
1037	2023-06-18 11:20:49.095473+00	3225	молоко 3,6%	1	new through import_export	8	1
1038	2023-06-18 11:20:49.095729+00	3226	молоко 4%	1	new through import_export	8	1
1039	2023-06-18 11:20:49.09599+00	3227	молоко 6%	1	new through import_export	8	1
1040	2023-06-18 11:20:49.096241+00	3228	молоко козье	1	new through import_export	8	1
1041	2023-06-18 11:20:49.096504+00	3229	молоко концентрированное	1	new through import_export	8	1
1042	2023-06-18 11:20:49.096786+00	3230	молоко рисовое	1	new through import_export	8	1
1043	2023-06-18 11:20:49.097058+00	3231	молоко сгущенное	1	new through import_export	8	1
1044	2023-06-18 11:20:49.097317+00	3232	молоко сгущенное вареное	1	new through import_export	8	1
1045	2023-06-18 11:20:49.09761+00	3233	молоко сгущенное с какао	1	new through import_export	8	1
1046	2023-06-18 11:20:49.097894+00	3234	молоко сухое	1	new through import_export	8	1
1047	2023-06-18 11:20:49.098168+00	3235	молоко сухое обезжиренное	1	new through import_export	8	1
1048	2023-06-18 11:20:49.098435+00	3236	молоко топленое	1	new through import_export	8	1
1049	2023-06-18 11:20:49.098733+00	3237	молочная смесь	1	new through import_export	8	1
1050	2023-06-18 11:20:49.098997+00	3238	молочные продукты	1	new through import_export	8	1
1051	2023-06-18 11:20:49.099252+00	3239	морепродукты	1	new through import_export	8	1
1052	2023-06-18 11:20:49.09954+00	3240	морковное пюре	1	new through import_export	8	1
1053	2023-06-18 11:20:49.099804+00	3241	морковь	1	new through import_export	8	1
1054	2023-06-18 11:20:49.100066+00	3242	морковь вареная	1	new through import_export	8	1
1055	2023-06-18 11:20:49.100346+00	3243	морковь крупная	1	new through import_export	8	1
1056	2023-06-18 11:20:49.100617+00	3244	морковь молодая	1	new through import_export	8	1
1057	2023-06-18 11:20:49.100871+00	3245	морковь по-корейски	1	new through import_export	8	1
1058	2023-06-18 11:20:49.101127+00	3246	морковь тертая	1	new through import_export	8	1
1059	2023-06-18 11:20:49.101387+00	3247	мороженое	1	new through import_export	8	1
1060	2023-06-18 11:20:49.10167+00	3248	мороженое ванильное	1	new through import_export	8	1
1061	2023-06-18 11:20:49.101927+00	3249	мороженое клубничное	1	new through import_export	8	1
1062	2023-06-18 11:20:49.10217+00	3250	мороженое лимонное	1	new through import_export	8	1
1063	2023-06-18 11:20:49.102431+00	3251	мороженое малиновое	1	new through import_export	8	1
1064	2023-06-18 11:20:49.102709+00	3252	мороженое пломбир	1	new through import_export	8	1
1065	2023-06-18 11:20:49.103087+00	3253	мороженое шоколадное	1	new through import_export	8	1
1066	2023-06-18 11:20:49.103346+00	3254	морошка	1	new through import_export	8	1
1067	2023-06-18 11:20:49.103619+00	3255	морские гребешки	1	new through import_export	8	1
1068	2023-06-18 11:20:49.103893+00	3256	морской коктейль	1	new through import_export	8	1
1069	2023-06-18 11:20:49.104147+00	3257	морской коктейль в масле	1	new through import_export	8	1
1070	2023-06-18 11:20:49.104426+00	3258	морской коктейль замороженный	1	new through import_export	8	1
1071	2023-06-18 11:20:49.104702+00	3259	морской черт	1	new through import_export	8	1
1072	2023-06-18 11:20:49.104958+00	3260	морской язык	1	new through import_export	8	1
1073	2023-06-18 11:20:49.105204+00	3261	морской язык филе	1	new through import_export	8	1
1074	2023-06-18 11:20:49.10548+00	3262	мортаделла	1	new through import_export	8	1
1075	2023-06-18 11:20:49.105739+00	3263	моцарелла	1	new through import_export	8	1
1076	2023-06-18 11:20:49.105981+00	3264	моцарелла для запекания	1	new through import_export	8	1
1077	2023-06-18 11:20:49.106252+00	3265	моцарелла для пиццы	1	new through import_export	8	1
1078	2023-06-18 11:20:49.106541+00	3266	моцарелла мини	1	new through import_export	8	1
1079	2023-06-18 11:20:49.106794+00	3267	моцарелла с травами	1	new through import_export	8	1
1080	2023-06-18 11:20:49.10705+00	3268	моцарелла шарик большой	1	new through import_export	8	1
1081	2023-06-18 11:20:49.107344+00	3269	мука	1	new through import_export	8	1
1082	2023-06-18 11:20:49.107622+00	3270	мука 1 сорт	1	new through import_export	8	1
1083	2023-06-18 11:20:49.107901+00	3271	мука 2 сорт	1	new through import_export	8	1
1084	2023-06-18 11:20:49.108155+00	3272	мука «Аладушкин»	1	new through import_export	8	1
1085	2023-06-18 11:20:49.108407+00	3273	мука грубого помола	1	new through import_export	8	1
1086	2023-06-18 11:20:49.108669+00	3274	мука для темпуры	1	new through import_export	8	1
1087	2023-06-18 11:20:49.108933+00	3275	мука из пророщенной пшеницы	1	new through import_export	8	1
1088	2023-06-18 11:20:49.109192+00	3276	мука манитоба	1	new through import_export	8	1
1089	2023-06-18 11:20:49.109458+00	3277	мука самоподнимающаяся	1	new through import_export	8	1
1090	2023-06-18 11:20:49.109716+00	3278	мука с отрубями	1	new through import_export	8	1
1091	2023-06-18 11:20:49.10997+00	3279	мука с семечками	1	new through import_export	8	1
1092	2023-06-18 11:20:49.110224+00	3280	мука хлебопекарная	1	new through import_export	8	1
1093	2023-06-18 11:20:49.110489+00	3281	мука цельнозерновая	1	new through import_export	8	1
1094	2023-06-18 11:20:49.110765+00	3282	мускат белый	1	new through import_export	8	1
1095	2023-06-18 11:20:49.111026+00	3283	мускатное вино	1	new through import_export	8	1
1096	2023-06-18 11:20:49.111278+00	3284	мускатный орех	1	new through import_export	8	1
1097	2023-06-18 11:20:49.111686+00	3285	мускатный орех молотый	1	new through import_export	8	1
1098	2023-06-18 11:20:49.111961+00	3286	мюсли	1	new through import_export	8	1
1099	2023-06-18 11:20:49.112217+00	3287	мягкий творог	1	new through import_export	8	1
1100	2023-06-18 11:20:49.112475+00	3288	мясной бульон	1	new through import_export	8	1
1101	2023-06-18 11:20:49.112748+00	3289	мясной фарш	1	new through import_export	8	1
1102	2023-06-18 11:20:49.113+00	3290	мясо	1	new through import_export	8	1
1103	2023-06-18 11:20:49.113244+00	3291	мясо дикого кабана	1	new through import_export	8	1
1104	2023-06-18 11:20:49.113504+00	3292	мясо криля	1	new through import_export	8	1
1105	2023-06-18 11:20:49.113761+00	3293	мясо на косточке	1	new through import_export	8	1
1106	2023-06-18 11:20:49.114003+00	3294	мята	1	new through import_export	8	1
1107	2023-06-18 11:20:49.11426+00	3295	мята сушеная	1	new through import_export	8	1
1108	2023-06-18 11:20:49.114515+00	3296	мятный сироп	1	new through import_export	8	1
1109	2023-06-18 11:20:49.114775+00	3297	мятный шнапс	1	new through import_export	8	1
1110	2023-06-18 11:20:49.115017+00	3298	нардек	1	new through import_export	8	1
1111	2023-06-18 11:20:49.11526+00	3299	нектарины	1	new through import_export	8	1
1112	2023-06-18 11:20:49.115511+00	3300	нога ягненка без кости	1	new through import_export	8	1
1113	2023-06-18 11:20:49.115773+00	3301	нори	1	new through import_export	8	1
1114	2023-06-18 11:20:49.116032+00	3302	нуга	1	new through import_export	8	1
1115	2023-06-18 11:20:49.116279+00	3303	нуга с орехами	1	new through import_export	8	1
1116	2023-06-18 11:20:49.116534+00	3304	нут	1	new through import_export	8	1
1117	2023-06-18 11:20:49.116797+00	3305	нутелла	1	new through import_export	8	1
1118	2023-06-18 11:20:49.117043+00	3306	нут консервированный	1	new through import_export	8	1
1119	2023-06-18 11:20:49.11729+00	3307	нутовая мука	1	new through import_export	8	1
1120	2023-06-18 11:20:49.117552+00	3308	облепиха	1	new through import_export	8	1
1121	2023-06-18 11:20:49.117805+00	3309	облепиха замороженная	1	new through import_export	8	1
1122	2023-06-18 11:20:49.118051+00	3310	облепиховый сироп	1	new through import_export	8	1
1123	2023-06-18 11:20:49.118304+00	3311	овощи	1	new through import_export	8	1
1124	2023-06-18 11:20:49.11858+00	3312	овощная смесь	1	new through import_export	8	1
1125	2023-06-18 11:20:49.118843+00	3313	овощная смесь замороженная	1	new through import_export	8	1
1126	2023-06-18 11:20:49.119108+00	3314	овощная смесь замороженная для wok	1	new through import_export	8	1
1127	2023-06-18 11:20:49.119387+00	3315	овощная смесь по-китайски	1	new through import_export	8	1
1128	2023-06-18 11:20:49.119663+00	3316	овощной бульон	1	new through import_export	8	1
1129	2023-06-18 11:20:49.119916+00	3317	овсяная мука	1	new through import_export	8	1
1130	2023-06-18 11:20:49.12032+00	3318	овсяное молоко	1	new through import_export	8	1
1131	2023-06-18 11:20:49.120586+00	3319	овсяное печенье	1	new through import_export	8	1
1132	2023-06-18 11:20:49.120838+00	3320	овсяное толокно	1	new through import_export	8	1
1133	2023-06-18 11:20:49.121105+00	3321	овсяные зерна	1	new through import_export	8	1
1134	2023-06-18 11:20:49.12138+00	3322	овсяные отруби	1	new through import_export	8	1
1135	2023-06-18 11:20:49.121651+00	3323	овсяные хлопья	1	new through import_export	8	1
1136	2023-06-18 11:20:49.121925+00	3324	овсяные хлопья быстрого приготовления	1	new through import_export	8	1
1137	2023-06-18 11:20:49.122184+00	3325	огуречный рассол	1	new through import_export	8	1
1138	2023-06-18 11:20:49.122448+00	3326	огурцы	1	new through import_export	8	1
1139	2023-06-18 11:20:49.122729+00	3327	огурцы консервированные	1	new through import_export	8	1
1140	2023-06-18 11:20:49.122996+00	3328	огурцы малосольные	1	new through import_export	8	1
1141	2023-06-18 11:20:49.123301+00	3329	огурцы маринованные	1	new through import_export	8	1
1880	2023-06-18 11:20:49.308042+00	4068	тунец	1	new through import_export	8	1
1142	2023-06-18 11:20:49.123563+00	3330	огурцы свежие	1	new through import_export	8	1
1143	2023-06-18 11:20:49.12385+00	3331	огурцы соленые	1	new through import_export	8	1
1144	2023-06-18 11:20:49.124102+00	3332	одуванчики	1	new through import_export	8	1
1145	2023-06-18 11:20:49.124372+00	3333	окорок	1	new through import_export	8	1
1146	2023-06-18 11:20:49.124637+00	3334	окорок варено-копченый	1	new through import_export	8	1
1147	2023-06-18 11:20:49.124892+00	3335	окунь	1	new through import_export	8	1
1148	2023-06-18 11:20:49.125141+00	3336	окунь красный филе	1	new through import_export	8	1
1149	2023-06-18 11:20:49.125398+00	3337	окунь морской	1	new through import_export	8	1
1150	2023-06-18 11:20:49.125678+00	3338	окунь морской филе	1	new through import_export	8	1
1151	2023-06-18 11:20:49.12594+00	3339	окунь филе	1	new through import_export	8	1
1152	2023-06-18 11:20:49.126199+00	3340	оленина	1	new through import_export	8	1
1153	2023-06-18 11:20:49.12646+00	3341	оливки	1	new through import_export	8	1
1154	2023-06-18 11:20:49.126719+00	3342	оливки без косточек	1	new through import_export	8	1
1155	2023-06-18 11:20:49.126979+00	3343	оливки зеленые	1	new through import_export	8	1
1156	2023-06-18 11:20:49.127234+00	3344	оливки зеленые консервированные	1	new through import_export	8	1
1157	2023-06-18 11:20:49.12752+00	3345	оливки каламата	1	new through import_export	8	1
1158	2023-06-18 11:20:49.127777+00	3346	оливки консервированные	1	new through import_export	8	1
1159	2023-06-18 11:20:49.128035+00	3347	оливки, фаршированные анчоусами	1	new through import_export	8	1
1160	2023-06-18 11:20:49.128335+00	3348	оливки черные	1	new through import_export	8	1
1161	2023-06-18 11:20:49.128604+00	3349	оливковая паста	1	new through import_export	8	1
1162	2023-06-18 11:20:49.129013+00	3350	оливковое масло	1	new through import_export	8	1
1163	2023-06-18 11:20:49.129279+00	3351	оливковое масло Extra Virgin	1	new through import_export	8	1
1164	2023-06-18 11:20:49.129547+00	3352	опунция плоды	1	new through import_export	8	1
1165	2023-06-18 11:20:49.129825+00	3353	опята	1	new through import_export	8	1
1166	2023-06-18 11:20:49.130106+00	3354	опята замороженные	1	new through import_export	8	1
1167	2023-06-18 11:20:49.130366+00	3355	опята маринованные	1	new through import_export	8	1
1168	2023-06-18 11:20:49.130627+00	3356	орегано	1	new through import_export	8	1
1169	2023-06-18 11:20:49.130882+00	3357	орегано свежий	1	new through import_export	8	1
1170	2023-06-18 11:20:49.131145+00	3358	орегано сушеный	1	new through import_export	8	1
1171	2023-06-18 11:20:49.131395+00	3359	орехи	1	new through import_export	8	1
1172	2023-06-18 11:20:49.131635+00	3360	орехи бразильские	1	new through import_export	8	1
1173	2023-06-18 11:20:49.131887+00	3361	орехи макадамия	1	new through import_export	8	1
1174	2023-06-18 11:20:49.132144+00	3362	орехи пекан	1	new through import_export	8	1
1175	2023-06-18 11:20:49.132399+00	3363	орехи пинии	1	new through import_export	8	1
1176	2023-06-18 11:20:49.132652+00	3364	ореховая крошка	1	new through import_export	8	1
1177	2023-06-18 11:20:49.132897+00	3365	ореховая паста	1	new through import_export	8	1
1178	2023-06-18 11:20:49.133173+00	3366	ореховое масло	1	new through import_export	8	1
1179	2023-06-18 11:20:49.133425+00	3367	ореховый ликер	1	new through import_export	8	1
1180	2023-06-18 11:20:49.13367+00	3368	ореховый соус	1	new through import_export	8	1
1181	2023-06-18 11:20:49.133909+00	3369	осетр	1	new through import_export	8	1
1182	2023-06-18 11:20:49.134152+00	3370	осетрина холодного копчения	1	new through import_export	8	1
1183	2023-06-18 11:20:49.134403+00	3371	осьминог	1	new through import_export	8	1
1184	2023-06-18 11:20:49.134669+00	3372	осьминоги консервированные	1	new through import_export	8	1
1185	2023-06-18 11:20:49.134947+00	3373	осьминоги мини	1	new through import_export	8	1
1186	2023-06-18 11:20:49.135199+00	3374	отруби	1	new through import_export	8	1
1187	2023-06-18 11:20:49.135456+00	3375	ошеек	1	new through import_export	8	1
1188	2023-06-18 11:20:49.1357+00	3376	пагр	1	new through import_export	8	1
1189	2023-06-18 11:20:49.135954+00	3377	пажитник	1	new through import_export	8	1
1190	2023-06-18 11:20:49.1362+00	3378	пажитник семена	1	new through import_export	8	1
1191	2023-06-18 11:20:49.13646+00	3379	палтус	1	new through import_export	8	1
1192	2023-06-18 11:20:49.136704+00	3380	пальмовое масло	1	new through import_export	8	1
1193	2023-06-18 11:20:49.136957+00	3381	пангасиус	1	new through import_export	8	1
1194	2023-06-18 11:20:49.137347+00	3382	панеттоне	1	new through import_export	8	1
1195	2023-06-18 11:20:49.137601+00	3383	Панифарин	1	new through import_export	8	1
1196	2023-06-18 11:20:49.137847+00	3384	панчетта	1	new through import_export	8	1
1197	2023-06-18 11:20:49.138102+00	3385	папайя	1	new through import_export	8	1
1198	2023-06-18 11:20:49.138349+00	3386	папайя консервированная в собственном соку	1	new through import_export	8	1
1199	2023-06-18 11:20:49.138607+00	3387	папоротник	1	new through import_export	8	1
1200	2023-06-18 11:20:49.138849+00	3388	папоротник соленый	1	new through import_export	8	1
1201	2023-06-18 11:20:49.139117+00	3389	паппарделле	1	new through import_export	8	1
1202	2023-06-18 11:20:49.139395+00	3390	паприка	1	new through import_export	8	1
1203	2023-06-18 11:20:49.139667+00	3391	паприка копченая	1	new through import_export	8	1
1204	2023-06-18 11:20:49.13993+00	3392	паприка красная	1	new through import_export	8	1
1205	2023-06-18 11:20:49.140174+00	3393	паприка красная молотая	1	new through import_export	8	1
1206	2023-06-18 11:20:49.140428+00	3394	паприка острая копченая	1	new through import_export	8	1
1207	2023-06-18 11:20:49.14068+00	3395	паприка сладкая	1	new through import_export	8	1
1208	2023-06-18 11:20:49.140924+00	3396	паприка сладкая копченая	1	new through import_export	8	1
1209	2023-06-18 11:20:49.14119+00	3397	паприка сладкая хлопьями	1	new through import_export	8	1
1210	2023-06-18 11:20:49.141478+00	3398	пармезан	1	new through import_export	8	1
1211	2023-06-18 11:20:49.141763+00	3399	паста	1	new through import_export	8	1
1212	2023-06-18 11:20:49.142029+00	3400	паста веджимайт	1	new through import_export	8	1
1213	2023-06-18 11:20:49.142284+00	3401	паста тахини	1	new through import_export	8	1
1214	2023-06-18 11:20:49.142543+00	3402	паста хариса	1	new through import_export	8	1
1215	2023-06-18 11:20:49.142794+00	3403	пастернак	1	new through import_export	8	1
1216	2023-06-18 11:20:49.143041+00	3404	пастила	1	new through import_export	8	1
1217	2023-06-18 11:20:49.143291+00	3405	пастила виноградная	1	new through import_export	8	1
1218	2023-06-18 11:20:49.143553+00	3406	патиссоны	1	new through import_export	8	1
1219	2023-06-18 11:20:49.143803+00	3407	патока	1	new through import_export	8	1
1220	2023-06-18 11:20:49.144057+00	3408	патока крахмальная	1	new through import_export	8	1
1221	2023-06-18 11:20:49.144323+00	3409	патока черная (меласса)	1	new through import_export	8	1
1222	2023-06-18 11:20:49.144576+00	3410	пахта	1	new through import_export	8	1
1223	2023-06-18 11:20:49.144827+00	3411	паштет	1	new through import_export	8	1
1224	2023-06-18 11:20:49.145072+00	3412	пекарский порошок	1	new through import_export	8	1
1225	2023-06-18 11:20:49.145324+00	3413	пекарский порошок	1	new through import_export	8	1
1226	2023-06-18 11:20:49.145571+00	3414	пекорино	1	new through import_export	8	1
1227	2023-06-18 11:20:49.146044+00	3415	пектин	1	new through import_export	8	1
1228	2023-06-18 11:20:49.146292+00	3416	пеленгас	1	new through import_export	8	1
1229	2023-06-18 11:20:49.146544+00	3417	пельмени	1	new through import_export	8	1
1230	2023-06-18 11:20:49.146805+00	3418	пенне	1	new through import_export	8	1
1231	2023-06-18 11:20:49.147053+00	3419	пенне ригате	1	new through import_export	8	1
1232	2023-06-18 11:20:49.147293+00	3420	пеперончино	1	new through import_export	8	1
1233	2023-06-18 11:20:49.147547+00	3421	пеперончино молотый	1	new through import_export	8	1
1234	2023-06-18 11:20:49.14779+00	3422	переводной лист для шоколада	1	new through import_export	8	1
1235	2023-06-18 11:20:49.148052+00	3423	перепелки	1	new through import_export	8	1
1236	2023-06-18 11:20:49.148335+00	3424	перец	1	new through import_export	8	1
1237	2023-06-18 11:20:49.148603+00	3425	перец белый	1	new through import_export	8	1
1238	2023-06-18 11:20:49.148855+00	3426	перец белый горошком	1	new through import_export	8	1
1239	2023-06-18 11:20:49.14911+00	3427	перец белый молотый	1	new through import_export	8	1
1240	2023-06-18 11:20:49.149365+00	3428	перец белый свежемолотый	1	new through import_export	8	1
1241	2023-06-18 11:20:49.149615+00	3429	перец болгарский	1	new through import_export	8	1
1242	2023-06-18 11:20:49.149866+00	3430	перец болгарский желтый	1	new through import_export	8	1
1243	2023-06-18 11:20:49.150116+00	3431	перец болгарский зеленый	1	new through import_export	8	1
1244	2023-06-18 11:20:49.150394+00	3432	перец болгарский красный	1	new through import_export	8	1
1245	2023-06-18 11:20:49.150647+00	3433	перец горошком	1	new through import_export	8	1
1246	2023-06-18 11:20:49.150905+00	3434	перец горошком смесь	1	new through import_export	8	1
1247	2023-06-18 11:20:49.151164+00	3435	перец душистый	1	new through import_export	8	1
1248	2023-06-18 11:20:49.151444+00	3436	перец душистый горошком	1	new through import_export	8	1
1249	2023-06-18 11:20:49.151716+00	3437	перец душистый молотый	1	new through import_export	8	1
1250	2023-06-18 11:20:49.151982+00	3438	перец испанский острый	1	new through import_export	8	1
1251	2023-06-18 11:20:49.15223+00	3439	перец кайенский	1	new through import_export	8	1
1252	2023-06-18 11:20:49.152498+00	3440	перец кайенский красный	1	new through import_export	8	1
1253	2023-06-18 11:20:49.152762+00	3441	перец кайенский молотый	1	new through import_export	8	1
1254	2023-06-18 11:20:49.153039+00	3442	перец красный	1	new through import_export	8	1
1255	2023-06-18 11:20:49.153297+00	3443	перец красный горошком	1	new through import_export	8	1
1256	2023-06-18 11:20:49.153558+00	3444	перец красный жгучий	1	new through import_export	8	1
1257	2023-06-18 11:20:49.153806+00	3445	перец красный молотый	1	new through import_export	8	1
1258	2023-06-18 11:20:49.154059+00	3446	перец красный острый	1	new through import_export	8	1
1259	2023-06-18 11:20:49.154316+00	3447	перец красный острый молотый	1	new through import_export	8	1
1260	2023-06-18 11:20:49.154685+00	3448	перец красный хлопьями	1	new through import_export	8	1
1261	2023-06-18 11:20:49.154936+00	3449	перец лимонный	1	new through import_export	8	1
1262	2023-06-18 11:20:49.155182+00	3450	перец маринованный	1	new through import_export	8	1
1263	2023-06-18 11:20:49.155429+00	3451	перец острый	1	new through import_export	8	1
1264	2023-06-18 11:20:49.155688+00	3452	перец острый зеленый	1	new through import_export	8	1
1265	2023-06-18 11:20:49.155976+00	3453	перец острый молотый	1	new through import_export	8	1
1266	2023-06-18 11:20:49.156262+00	3454	перец падрон	1	new through import_export	8	1
1267	2023-06-18 11:20:49.15653+00	3455	перец пеперони	1	new through import_export	8	1
1268	2023-06-18 11:20:49.156778+00	3456	перец пеперони красный	1	new through import_export	8	1
1269	2023-06-18 11:20:49.157045+00	3457	перец розовый горошком	1	new through import_export	8	1
1270	2023-06-18 11:20:49.157295+00	3458	перец свежемолотый смесь	1	new through import_export	8	1
1271	2023-06-18 11:20:49.157556+00	3459	перец сенегальский	1	new through import_export	8	1
1272	2023-06-18 11:20:49.157795+00	3460	перец сладкий	1	new through import_export	8	1
1273	2023-06-18 11:20:49.15805+00	3461	перец сладкий желтый	1	new through import_export	8	1
1274	2023-06-18 11:20:49.158337+00	3462	перец сладкий зеленый	1	new through import_export	8	1
1275	2023-06-18 11:20:49.158621+00	3463	перец сладкий красный	1	new through import_export	8	1
1276	2023-06-18 11:20:49.158881+00	3464	перец сладкий красный маринованный	1	new through import_export	8	1
1277	2023-06-18 11:20:49.159135+00	3465	перец сладкий красный молотый	1	new through import_export	8	1
1278	2023-06-18 11:20:49.15939+00	3466	перец сладкий оранжевый	1	new through import_export	8	1
1279	2023-06-18 11:20:49.159631+00	3467	перец сладкий сушеный	1	new through import_export	8	1
1280	2023-06-18 11:20:49.159872+00	3468	перец сычуаньский	1	new through import_export	8	1
1281	2023-06-18 11:20:49.160131+00	3469	перец халапеньо	1	new through import_export	8	1
1282	2023-06-18 11:20:49.160375+00	3470	перец халапеньо маринованный	1	new through import_export	8	1
1283	2023-06-18 11:20:49.160632+00	3471	перец черный	1	new through import_export	8	1
1284	2023-06-18 11:20:49.160879+00	3472	перец черный горошком	1	new through import_export	8	1
1285	2023-06-18 11:20:49.16113+00	3473	перец черный молотый	1	new through import_export	8	1
1286	2023-06-18 11:20:49.161388+00	3474	перец черный свежемолотый	1	new through import_export	8	1
1287	2023-06-18 11:20:49.161653+00	3475	перец чили	1	new through import_export	8	1
1288	2023-06-18 11:20:49.161902+00	3476	перец чили зеленый	1	new through import_export	8	1
1289	2023-06-18 11:20:49.16215+00	3477	перец чили красный	1	new through import_export	8	1
1290	2023-06-18 11:20:49.162396+00	3478	перец чили маринованный	1	new through import_export	8	1
1291	2023-06-18 11:20:49.162664+00	3479	перец чили молотый	1	new through import_export	8	1
1292	2023-06-18 11:20:49.16306+00	3480	перец чили сухой	1	new through import_export	8	1
1293	2023-06-18 11:20:49.163326+00	3481	перец чили хлопьями	1	new through import_export	8	1
1294	2023-06-18 11:20:49.163583+00	3482	перец ямайский	1	new through import_export	8	1
1295	2023-06-18 11:20:49.16385+00	3483	перловая крупа	1	new through import_export	8	1
1296	2023-06-18 11:20:49.164118+00	3484	перловая мука	1	new through import_export	8	1
1297	2023-06-18 11:20:49.164512+00	3485	персики	1	new through import_export	8	1
1298	2023-06-18 11:20:49.164782+00	3486	персики консервированные	1	new through import_export	8	1
1299	2023-06-18 11:20:49.165035+00	3487	персики сушеные	1	new through import_export	8	1
1300	2023-06-18 11:20:49.165282+00	3488	персиковое пюре	1	new through import_export	8	1
1301	2023-06-18 11:20:49.165561+00	3489	персиковый джем	1	new through import_export	8	1
1302	2023-06-18 11:20:49.165815+00	3490	персиковый мармелад	1	new through import_export	8	1
1303	2023-06-18 11:20:49.166074+00	3491	персиковый сироп	1	new through import_export	8	1
1304	2023-06-18 11:20:49.166335+00	3492	персиковый сок	1	new through import_export	8	1
1305	2023-06-18 11:20:49.166586+00	3493	перцовая паста	1	new through import_export	8	1
1306	2023-06-18 11:20:49.166854+00	3494	петрушка	1	new through import_export	8	1
1307	2023-06-18 11:20:49.1671+00	3495	петрушка зелень	1	new through import_export	8	1
1308	2023-06-18 11:20:49.167347+00	3496	петрушка итальянская	1	new through import_export	8	1
1309	2023-06-18 11:20:49.167599+00	3497	петрушка корень	1	new through import_export	8	1
1310	2023-06-18 11:20:49.167851+00	3498	петрушка рубленая	1	new through import_export	8	1
1311	2023-06-18 11:20:49.168091+00	3499	петрушка сушеная	1	new through import_export	8	1
1312	2023-06-18 11:20:49.168339+00	3500	печень	1	new through import_export	8	1
1313	2023-06-18 11:20:49.168595+00	3501	печенье	1	new through import_export	8	1
1314	2023-06-18 11:20:49.168838+00	3502	печенье Oreo	1	new through import_export	8	1
1315	2023-06-18 11:20:49.169086+00	3503	печенье Амаретти	1	new through import_export	8	1
1316	2023-06-18 11:20:49.169341+00	3504	печенье бисквитное	1	new through import_export	8	1
1317	2023-06-18 11:20:49.169587+00	3505	печенье галетное	1	new through import_export	8	1
1318	2023-06-18 11:20:49.169838+00	3506	печенье «Дамские пальчики»	1	new through import_export	8	1
1319	2023-06-18 11:20:49.170083+00	3507	печенье песочное	1	new through import_export	8	1
1320	2023-06-18 11:20:49.170336+00	3508	печенье рассыпчатое	1	new through import_export	8	1
1321	2023-06-18 11:20:49.170585+00	3509	печенье Савоярди	1	new through import_export	8	1
1322	2023-06-18 11:20:49.170971+00	3510	печенье сахарное	1	new through import_export	8	1
1323	2023-06-18 11:20:49.171225+00	3511	печенье сладкое	1	new through import_export	8	1
1324	2023-06-18 11:20:49.171472+00	3512	печенье сухое	1	new through import_export	8	1
1325	2023-06-18 11:20:49.171716+00	3513	печенье шоколадное	1	new through import_export	8	1
1326	2023-06-18 11:20:49.171966+00	3514	печенье Юбилейное молочное	1	new through import_export	8	1
1327	2023-06-18 11:20:49.172217+00	3515	пиво	1	new through import_export	8	1
1328	2023-06-18 11:20:49.172467+00	3516	пиво имбирное	1	new through import_export	8	1
1329	2023-06-18 11:20:49.172714+00	3517	пиво нефильтрованное	1	new through import_export	8	1
1330	2023-06-18 11:20:49.172961+00	3518	пиво светлое	1	new through import_export	8	1
1331	2023-06-18 11:20:49.173205+00	3519	пиво темное	1	new through import_export	8	1
1332	2023-06-18 11:20:49.173458+00	3520	пикша	1	new through import_export	8	1
1333	2023-06-18 11:20:49.173702+00	3521	питы	1	new through import_export	8	1
1334	2023-06-18 11:20:49.173947+00	3522	повидло	1	new through import_export	8	1
1335	2023-06-18 11:20:49.174194+00	3523	подсолнечное масло	1	new through import_export	8	1
1336	2023-06-18 11:20:49.17445+00	3524	подсолнечные семечки	1	new through import_export	8	1
1337	2023-06-18 11:20:49.174709+00	3525	полба	1	new through import_export	8	1
1338	2023-06-18 11:20:49.174958+00	3526	полба недозрелая	1	new through import_export	8	1
1339	2023-06-18 11:20:49.175253+00	3527	полента	1	new through import_export	8	1
1340	2023-06-18 11:20:49.175534+00	3528	полента быстрого приготовления	1	new through import_export	8	1
1341	2023-06-18 11:20:49.175785+00	3529	помело	1	new through import_export	8	1
1342	2023-06-18 11:20:49.176032+00	3530	помидоры	1	new through import_export	8	1
1343	2023-06-18 11:20:49.176279+00	3531	помидоры бурые	1	new through import_export	8	1
1344	2023-06-18 11:20:49.176531+00	3532	помидоры вяленые	1	new through import_export	8	1
1345	2023-06-18 11:20:49.176791+00	3533	помидоры вяленые в масле	1	new through import_export	8	1
1346	2023-06-18 11:20:49.177045+00	3534	помидоры желтые	1	new through import_export	8	1
1347	2023-06-18 11:20:49.177291+00	3535	помидоры зеленые	1	new through import_export	8	1
1348	2023-06-18 11:20:49.17755+00	3536	помидоры консервированные	1	new through import_export	8	1
1349	2023-06-18 11:20:49.1778+00	3537	помидоры консервированные в собственном соку	1	new through import_export	8	1
1350	2023-06-18 11:20:49.178047+00	3538	помидоры консервированные в собственном соку с базиликом	1	new through import_export	8	1
1351	2023-06-18 11:20:49.178316+00	3539	помидоры протертые пассата	1	new through import_export	8	1
1352	2023-06-18 11:20:49.178567+00	3540	помидоры соленые	1	new through import_export	8	1
1353	2023-06-18 11:20:49.17881+00	3541	помидоры сушеные хлопьями	1	new through import_export	8	1
1354	2023-06-18 11:20:49.179059+00	3542	помидоры черри	1	new through import_export	8	1
1355	2023-06-18 11:20:49.17944+00	3543	помидоры черри желтые	1	new through import_export	8	1
1356	2023-06-18 11:20:49.17969+00	3544	попкорн	1	new through import_export	8	1
1357	2023-06-18 11:20:49.179935+00	3545	поросенок	1	new through import_export	8	1
1358	2023-06-18 11:20:49.18018+00	3546	портвейн	1	new through import_export	8	1
1359	2023-06-18 11:20:49.180432+00	3547	портобелло	1	new through import_export	8	1
1360	2023-06-18 11:20:49.180708+00	3548	портулак	1	new through import_export	8	1
1361	2023-06-18 11:20:49.180958+00	3549	посыпка кондитерская	1	new through import_export	8	1
1362	2023-06-18 11:20:49.181199+00	3550	почки	1	new through import_export	8	1
1363	2023-06-18 11:20:49.18145+00	3551	приправа 4 перца	1	new through import_export	8	1
1364	2023-06-18 11:20:49.181692+00	3552	приправа 5 специй (five spice)	1	new through import_export	8	1
1365	2023-06-18 11:20:49.181933+00	3553	приправа для баранины	1	new through import_export	8	1
1366	2023-06-18 11:20:49.182173+00	3554	приправа для картофеля	1	new through import_export	8	1
1367	2023-06-18 11:20:49.18243+00	3555	приправа для курицы	1	new through import_export	8	1
1368	2023-06-18 11:20:49.18269+00	3556	приправа для макарон	1	new through import_export	8	1
1369	2023-06-18 11:20:49.182955+00	3557	приправа для маринования свинины	1	new through import_export	8	1
1370	2023-06-18 11:20:49.183233+00	3558	приправа для морепродуктов	1	new through import_export	8	1
1371	2023-06-18 11:20:49.183538+00	3559	приправа для мяса	1	new through import_export	8	1
1372	2023-06-18 11:20:49.183792+00	3560	приправа для паэльи	1	new through import_export	8	1
1373	2023-06-18 11:20:49.184052+00	3561	приправа для пиццы	1	new through import_export	8	1
1374	2023-06-18 11:20:49.184334+00	3562	приправа для плова	1	new through import_export	8	1
1375	2023-06-18 11:20:49.184589+00	3563	приправа для птицы	1	new through import_export	8	1
1376	2023-06-18 11:20:49.184833+00	3564	приправа для рыбы	1	new through import_export	8	1
1377	2023-06-18 11:20:49.185084+00	3565	приправа для салатов	1	new through import_export	8	1
1378	2023-06-18 11:20:49.185332+00	3566	приправа заатар	1	new through import_export	8	1
1379	2023-06-18 11:20:49.185579+00	3567	приправа креольская	1	new through import_export	8	1
1380	2023-06-18 11:20:49.185839+00	3568	приправа с сушеными грибами	1	new through import_export	8	1
1381	2023-06-18 11:20:49.186103+00	3569	приправы	1	new through import_export	8	1
1382	2023-06-18 11:20:49.186377+00	3570	прованские травы	1	new through import_export	8	1
1383	2023-06-18 11:20:49.186634+00	3571	проволоне	1	new through import_export	8	1
1384	2023-06-18 11:20:49.186889+00	3572	просекко	1	new through import_export	8	1
1385	2023-06-18 11:20:49.187156+00	3573	простокваша	1	new through import_export	8	1
1386	2023-06-18 11:20:49.18742+00	3574	протеин сывороточный	1	new through import_export	8	1
1387	2023-06-18 11:20:49.187696+00	3575	прошутто	1	new through import_export	8	1
1388	2023-06-18 11:20:49.188197+00	3576	пряники	1	new through import_export	8	1
1389	2023-06-18 11:20:49.188469+00	3577	пряничные специи	1	new through import_export	8	1
1390	2023-06-18 11:20:49.188715+00	3578	пряности	1	new through import_export	8	1
1391	2023-06-18 11:20:49.188963+00	3579	псиллиум	1	new through import_export	8	1
1392	2023-06-18 11:20:49.189229+00	3580	птитим	1	new through import_export	8	1
1393	2023-06-18 11:20:49.189489+00	3581	пудинг	1	new through import_export	8	1
1394	2023-06-18 11:20:49.189741+00	3582	пудинг ванильный	1	new through import_export	8	1
1395	2023-06-18 11:20:49.189989+00	3583	пудинг ванильный инстант	1	new through import_export	8	1
1396	2023-06-18 11:20:49.190242+00	3584	пудинг карамельный	1	new through import_export	8	1
1397	2023-06-18 11:20:49.190497+00	3585	пшеница	1	new through import_export	8	1
1398	2023-06-18 11:20:49.190743+00	3586	пшеничная крупа	1	new through import_export	8	1
1399	2023-06-18 11:20:49.190987+00	3587	пшеничная мука	1	new through import_export	8	1
1400	2023-06-18 11:20:49.191238+00	3588	пшеничная мука цельнозерновая	1	new through import_export	8	1
1401	2023-06-18 11:20:49.191509+00	3589	пшеничные зародыши	1	new through import_export	8	1
1402	2023-06-18 11:20:49.191781+00	3590	пшеничные отруби	1	new through import_export	8	1
1403	2023-06-18 11:20:49.192034+00	3591	пшеничные ростки	1	new through import_export	8	1
1404	2023-06-18 11:20:49.192331+00	3592	пшеничные хлопья	1	new through import_export	8	1
1405	2023-06-18 11:20:49.192584+00	3593	пшенные хлопья	1	new through import_export	8	1
1406	2023-06-18 11:20:49.192825+00	3594	пшено	1	new through import_export	8	1
1407	2023-06-18 11:20:49.19307+00	3595	пыльца цветочная	1	new through import_export	8	1
1408	2023-06-18 11:20:49.193329+00	3596	пюре	1	new through import_export	8	1
1409	2023-06-18 11:20:49.193583+00	3597	радиккио	1	new through import_export	8	1
1410	2023-06-18 11:20:49.193825+00	3598	разрыхлитель	1	new through import_export	8	1
1411	2023-06-18 11:20:49.194069+00	3599	раки	1	new through import_export	8	1
1412	2023-06-18 11:20:49.194317+00	3600	раковые шейки	1	new through import_export	8	1
1413	2023-06-18 11:20:49.194562+00	3601	раковые шейки в рассоле	1	new through import_export	8	1
1414	2023-06-18 11:20:49.194804+00	3602	рамбутан	1	new through import_export	8	1
1415	2023-06-18 11:20:49.195047+00	3603	рапаны	1	new through import_export	8	1
1416	2023-06-18 11:20:49.195288+00	3604	рапсовое масло	1	new through import_export	8	1
1417	2023-06-18 11:20:49.195538+00	3605	рассол	1	new through import_export	8	1
1418	2023-06-18 11:20:49.195803+00	3606	рассол от каперсов	1	new through import_export	8	1
1419	2023-06-18 11:20:49.196085+00	3607	рассол от оливок	1	new through import_export	8	1
1420	2023-06-18 11:20:49.196346+00	3608	растительное масло	1	new through import_export	8	1
1421	2023-06-18 11:20:49.196723+00	3609	растительное масло для жарки	1	new through import_export	8	1
1422	2023-06-18 11:20:49.196984+00	3610	растительное масло нерафинированное	1	new through import_export	8	1
1423	2023-06-18 11:20:49.197241+00	3611	растительное масло рафинированное	1	new through import_export	8	1
1424	2023-06-18 11:20:49.197488+00	3612	растительное молоко	1	new through import_export	8	1
1425	2023-06-18 11:20:49.197743+00	3613	ревень	1	new through import_export	8	1
1426	2023-06-18 11:20:49.197992+00	3614	реган	1	new through import_export	8	1
1427	2023-06-18 11:20:49.198231+00	3615	редис	1	new through import_export	8	1
1428	2023-06-18 11:20:49.198496+00	3616	редька	1	new through import_export	8	1
1429	2023-06-18 11:20:49.198778+00	3617	редька белая	1	new through import_export	8	1
1430	2023-06-18 11:20:49.199052+00	3618	редька зеленая	1	new through import_export	8	1
1431	2023-06-18 11:20:49.199314+00	3619	редька черная	1	new through import_export	8	1
1432	2023-06-18 11:20:49.199547+00	3620	репа	1	new through import_export	8	1
1433	2023-06-18 11:20:49.199773+00	3621	репа белая	1	new through import_export	8	1
1434	2023-06-18 11:20:49.2+00	3622	ржаная закваска	1	new through import_export	8	1
1435	2023-06-18 11:20:49.200252+00	3623	ржаная закваска густая	1	new through import_export	8	1
1436	2023-06-18 11:20:49.200493+00	3624	ржаная мука	1	new through import_export	8	1
1437	2023-06-18 11:20:49.200761+00	3625	ржаные отруби	1	new through import_export	8	1
1438	2023-06-18 11:20:49.201018+00	3626	ригатони	1	new through import_export	8	1
1439	2023-06-18 11:20:49.201248+00	3627	рикотта	1	new through import_export	8	1
1440	2023-06-18 11:20:49.201488+00	3628	рикотта твердая	1	new through import_export	8	1
1441	2023-06-18 11:20:49.201719+00	3629	рис	1	new through import_export	8	1
1442	2023-06-18 11:20:49.201945+00	3630	рис арборио	1	new through import_export	8	1
1443	2023-06-18 11:20:49.202201+00	3631	рис басмати	1	new through import_export	8	1
1444	2023-06-18 11:20:49.202459+00	3632	рис бурый	1	new through import_export	8	1
1445	2023-06-18 11:20:49.202679+00	3633	рис бурый и дикий смесь	1	new through import_export	8	1
1446	2023-06-18 11:20:49.202905+00	3634	рис вареный	1	new through import_export	8	1
1447	2023-06-18 11:20:49.20316+00	3635	рис виола	1	new through import_export	8	1
1448	2023-06-18 11:20:49.203411+00	3636	рис девзира	1	new through import_export	8	1
1449	2023-06-18 11:20:49.203643+00	3637	рис дикий	1	new through import_export	8	1
1450	2023-06-18 11:20:49.203865+00	3638	рис дикий и золотистый смесь	1	new through import_export	8	1
1451	2023-06-18 11:20:49.2041+00	3639	рис длиннозерный	1	new through import_export	8	1
1452	2023-06-18 11:20:49.204329+00	3640	рис длиннозерный золотистый	1	new through import_export	8	1
1453	2023-06-18 11:20:49.204551+00	3641	рис для плова	1	new through import_export	8	1
1454	2023-06-18 11:20:49.204886+00	3642	рис для пудинга	1	new through import_export	8	1
1455	2023-06-18 11:20:49.205136+00	3643	рис для ризотто	1	new through import_export	8	1
1456	2023-06-18 11:20:49.205412+00	3644	рис для суши	1	new through import_export	8	1
1457	2023-06-18 11:20:49.20565+00	3645	рис жасминовый	1	new through import_export	8	1
1458	2023-06-18 11:20:49.205873+00	3646	рис золотистый	1	new through import_export	8	1
1459	2023-06-18 11:20:49.206096+00	3647	рис индика	1	new through import_export	8	1
1460	2023-06-18 11:20:49.20632+00	3648	рис италика	1	new through import_export	8	1
1461	2023-06-18 11:20:49.206566+00	3649	рис карнароли	1	new through import_export	8	1
1462	2023-06-18 11:20:49.206808+00	3650	рис красный	1	new through import_export	8	1
1463	2023-06-18 11:20:49.207027+00	3651	рис круглозерный	1	new through import_export	8	1
1464	2023-06-18 11:20:49.207267+00	3652	рис кубанский	1	new through import_export	8	1
1465	2023-06-18 11:20:49.207564+00	3653	рисовая бумага	1	new through import_export	8	1
1466	2023-06-18 11:20:49.20782+00	3654	рисовая лапша	1	new through import_export	8	1
1467	2023-06-18 11:20:49.208047+00	3655	рисовая мука	1	new through import_export	8	1
1468	2023-06-18 11:20:49.208269+00	3656	рисовое вино	1	new through import_export	8	1
1469	2023-06-18 11:20:49.208544+00	3657	рисовые хлопья	1	new through import_export	8	1
1470	2023-06-18 11:20:49.208813+00	3658	рисовые шарики воздушные	1	new through import_export	8	1
1471	2023-06-18 11:20:49.209058+00	3659	рисовый крахмал	1	new through import_export	8	1
1472	2023-06-18 11:20:49.209334+00	3660	рисовый уксус	1	new through import_export	8	1
1473	2023-06-18 11:20:49.209567+00	3661	рис пропаренный	1	new through import_export	8	1
1474	2023-06-18 11:20:49.209823+00	3662	рис пропаренный и дикий смесь	1	new through import_export	8	1
1475	2023-06-18 11:20:49.210071+00	3663	рис японика	1	new through import_export	8	1
1476	2023-06-18 11:20:49.210301+00	3664	рожь	1	new through import_export	8	1
1477	2023-06-18 11:20:49.210537+00	3665	розмарин	1	new through import_export	8	1
1478	2023-06-18 11:20:49.210761+00	3666	розмарин сушеный	1	new through import_export	8	1
1479	2023-06-18 11:20:49.210988+00	3667	розовая вода	1	new through import_export	8	1
1480	2023-06-18 11:20:49.211204+00	3668	розовые бутоны сушеные	1	new through import_export	8	1
1481	2023-06-18 11:20:49.211436+00	3669	розовые лепестки	1	new through import_export	8	1
1482	2023-06-18 11:20:49.211686+00	3670	розы	1	new through import_export	8	1
1483	2023-06-18 11:20:49.211949+00	3671	рокфор	1	new through import_export	8	1
1484	2023-06-18 11:20:49.212207+00	3672	ром	1	new through import_export	8	1
1485	2023-06-18 11:20:49.212482+00	3673	ромашка сушеная	1	new through import_export	8	1
1486	2023-06-18 11:20:49.212759+00	3674	ромовый экстракт	1	new through import_export	8	1
1487	2023-06-18 11:20:49.213166+00	3675	ром темный	1	new through import_export	8	1
1488	2023-06-18 11:20:49.213425+00	3676	ростбиф	1	new through import_export	8	1
1489	2023-06-18 11:20:49.213662+00	3677	рукола	1	new through import_export	8	1
1490	2023-06-18 11:20:49.213891+00	3678	рулька	1	new through import_export	8	1
1491	2023-06-18 11:20:49.214114+00	3679	рыба	1	new through import_export	8	1
1492	2023-06-18 11:20:49.214373+00	3680	рыба белая	1	new through import_export	8	1
1493	2023-06-18 11:20:49.214655+00	3681	рыба белая филе	1	new through import_export	8	1
1494	2023-06-18 11:20:49.2149+00	3682	рыба консервированная	1	new through import_export	8	1
1495	2023-06-18 11:20:49.215124+00	3683	рыба копченая	1	new through import_export	8	1
1496	2023-06-18 11:20:49.215355+00	3684	рыба копченая филе	1	new through import_export	8	1
1497	2023-06-18 11:20:49.215581+00	3685	рыба красная	1	new through import_export	8	1
1498	2023-06-18 11:20:49.215815+00	3686	рыба красная соленая	1	new through import_export	8	1
1499	2023-06-18 11:20:49.216076+00	3687	рыба красная филе	1	new through import_export	8	1
1500	2023-06-18 11:20:49.216329+00	3688	рыба-меч	1	new through import_export	8	1
1501	2023-06-18 11:20:49.216561+00	3689	рыба морская	1	new through import_export	8	1
1502	2023-06-18 11:20:49.216789+00	3690	рыба солнечник филе	1	new through import_export	8	1
1503	2023-06-18 11:20:49.21702+00	3691	рыба-соль	1	new through import_export	8	1
1504	2023-06-18 11:20:49.217268+00	3692	рыбное филе	1	new through import_export	8	1
1505	2023-06-18 11:20:49.21751+00	3693	рыбные консервы	1	new through import_export	8	1
1506	2023-06-18 11:20:49.21776+00	3694	рыбные кости	1	new through import_export	8	1
1507	2023-06-18 11:20:49.218039+00	3695	рыбные обрезки, головы, плавники	1	new through import_export	8	1
1508	2023-06-18 11:20:49.218269+00	3696	рыбный бульон	1	new through import_export	8	1
1509	2023-06-18 11:20:49.218499+00	3697	рыбный соус	1	new through import_export	8	1
1510	2023-06-18 11:20:49.218717+00	3698	рыбный соус Nam Pla	1	new through import_export	8	1
1511	2023-06-18 11:20:49.218938+00	3699	рыбный соус тайский	1	new through import_export	8	1
1512	2023-06-18 11:20:49.219157+00	3700	рыбный фарш	1	new through import_export	8	1
1513	2023-06-18 11:20:49.219396+00	3701	рябина черноплодная	1	new through import_export	8	1
1514	2023-06-18 11:20:49.219684+00	3702	рябчик	1	new through import_export	8	1
1515	2023-06-18 11:20:49.219959+00	3703	ряженка	1	new through import_export	8	1
1516	2023-06-18 11:20:49.220226+00	3704	ряженка 4%	1	new through import_export	8	1
1517	2023-06-18 11:20:49.220478+00	3705	сайда	1	new through import_export	8	1
1518	2023-06-18 11:20:49.220736+00	3706	сайда филе	1	new through import_export	8	1
1519	2023-06-18 11:20:49.221191+00	3707	сайра	1	new through import_export	8	1
1520	2023-06-18 11:20:49.221437+00	3708	сайра консервированная	1	new through import_export	8	1
1521	2023-06-18 11:20:49.221662+00	3709	саке	1	new through import_export	8	1
1522	2023-06-18 11:20:49.221883+00	3710	салака	1	new through import_export	8	1
1523	2023-06-18 11:20:49.222102+00	3711	салат	1	new through import_export	8	1
1524	2023-06-18 11:20:49.222327+00	3712	салат айсберг	1	new through import_export	8	1
1525	2023-06-18 11:20:49.222589+00	3713	салат китайский	1	new through import_export	8	1
1526	2023-06-18 11:20:49.223014+00	3714	салат корн	1	new through import_export	8	1
1527	2023-06-18 11:20:49.223285+00	3715	салат кочанный	1	new through import_export	8	1
1528	2023-06-18 11:20:49.223521+00	3716	салат кучерявый	1	new through import_export	8	1
1529	2023-06-18 11:20:49.223747+00	3717	салат листовой	1	new through import_export	8	1
1530	2023-06-18 11:20:49.223972+00	3718	салатный микс	1	new through import_export	8	1
1531	2023-06-18 11:20:49.224201+00	3719	салат романо	1	new through import_export	8	1
1532	2023-06-18 11:20:49.224427+00	3720	салат фриссе	1	new through import_export	8	1
1533	2023-06-18 11:20:49.224677+00	3721	сало	1	new through import_export	8	1
1534	2023-06-18 11:20:49.224965+00	3722	сало копченое в перце	1	new through import_export	8	1
1535	2023-06-18 11:20:49.225245+00	3723	сало копченое с мясными прослойками	1	new through import_export	8	1
1536	2023-06-18 11:20:49.225509+00	3724	сало с мясными прослойками	1	new through import_export	8	1
1537	2023-06-18 11:20:49.22574+00	3725	сальник	1	new through import_export	8	1
1538	2023-06-18 11:20:49.225963+00	3726	сальса	1	new through import_export	8	1
1539	2023-06-18 11:20:49.226182+00	3727	сальса верде	1	new through import_export	8	1
1540	2023-06-18 11:20:49.226402+00	3728	салями	1	new through import_export	8	1
1541	2023-06-18 11:20:49.226682+00	3729	салями итальянская	1	new through import_export	8	1
1542	2023-06-18 11:20:49.226913+00	3730	сардельки	1	new through import_export	8	1
1543	2023-06-18 11:20:49.227138+00	3731	сардельки копченые	1	new through import_export	8	1
1544	2023-06-18 11:20:49.227359+00	3732	сардинки маленькие	1	new through import_export	8	1
1545	2023-06-18 11:20:49.227578+00	3733	сардины	1	new through import_export	8	1
1546	2023-06-18 11:20:49.227801+00	3734	сардины в масле	1	new through import_export	8	1
1547	2023-06-18 11:20:49.228026+00	3735	сахар	1	new through import_export	8	1
1548	2023-06-18 11:20:49.228256+00	3736	сахар ванильный	1	new through import_export	8	1
1549	2023-06-18 11:20:49.22852+00	3737	сахар демерара	1	new through import_export	8	1
1550	2023-06-18 11:20:49.228793+00	3738	сахар жемчужный	1	new through import_export	8	1
1551	2023-06-18 11:20:49.229057+00	3739	сахар коричневый	1	new through import_export	8	1
1552	2023-06-18 11:20:49.229415+00	3740	сахар коричневый крупнокристаллический	1	new through import_export	8	1
1553	2023-06-18 11:20:49.229645+00	3741	сахар мусковадо	1	new through import_export	8	1
1554	2023-06-18 11:20:49.229862+00	3742	сахарная пудра	1	new through import_export	8	1
1555	2023-06-18 11:20:49.230081+00	3743	сахарная пудра апельсиновая	1	new through import_export	8	1
1556	2023-06-18 11:20:49.230301+00	3744	сахарная пудра ванильная	1	new through import_export	8	1
1557	2023-06-18 11:20:49.230563+00	3745	сахарные жемчужинки	1	new through import_export	8	1
1558	2023-06-18 11:20:49.230798+00	3746	сахарные кондитерские украшения	1	new through import_export	8	1
1559	2023-06-18 11:20:49.231057+00	3747	сахарный песок	1	new through import_export	8	1
1560	2023-06-18 11:20:49.231314+00	3748	сахарный песок крупный	1	new through import_export	8	1
1561	2023-06-18 11:20:49.231551+00	3749	сахарный песок мелкий	1	new through import_export	8	1
1562	2023-06-18 11:20:49.231785+00	3750	сахарный сироп	1	new through import_export	8	1
1563	2023-06-18 11:20:49.232051+00	3751	сахар пальмовый	1	new through import_export	8	1
1564	2023-06-18 11:20:49.232319+00	3752	сахар-рафинад	1	new through import_export	8	1
1565	2023-06-18 11:20:49.232551+00	3753	сахар-рафинад с корицей	1	new through import_export	8	1
1566	2023-06-18 11:20:49.232785+00	3754	сахар тростниковый	1	new through import_export	8	1
1567	2023-06-18 11:20:49.233009+00	3755	сванская соль	1	new through import_export	8	1
1568	2023-06-18 11:20:49.233268+00	3756	свекла	1	new through import_export	8	1
1569	2023-06-18 11:20:49.233519+00	3757	свекла вареная	1	new through import_export	8	1
1570	2023-06-18 11:20:49.233743+00	3758	свекольная ботва	1	new through import_export	8	1
1571	2023-06-18 11:20:49.233971+00	3759	свекольные листья	1	new through import_export	8	1
1572	2023-06-18 11:20:49.234193+00	3760	свиная вырезка	1	new through import_export	8	1
1573	2023-06-18 11:20:49.234414+00	3761	свиная голова	1	new through import_export	8	1
1574	2023-06-18 11:20:49.234645+00	3762	свиная грудинка	1	new through import_export	8	1
1575	2023-06-18 11:20:49.234887+00	3763	свиная корейка	1	new through import_export	8	1
1576	2023-06-18 11:20:49.235126+00	3764	свиная корейка копченая	1	new through import_export	8	1
1577	2023-06-18 11:20:49.235354+00	3765	свиная корейка на кости	1	new through import_export	8	1
1578	2023-06-18 11:20:49.235609+00	3766	свиная лопатка варено-копченая	1	new through import_export	8	1
1579	2023-06-18 11:20:49.235895+00	3767	свиная мякоть	1	new through import_export	8	1
1580	2023-06-18 11:20:49.236148+00	3768	свиная пашина	1	new through import_export	8	1
1581	2023-06-18 11:20:49.236379+00	3769	свиная печень	1	new through import_export	8	1
1582	2023-06-18 11:20:49.236619+00	3770	свиная рулька	1	new through import_export	8	1
1583	2023-06-18 11:20:49.23685+00	3771	свиная рулька варено-копченая	1	new through import_export	8	1
1584	2023-06-18 11:20:49.237216+00	3772	свиная рулька копченая	1	new through import_export	8	1
1585	2023-06-18 11:20:49.23746+00	3773	свиная шейка	1	new through import_export	8	1
1586	2023-06-18 11:20:49.237701+00	3774	свинина	1	new through import_export	8	1
1587	2023-06-18 11:20:49.237923+00	3775	свинина вареная	1	new through import_export	8	1
1588	2023-06-18 11:20:49.238141+00	3776	свинина нежирная	1	new through import_export	8	1
1589	2023-06-18 11:20:49.23836+00	3777	свинина с жирком	1	new through import_export	8	1
1590	2023-06-18 11:20:49.23858+00	3778	свиное сердце	1	new through import_export	8	1
1591	2023-06-18 11:20:49.238807+00	3779	свиное филе	1	new through import_export	8	1
1592	2023-06-18 11:20:49.239031+00	3780	свиной подчеревок	1	new through import_export	8	1
1593	2023-06-18 11:20:49.239249+00	3781	свиной фарш	1	new through import_export	8	1
1594	2023-06-18 11:20:49.239484+00	3782	свиной язык	1	new through import_export	8	1
1595	2023-06-18 11:20:49.239711+00	3783	свиные котлеты на косточке	1	new through import_export	8	1
1596	2023-06-18 11:20:49.239928+00	3784	свиные легкие	1	new through import_export	8	1
1597	2023-06-18 11:20:49.240145+00	3785	свиные ножки	1	new through import_export	8	1
1598	2023-06-18 11:20:49.240365+00	3786	свиные отбивные	1	new through import_export	8	1
1599	2023-06-18 11:20:49.240591+00	3787	свиные отбивные на косточке	1	new through import_export	8	1
1600	2023-06-18 11:20:49.240856+00	3788	свиные ребра	1	new through import_export	8	1
1601	2023-06-18 11:20:49.241098+00	3789	свиные уши	1	new through import_export	8	1
1602	2023-06-18 11:20:49.241334+00	3790	свиные щечки	1	new through import_export	8	1
1603	2023-06-18 11:20:49.241611+00	3791	свити	1	new through import_export	8	1
1604	2023-06-18 11:20:49.241885+00	3792	сельдерей	1	new through import_export	8	1
1605	2023-06-18 11:20:49.242125+00	3793	сельдерей зелень	1	new through import_export	8	1
1606	2023-06-18 11:20:49.242383+00	3794	сельдерей корень	1	new through import_export	8	1
1607	2023-06-18 11:20:49.242646+00	3795	сельдерей корень сушеный	1	new through import_export	8	1
1608	2023-06-18 11:20:49.242924+00	3796	сельдерейная соль	1	new through import_export	8	1
1609	2023-06-18 11:20:49.243164+00	3797	сельдерей семена	1	new through import_export	8	1
1610	2023-06-18 11:20:49.243386+00	3798	сельдерей стебли	1	new through import_export	8	1
1611	2023-06-18 11:20:49.243617+00	3799	сельдь	1	new through import_export	8	1
1612	2023-06-18 11:20:49.243839+00	3800	сельдь слабосоленая	1	new through import_export	8	1
1613	2023-06-18 11:20:49.244061+00	3801	сельдь соленая	1	new through import_export	8	1
1614	2023-06-18 11:20:49.244286+00	3802	сельдь филе	1	new through import_export	8	1
1615	2023-06-18 11:20:49.244541+00	3803	семга	1	new through import_export	8	1
1616	2023-06-18 11:20:49.244761+00	3804	семга копченая	1	new through import_export	8	1
1617	2023-06-18 11:20:49.245137+00	3805	семга свежая	1	new through import_export	8	1
1618	2023-06-18 11:20:49.245377+00	3806	семга соленая	1	new through import_export	8	1
1619	2023-06-18 11:20:49.245603+00	3807	семга филе на коже	1	new through import_export	8	1
1620	2023-06-18 11:20:49.245822+00	3808	семечки	1	new through import_export	8	1
1621	2023-06-18 11:20:49.246052+00	3809	семечки смесь	1	new through import_export	8	1
1622	2023-06-18 11:20:49.246272+00	3810	семолина	1	new through import_export	8	1
1623	2023-06-18 11:20:49.2465+00	3811	сервелат варено-копченый	1	new through import_export	8	1
1624	2023-06-18 11:20:49.246718+00	3812	сибас	1	new through import_export	8	1
1625	2023-06-18 11:20:49.246938+00	3813	сидр	1	new through import_export	8	1
1626	2023-06-18 11:20:49.247159+00	3814	сироп	1	new through import_export	8	1
1627	2023-06-18 11:20:49.247404+00	3815	сироп от консервированных груш	1	new through import_export	8	1
1628	2023-06-18 11:20:49.24769+00	3816	сироп от консервированных персиков	1	new through import_export	8	1
1629	2023-06-18 11:20:49.247938+00	3817	сироп топинамбура	1	new through import_export	8	1
1630	2023-06-18 11:20:49.248166+00	3818	скумбрия	1	new through import_export	8	1
1631	2023-06-18 11:20:49.248409+00	3819	скумбрия свежая	1	new through import_export	8	1
1632	2023-06-18 11:20:49.248686+00	3820	скумбрия филе	1	new through import_export	8	1
1633	2023-06-18 11:20:49.248966+00	3821	скумбрия холодного копчения	1	new through import_export	8	1
1634	2023-06-18 11:20:49.249209+00	3822	сливки	1	new through import_export	8	1
1635	2023-06-18 11:20:49.249447+00	3823	сливки 10-20%	1	new through import_export	8	1
1636	2023-06-18 11:20:49.249674+00	3824	сливки 15%	1	new through import_export	8	1
1637	2023-06-18 11:20:49.249909+00	3825	сливки 20%	1	new through import_export	8	1
1638	2023-06-18 11:20:49.250128+00	3826	сливки 33-35%	1	new through import_export	8	1
1639	2023-06-18 11:20:49.250354+00	3827	сливки жирные	1	new through import_export	8	1
1640	2023-06-18 11:20:49.250575+00	3828	сливки кондитерские	1	new through import_export	8	1
1641	2023-06-18 11:20:49.250793+00	3829	сливовая паста	1	new through import_export	8	1
1642	2023-06-18 11:20:49.25102+00	3830	сливовое варенье	1	new through import_export	8	1
1643	2023-06-18 11:20:49.251239+00	3831	сливовое вино	1	new through import_export	8	1
1644	2023-06-18 11:20:49.251462+00	3832	сливовый джем	1	new through import_export	8	1
1645	2023-06-18 11:20:49.25168+00	3833	сливовый ликер	1	new through import_export	8	1
1646	2023-06-18 11:20:49.251897+00	3834	сливовый соус	1	new through import_export	8	1
1647	2023-06-18 11:20:49.252116+00	3835	сливочное масло	1	new through import_export	8	1
1648	2023-06-18 11:20:49.252361+00	3836	сливы	1	new through import_export	8	1
1649	2023-06-18 11:20:49.252615+00	3837	сливы замороженные	1	new through import_export	8	1
1650	2023-06-18 11:20:49.252981+00	3838	смалец	1	new through import_export	8	1
1651	2023-06-18 11:20:49.253246+00	3839	смесь для кекса	1	new through import_export	8	1
1652	2023-06-18 11:20:49.25349+00	3840	смесь для оладий	1	new through import_export	8	1
1653	2023-06-18 11:20:49.25371+00	3841	смесь для хлеба 8 злаков	1	new through import_export	8	1
1654	2023-06-18 11:20:49.253928+00	3842	сметана	1	new through import_export	8	1
1655	2023-06-18 11:20:49.254146+00	3843	сметана 10%	1	new through import_export	8	1
1656	2023-06-18 11:20:49.254379+00	3844	сметана 15%	1	new through import_export	8	1
1657	2023-06-18 11:20:49.254603+00	3845	сметана 18%	1	new through import_export	8	1
1658	2023-06-18 11:20:49.254822+00	3846	сметана 20%	1	new through import_export	8	1
1659	2023-06-18 11:20:49.255055+00	3847	сметана 25%	1	new through import_export	8	1
1660	2023-06-18 11:20:49.25529+00	3848	сметана 30%	1	new through import_export	8	1
1661	2023-06-18 11:20:49.255557+00	3849	сметана 35%	1	new through import_export	8	1
1662	2023-06-18 11:20:49.255798+00	3850	сметана жирная	1	new through import_export	8	1
1663	2023-06-18 11:20:49.256031+00	3851	сметана нежирная	1	new through import_export	8	1
1664	2023-06-18 11:20:49.256248+00	3852	сметана некислая	1	new through import_export	8	1
1665	2023-06-18 11:20:49.25648+00	3853	смородина сушеная	1	new through import_export	8	1
1666	2023-06-18 11:20:49.2567+00	3854	смородиновые листья	1	new through import_export	8	1
1667	2023-06-18 11:20:49.256924+00	3855	сморчки сухие	1	new through import_export	8	1
1668	2023-06-18 11:20:49.257145+00	3856	снежок	1	new through import_export	8	1
1669	2023-06-18 11:20:49.257403+00	3857	сныть	1	new through import_export	8	1
1670	2023-06-18 11:20:49.257646+00	3858	сода	1	new through import_export	8	1
1671	2023-06-18 11:20:49.257875+00	3859	соевая мука	1	new through import_export	8	1
1672	2023-06-18 11:20:49.2581+00	3860	соевое масло	1	new through import_export	8	1
1673	2023-06-18 11:20:49.258324+00	3861	соевое молоко	1	new through import_export	8	1
1674	2023-06-18 11:20:49.258545+00	3862	соевые ростки	1	new through import_export	8	1
1675	2023-06-18 11:20:49.258783+00	3863	соевый соус	1	new through import_export	8	1
1676	2023-06-18 11:20:49.259+00	3864	сок	1	new through import_export	8	1
1677	2023-06-18 11:20:49.25923+00	3865	сок из красных апельсинов	1	new through import_export	8	1
1678	2023-06-18 11:20:49.259496+00	3866	сок мультивитаминный	1	new through import_export	8	1
1679	2023-06-18 11:20:49.259725+00	3867	сок юзу	1	new through import_export	8	1
1680	2023-06-18 11:20:49.259951+00	3868	солод	1	new through import_export	8	1
1681	2023-06-18 11:20:49.260198+00	3869	солод жидкий	1	new through import_export	8	1
1682	2023-06-18 11:20:49.260442+00	3870	солодовый экстракт	1	new through import_export	8	1
1683	2023-06-18 11:20:49.260858+00	3871	солод темный	1	new through import_export	8	1
1684	2023-06-18 11:20:49.261086+00	3872	соломка	1	new through import_export	8	1
1685	2023-06-18 11:20:49.261305+00	3873	соль	1	new through import_export	8	1
1686	2023-06-18 11:20:49.261561+00	3874	соль гималайская	1	new through import_export	8	1
1687	2023-06-18 11:20:49.261807+00	3875	соль крупного помола	1	new through import_export	8	1
1688	2023-06-18 11:20:49.262027+00	3876	соль морская	1	new through import_export	8	1
1689	2023-06-18 11:20:49.262245+00	3877	сом филе	1	new through import_export	8	1
1690	2023-06-18 11:20:49.262479+00	3878	сосиски	1	new through import_export	8	1
1691	2023-06-18 11:20:49.2627+00	3879	сосиски из куриного фарша	1	new through import_export	8	1
1692	2023-06-18 11:20:49.262943+00	3880	сосиски копченые	1	new through import_export	8	1
1693	2023-06-18 11:20:49.263188+00	3881	соус	1	new through import_export	8	1
1694	2023-06-18 11:20:49.26341+00	3882	соус black bean	1	new through import_export	8	1
1695	2023-06-18 11:20:49.263639+00	3883	соус sambal oelek	1	new through import_export	8	1
1696	2023-06-18 11:20:49.263859+00	3884	соус барбекю	1	new through import_export	8	1
1697	2023-06-18 11:20:49.264108+00	3885	соус краснодарский	1	new through import_export	8	1
1698	2023-06-18 11:20:49.264349+00	3886	соус красный острый	1	new through import_export	8	1
1699	2023-06-18 11:20:49.264576+00	3887	соус мирин	1	new through import_export	8	1
1700	2023-06-18 11:20:49.26483+00	3888	соус наршараб	1	new through import_export	8	1
1701	2023-06-18 11:20:49.265066+00	3889	соус острый	1	new through import_export	8	1
1702	2023-06-18 11:20:49.265287+00	3890	соус песто	1	new through import_export	8	1
1703	2023-06-18 11:20:49.265531+00	3891	соус сацебели	1	new through import_export	8	1
1704	2023-06-18 11:20:49.265755+00	3892	соус табаско	1	new through import_export	8	1
1705	2023-06-18 11:20:49.265978+00	3893	соус терияки	1	new through import_export	8	1
1706	2023-06-18 11:20:49.266196+00	3894	соус ткемали	1	new through import_export	8	1
1707	2023-06-18 11:20:49.266415+00	3895	соус ткемали благородный	1	new through import_export	8	1
1708	2023-06-18 11:20:49.266637+00	3896	соус ткемали ранний	1	new through import_export	8	1
1709	2023-06-18 11:20:49.266851+00	3897	соус устричный	1	new through import_export	8	1
1710	2023-06-18 11:20:49.267078+00	3898	соус чили	1	new through import_export	8	1
1711	2023-06-18 11:20:49.267298+00	3899	соус чили сладкий	1	new through import_export	8	1
1712	2023-06-18 11:20:49.267529+00	3900	соус экзотический	1	new through import_export	8	1
1713	2023-06-18 11:20:49.267757+00	3901	соя	1	new through import_export	8	1
1714	2023-06-18 11:20:49.267986+00	3902	спагетти	1	new through import_export	8	1
1715	2023-06-18 11:20:49.268209+00	3903	спагетти № 3	1	new through import_export	8	1
1716	2023-06-18 11:20:49.268585+00	3904	спагетти № 5	1	new through import_export	8	1
1717	2023-06-18 11:20:49.268831+00	3905	спагетти лунги	1	new through import_export	8	1
1718	2023-06-18 11:20:49.269052+00	3906	спаржа	1	new through import_export	8	1
1719	2023-06-18 11:20:49.269279+00	3907	спаржа белая	1	new through import_export	8	1
1720	2023-06-18 11:20:49.269506+00	3908	спаржа зеленая	1	new through import_export	8	1
1721	2023-06-18 11:20:49.269724+00	3909	спаржа молодая	1	new through import_export	8	1
1722	2023-06-18 11:20:49.269944+00	3910	спек	1	new through import_export	8	1
1723	2023-06-18 11:20:49.270161+00	3911	спельта	1	new through import_export	8	1
1724	2023-06-18 11:20:49.27038+00	3912	спельтовая (полбяная) мука	1	new through import_export	8	1
1725	2023-06-18 11:20:49.270629+00	3913	специи	1	new through import_export	8	1
1726	2023-06-18 11:20:49.270852+00	3914	спирт	1	new through import_export	8	1
1727	2023-06-18 11:20:49.271086+00	3915	спирулина порошок	1	new through import_export	8	1
1728	2023-06-18 11:20:49.271338+00	3916	спред	1	new through import_export	8	1
1729	2023-06-18 11:20:49.271598+00	3917	ставрида	1	new through import_export	8	1
1730	2023-06-18 11:20:49.27183+00	3918	стейк семги	1	new through import_export	8	1
1731	2023-06-18 11:20:49.272061+00	3919	стейк семги	1	new through import_export	8	1
1732	2023-06-18 11:20:49.272279+00	3920	стеклянная лапша	1	new through import_export	8	1
1733	2023-06-18 11:20:49.272537+00	3921	страчателла	1	new through import_export	8	1
1734	2023-06-18 11:20:49.272778+00	3922	судак	1	new through import_export	8	1
1735	2023-06-18 11:20:49.273001+00	3923	судак филе	1	new through import_export	8	1
1736	2023-06-18 11:20:49.273235+00	3924	судак филе на коже	1	new through import_export	8	1
1737	2023-06-18 11:20:49.273457+00	3925	сулугуни	1	new through import_export	8	1
1738	2023-06-18 11:20:49.273678+00	3926	сулугуни копченый	1	new through import_export	8	1
1739	2023-06-18 11:20:49.273902+00	3927	сумах	1	new through import_export	8	1
1740	2023-06-18 11:20:49.274133+00	3928	суповой набор	1	new through import_export	8	1
1741	2023-06-18 11:20:49.274358+00	3929	сухари	1	new through import_export	8	1
1742	2023-06-18 11:20:49.274582+00	3930	сухари белые	1	new through import_export	8	1
1743	2023-06-18 11:20:49.274832+00	3931	сухари молотые	1	new through import_export	8	1
1744	2023-06-18 11:20:49.275107+00	3932	сухари панировочные	1	new through import_export	8	1
1745	2023-06-18 11:20:49.275363+00	3933	сухари ржаные	1	new through import_export	8	1
1746	2023-06-18 11:20:49.275609+00	3934	сухарная крошка	1	new through import_export	8	1
1747	2023-06-18 11:20:49.275855+00	3935	сухофрукты	1	new through import_export	8	1
1748	2023-06-18 11:20:49.276074+00	3936	сухофрукты тропические	1	new through import_export	8	1
1749	2023-06-18 11:20:49.27646+00	3937	сушки	1	new through import_export	8	1
1750	2023-06-18 11:20:49.276704+00	3938	сыворотка	1	new through import_export	8	1
1751	2023-06-18 11:20:49.276922+00	3939	сыр	1	new through import_export	8	1
1752	2023-06-18 11:20:49.277141+00	3940	сыр tete de moine	1	new through import_export	8	1
1753	2023-06-18 11:20:49.277382+00	3941	сыр Австрия блю	1	new through import_export	8	1
1754	2023-06-18 11:20:49.277664+00	3942	сыр адыгейский	1	new through import_export	8	1
1755	2023-06-18 11:20:49.277904+00	3943	сыр бри	1	new through import_export	8	1
1756	2023-06-18 11:20:49.278143+00	3944	сыр буко	1	new through import_export	8	1
1757	2023-06-18 11:20:49.278386+00	3945	сыр гауда	1	new through import_export	8	1
1758	2023-06-18 11:20:49.278663+00	3946	сыр гойя	1	new through import_export	8	1
1759	2023-06-18 11:20:49.278902+00	3947	сыр голландский	1	new through import_export	8	1
1760	2023-06-18 11:20:49.279132+00	3948	сыр голубой	1	new through import_export	8	1
1761	2023-06-18 11:20:49.279364+00	3949	сыр гравьера	1	new through import_export	8	1
1762	2023-06-18 11:20:49.279621+00	3950	сыр джугас	1	new through import_export	8	1
1763	2023-06-18 11:20:49.27989+00	3951	сыр домашний	1	new through import_export	8	1
1764	2023-06-18 11:20:49.280134+00	3952	сыр дорблю	1	new through import_export	8	1
1765	2023-06-18 11:20:49.280357+00	3953	сыр имеретинский	1	new through import_export	8	1
1766	2023-06-18 11:20:49.280618+00	3954	сыр кефалотири	1	new through import_export	8	1
1767	2023-06-18 11:20:49.280867+00	3955	сырки творожные	1	new through import_export	8	1
1768	2023-06-18 11:20:49.281113+00	3956	сыр козий мягкий	1	new through import_export	8	1
1769	2023-06-18 11:20:49.281362+00	3957	сыр козий твердый	1	new through import_export	8	1
1770	2023-06-18 11:20:49.281587+00	3958	сыр колбасный	1	new through import_export	8	1
1771	2023-06-18 11:20:49.281812+00	3959	сыр копченый	1	new through import_export	8	1
1772	2023-06-18 11:20:49.282041+00	3960	сыр коттедж	1	new through import_export	8	1
1773	2023-06-18 11:20:49.282265+00	3961	сыр Маскарпоне	1	new through import_export	8	1
1774	2023-06-18 11:20:49.282508+00	3962	сыр мраморный	1	new through import_export	8	1
1775	2023-06-18 11:20:49.282732+00	3963	сыр мягкий	1	new through import_export	8	1
1776	2023-06-18 11:20:49.28296+00	3964	сыр овечий	1	new through import_export	8	1
1777	2023-06-18 11:20:49.283186+00	3965	сыр панир	1	new through import_export	8	1
1778	2023-06-18 11:20:49.283412+00	3966	сыр пеше миньон	1	new through import_export	8	1
1779	2023-06-18 11:20:49.283638+00	3967	сыр плавленый	1	new through import_export	8	1
1780	2023-06-18 11:20:49.283866+00	3968	сыр плавленый шоколадный	1	new through import_export	8	1
1781	2023-06-18 11:20:49.284094+00	3969	сыр пластинками	1	new through import_export	8	1
1782	2023-06-18 11:20:49.284333+00	3970	сыр полутвердый	1	new through import_export	8	1
1783	2023-06-18 11:20:49.284715+00	3971	сыр провола	1	new through import_export	8	1
1784	2023-06-18 11:20:49.284954+00	3972	сыр российский	1	new through import_export	8	1
1785	2023-06-18 11:20:49.285181+00	3973	сыр скаморца	1	new through import_export	8	1
1786	2023-06-18 11:20:49.285405+00	3974	сыр скаморца копченый	1	new through import_export	8	1
1787	2023-06-18 11:20:49.28564+00	3975	сыр сливочный	1	new through import_export	8	1
1788	2023-06-18 11:20:49.285865+00	3976	сыр с плесенью	1	new through import_export	8	1
1789	2023-06-18 11:20:49.286092+00	3977	сыр с плесенью мягкий	1	new through import_export	8	1
1790	2023-06-18 11:20:49.286319+00	3978	сыр твердый	1	new through import_export	8	1
1791	2023-06-18 11:20:49.286549+00	3979	сыр филадельфия	1	new through import_export	8	1
1792	2023-06-18 11:20:49.286775+00	3980	сыр фонтина	1	new through import_export	8	1
1793	2023-06-18 11:20:49.287004+00	3981	сыр хаварти	1	new through import_export	8	1
1794	2023-06-18 11:20:49.287225+00	3982	сыр швейцарский	1	new through import_export	8	1
1795	2023-06-18 11:20:49.287456+00	3983	сычужный фермент	1	new through import_export	8	1
1796	2023-06-18 11:20:49.28771+00	3984	таледжо	1	new through import_export	8	1
1797	2023-06-18 11:20:49.287946+00	3985	тальолини	1	new through import_export	8	1
1798	2023-06-18 11:20:49.288168+00	3986	тальятелле	1	new through import_export	8	1
1799	2023-06-18 11:20:49.28844+00	3987	тальятелле-гнезда	1	new through import_export	8	1
1800	2023-06-18 11:20:49.288678+00	3988	тамаринд	1	new through import_export	8	1
1801	2023-06-18 11:20:49.288898+00	3989	тамариндовая паста	1	new through import_export	8	1
1802	2023-06-18 11:20:49.28912+00	3990	тапиока	1	new through import_export	8	1
1803	2023-06-18 11:20:49.28935+00	3991	тарталетки	1	new through import_export	8	1
1804	2023-06-18 11:20:49.289574+00	3992	тартар	1	new through import_export	8	1
1805	2023-06-18 11:20:49.289793+00	3993	тархун	1	new through import_export	8	1
1806	2023-06-18 11:20:49.29001+00	3994	творог	1	new through import_export	8	1
1807	2023-06-18 11:20:49.290239+00	3995	творог 18%	1	new through import_export	8	1
1808	2023-06-18 11:20:49.290464+00	3996	творог 2%	1	new through import_export	8	1
1809	2023-06-18 11:20:49.290709+00	3997	творог 5%	1	new through import_export	8	1
1810	2023-06-18 11:20:49.290954+00	3998	творог 9%	1	new through import_export	8	1
1811	2023-06-18 11:20:49.291175+00	3999	творог жирный	1	new through import_export	8	1
1812	2023-06-18 11:20:49.291396+00	4000	творог зерненый	1	new through import_export	8	1
1813	2023-06-18 11:20:49.291641+00	4001	творог обезжиренный	1	new through import_export	8	1
1814	2023-06-18 11:20:49.291915+00	4002	творожная масса	1	new through import_export	8	1
1815	2023-06-18 11:20:49.292146+00	4003	творожная паста	1	new through import_export	8	1
1816	2023-06-18 11:20:49.292504+00	4004	творожный сыр	1	new through import_export	8	1
1817	2023-06-18 11:20:49.29274+00	4005	творожный сыр соленый	1	new through import_export	8	1
1818	2023-06-18 11:20:49.29296+00	4006	творожок клубничный	1	new through import_export	8	1
1819	2023-06-18 11:20:49.293182+00	4007	текила	1	new through import_export	8	1
1820	2023-06-18 11:20:49.293401+00	4008	телятина	1	new through import_export	8	1
1821	2023-06-18 11:20:49.293636+00	4009	телятина вареная	1	new through import_export	8	1
1822	2023-06-18 11:20:49.293856+00	4010	телячий фарш	1	new through import_export	8	1
1823	2023-06-18 11:20:49.294075+00	4011	телячьи отбивные на косточке	1	new through import_export	8	1
1824	2023-06-18 11:20:49.294317+00	4012	телячьи шницели	1	new through import_export	8	1
1825	2023-06-18 11:20:49.294555+00	4013	телячьи эскалопы	1	new through import_export	8	1
1826	2023-06-18 11:20:49.294784+00	4014	телячья вырезка	1	new through import_export	8	1
1827	2023-06-18 11:20:49.295032+00	4015	телячья печень	1	new through import_export	8	1
1828	2023-06-18 11:20:49.29528+00	4016	телячья щека	1	new through import_export	8	1
1829	2023-06-18 11:20:49.295511+00	4017	тесто бездрожжевое	1	new through import_export	8	1
1830	2023-06-18 11:20:49.295738+00	4018	тесто готовое	1	new through import_export	8	1
1831	2023-06-18 11:20:49.295961+00	4019	тесто для вонтонов	1	new through import_export	8	1
1832	2023-06-18 11:20:49.296208+00	4020	тесто для пиццы	1	new through import_export	8	1
1833	2023-06-18 11:20:49.296456+00	4021	тесто дрожжевое	1	new through import_export	8	1
1834	2023-06-18 11:20:49.296684+00	4022	тесто катаифи	1	new through import_export	8	1
1835	2023-06-18 11:20:49.296915+00	4023	тесто макаронное	1	new through import_export	8	1
1836	2023-06-18 11:20:49.297143+00	4024	тесто макаронное для лазаньи	1	new through import_export	8	1
1837	2023-06-18 11:20:49.297375+00	4025	тесто пельменное	1	new through import_export	8	1
1838	2023-06-18 11:20:49.297604+00	4026	тесто песочное	1	new through import_export	8	1
1839	2023-06-18 11:20:49.297836+00	4027	тесто пресное	1	new through import_export	8	1
1840	2023-06-18 11:20:49.298065+00	4028	тесто пряничное	1	new through import_export	8	1
1841	2023-06-18 11:20:49.298288+00	4029	тесто слоеное	1	new through import_export	8	1
1842	2023-06-18 11:20:49.298539+00	4030	тесто слоеное бездрожжевое	1	new through import_export	8	1
1843	2023-06-18 11:20:49.29877+00	4031	тесто слоеное дрожжевое	1	new through import_export	8	1
1844	2023-06-18 11:20:49.299019+00	4032	тесто фило	1	new through import_export	8	1
1845	2023-06-18 11:20:49.299276+00	4033	тилапия	1	new through import_export	8	1
1846	2023-06-18 11:20:49.29953+00	4034	тилапия филе	1	new through import_export	8	1
1847	2023-06-18 11:20:49.299756+00	4035	тильзитер	1	new through import_export	8	1
1848	2023-06-18 11:20:49.299974+00	4036	тимьян	1	new through import_export	8	1
1849	2023-06-18 11:20:49.300358+00	4037	тимьян лимонный	1	new through import_export	8	1
1850	2023-06-18 11:20:49.300598+00	4038	тимьян свежий	1	new through import_export	8	1
1851	2023-06-18 11:20:49.300822+00	4039	тимьян сушеный	1	new through import_export	8	1
1852	2023-06-18 11:20:49.301052+00	4040	ткемали	1	new through import_export	8	1
1853	2023-06-18 11:20:49.301316+00	4041	тмин	1	new through import_export	8	1
1854	2023-06-18 11:20:49.301569+00	4042	тмин молотый	1	new through import_export	8	1
1855	2023-06-18 11:20:49.301801+00	4043	томатная паста	1	new through import_export	8	1
1856	2023-06-18 11:20:49.302027+00	4044	томатное пюре	1	new through import_export	8	1
1857	2023-06-18 11:20:49.30225+00	4045	томатный концентрат	1	new through import_export	8	1
1858	2023-06-18 11:20:49.302508+00	4046	томатный порошок	1	new through import_export	8	1
1859	2023-06-18 11:20:49.302798+00	4047	томатный сок	1	new through import_export	8	1
1860	2023-06-18 11:20:49.303041+00	4048	томатный соус	1	new through import_export	8	1
1861	2023-06-18 11:20:49.303276+00	4049	томатный соус итальянский	1	new through import_export	8	1
1862	2023-06-18 11:20:49.303512+00	4050	томатный соус острый	1	new through import_export	8	1
1863	2023-06-18 11:20:49.303736+00	4051	томатный соус с базиликом	1	new through import_export	8	1
1864	2023-06-18 11:20:49.303959+00	4052	тоник	1	new through import_export	8	1
1865	2023-06-18 11:20:49.304218+00	4053	топинамбур	1	new through import_export	8	1
1866	2023-06-18 11:20:49.304457+00	4054	топленое масло	1	new through import_export	8	1
1867	2023-06-18 11:20:49.304676+00	4055	тортильи	1	new through import_export	8	1
1868	2023-06-18 11:20:49.304893+00	4056	тортильони	1	new through import_export	8	1
1869	2023-06-18 11:20:49.305115+00	4057	тофу	1	new through import_export	8	1
1870	2023-06-18 11:20:49.305338+00	4058	травы ароматные	1	new through import_export	8	1
1871	2023-06-18 11:20:49.305577+00	4059	травы пряные с перцем	1	new through import_export	8	1
1872	2023-06-18 11:20:49.305831+00	4060	травы сухие	1	new through import_export	8	1
1873	2023-06-18 11:20:49.306148+00	4061	треска	1	new through import_export	8	1
1874	2023-06-18 11:20:49.306414+00	4062	треска печень	1	new through import_export	8	1
1875	2023-06-18 11:20:49.306644+00	4063	треска филе	1	new through import_export	8	1
1876	2023-06-18 11:20:49.306866+00	4064	трюфель	1	new through import_export	8	1
1877	2023-06-18 11:20:49.307084+00	4065	трюфельная крошка	1	new through import_export	8	1
1878	2023-06-18 11:20:49.307347+00	4066	трюфельное масло	1	new through import_export	8	1
1879	2023-06-18 11:20:49.307591+00	4067	трюфель черный	1	new through import_export	8	1
1881	2023-06-18 11:20:49.308284+00	4069	тунец консервированный	1	new through import_export	8	1
1882	2023-06-18 11:20:49.308536+00	4070	тунец филе	1	new through import_export	8	1
1883	2023-06-18 11:20:49.308766+00	4071	тушенка	1	new through import_export	8	1
1884	2023-06-18 11:20:49.308999+00	4072	тыква	1	new through import_export	8	1
1885	2023-06-18 11:20:49.309227+00	4073	тыквенное масло	1	new through import_export	8	1
1886	2023-06-18 11:20:49.309511+00	4074	тыквенное пюре	1	new through import_export	8	1
1887	2023-06-18 11:20:49.309759+00	4075	тыквенные семечки	1	new through import_export	8	1
1888	2023-06-18 11:20:49.309982+00	4076	тюлька свежая	1	new through import_export	8	1
1889	2023-06-18 11:20:49.310205+00	4077	угорь	1	new through import_export	8	1
1890	2023-06-18 11:20:49.310435+00	4078	угорь копченый	1	new through import_export	8	1
1891	2023-06-18 11:20:49.310651+00	4079	угурт	1	new through import_export	8	1
1892	2023-06-18 11:20:49.310872+00	4080	укроп	1	new through import_export	8	1
1893	2023-06-18 11:20:49.311093+00	4081	укропное семя	1	new through import_export	8	1
1894	2023-06-18 11:20:49.311355+00	4082	укроп свежий	1	new through import_export	8	1
1895	2023-06-18 11:20:49.311631+00	4083	укроп сушеный	1	new through import_export	8	1
1896	2023-06-18 11:20:49.311879+00	4084	уксус	1	new through import_export	8	1
1897	2023-06-18 11:20:49.312138+00	4085	уксус 9%	1	new through import_export	8	1
1898	2023-06-18 11:20:49.312391+00	4086	уксус из сидра	1	new through import_export	8	1
1899	2023-06-18 11:20:49.312625+00	4087	уксусная эссенция	1	new through import_export	8	1
1900	2023-06-18 11:20:49.312851+00	4088	уксус столовый	1	new through import_export	8	1
1901	2023-06-18 11:20:49.313077+00	4089	улитки	1	new through import_export	8	1
1902	2023-06-18 11:20:49.313319+00	4090	улитки виноградные	1	new through import_export	8	1
1903	2023-06-18 11:20:49.313538+00	4091	урюк	1	new through import_export	8	1
1904	2023-06-18 11:20:49.31376+00	4092	устрицы	1	new through import_export	8	1
1905	2023-06-18 11:20:49.313988+00	4093	утиная грудка	1	new through import_export	8	1
1906	2023-06-18 11:20:49.314211+00	4094	утиная печень	1	new through import_export	8	1
1907	2023-06-18 11:20:49.31444+00	4095	утиное филе	1	new through import_export	8	1
1908	2023-06-18 11:20:49.314661+00	4096	утиные бедрышки	1	new through import_export	8	1
1909	2023-06-18 11:20:49.314882+00	4097	утиные ножки	1	new through import_export	8	1
1910	2023-06-18 11:20:49.315156+00	4098	утка	1	new through import_export	8	1
1911	2023-06-18 11:20:49.315397+00	4099	утка печеная	1	new through import_export	8	1
1912	2023-06-18 11:20:49.315621+00	4100	утка тушка	1	new through import_export	8	1
1913	2023-06-18 11:20:49.315853+00	4101	уцхо-сунели	1	new through import_export	8	1
1914	2023-06-18 11:20:49.316184+00	4102	фазан	1	new through import_export	8	1
1915	2023-06-18 11:20:49.316425+00	4103	фарш (баранина и говядина)	1	new through import_export	8	1
1916	2023-06-18 11:20:49.316672+00	4104	фарш (свинина и курица)	1	new through import_export	8	1
1917	2023-06-18 11:20:49.316895+00	4105	фасоль	1	new through import_export	8	1
1918	2023-06-18 11:20:49.317116+00	4106	фасоль белая	1	new through import_export	8	1
1919	2023-06-18 11:20:49.317363+00	4107	фасоль белая консервированная	1	new through import_export	8	1
1920	2023-06-18 11:20:49.317599+00	4108	фасоль белая лима	1	new through import_export	8	1
1921	2023-06-18 11:20:49.317821+00	4109	фасоль зеленая стручковая	1	new through import_export	8	1
1922	2023-06-18 11:20:49.318053+00	4110	фасоль кенийская	1	new through import_export	8	1
1923	2023-06-18 11:20:49.318278+00	4111	фасоль кидни красная	1	new through import_export	8	1
1924	2023-06-18 11:20:49.318507+00	4112	фасоль консервированная	1	new through import_export	8	1
1925	2023-06-18 11:20:49.318732+00	4113	фасоль красная	1	new through import_export	8	1
1926	2023-06-18 11:20:49.318954+00	4114	фасоль красная вареная	1	new through import_export	8	1
1927	2023-06-18 11:20:49.319176+00	4115	фасоль красная консервированная	1	new through import_export	8	1
1928	2023-06-18 11:20:49.319396+00	4116	фасоль молодая замороженная	1	new through import_export	8	1
1929	2023-06-18 11:20:49.319635+00	4117	фасоль пинто	1	new through import_export	8	1
1930	2023-06-18 11:20:49.319915+00	4118	фасоль спаржевая вареная	1	new through import_export	8	1
1931	2023-06-18 11:20:49.320149+00	4119	фасоль стручковая	1	new through import_export	8	1
1932	2023-06-18 11:20:49.320383+00	4120	фасоль стручковая замороженная	1	new through import_export	8	1
1933	2023-06-18 11:20:49.320605+00	4121	фасоль стручковая консервированная	1	new through import_export	8	1
1934	2023-06-18 11:20:49.320828+00	4122	фасоль черный глаз	1	new through import_export	8	1
1935	2023-06-18 11:20:49.321056+00	4123	фейхоа	1	new through import_export	8	1
1936	2023-06-18 11:20:49.321276+00	4124	фенхель	1	new through import_export	8	1
1937	2023-06-18 11:20:49.321506+00	4125	фенхель семена	1	new through import_export	8	1
1938	2023-06-18 11:20:49.32176+00	4126	фенхель семена молотые	1	new through import_export	8	1
1939	2023-06-18 11:20:49.321981+00	4127	фестонате	1	new through import_export	8	1
1940	2023-06-18 11:20:49.322212+00	4128	фета	1	new through import_export	8	1
1941	2023-06-18 11:20:49.32246+00	4129	фетаки	1	new through import_export	8	1
1942	2023-06-18 11:20:49.322689+00	4130	фетакса	1	new through import_export	8	1
1943	2023-06-18 11:20:49.322907+00	4131	феттучине	1	new through import_export	8	1
1944	2023-06-18 11:20:49.323131+00	4132	фиалки засахаренные	1	new through import_export	8	1
1945	2023-06-18 11:20:49.323348+00	4133	фиалковый сироп	1	new through import_export	8	1
1946	2023-06-18 11:20:49.323715+00	4134	физалис	1	new through import_export	8	1
1947	2023-06-18 11:20:49.323953+00	4135	филе красного окуня	1	new through import_export	8	1
1948	2023-06-18 11:20:49.324195+00	4136	филе лосося	1	new through import_export	8	1
1949	2023-06-18 11:20:49.324424+00	4137	филе палтуса	1	new through import_export	8	1
1950	2023-06-18 11:20:49.324663+00	4138	финики	1	new through import_export	8	1
1951	2023-06-18 11:20:49.324885+00	4139	финики без косточек	1	new through import_export	8	1
1952	2023-06-18 11:20:49.32511+00	4140	финики иранские	1	new through import_export	8	1
1953	2023-06-18 11:20:49.325338+00	4141	финики иранские без косточек	1	new through import_export	8	1
1954	2023-06-18 11:20:49.32557+00	4142	фисташки	1	new through import_export	8	1
1955	2023-06-18 11:20:49.325788+00	4143	фисташки очищенные	1	new through import_export	8	1
1956	2023-06-18 11:20:49.326009+00	4144	фисташки очищенные несоленые	1	new through import_export	8	1
1957	2023-06-18 11:20:49.326224+00	4145	фисташки рубленые	1	new through import_export	8	1
1958	2023-06-18 11:20:49.326456+00	4146	фисташковая мука	1	new through import_export	8	1
1959	2023-06-18 11:20:49.326675+00	4147	фисташковая паста	1	new through import_export	8	1
1960	2023-06-18 11:20:49.326892+00	4148	фисташковое масло	1	new through import_export	8	1
1961	2023-06-18 11:20:49.327118+00	4149	фокачча	1	new through import_export	8	1
1962	2023-06-18 11:20:49.327351+00	4150	форель	1	new through import_export	8	1
1963	2023-06-18 11:20:49.327568+00	4151	форель вареная	1	new through import_export	8	1
1964	2023-06-18 11:20:49.327786+00	4152	форель горячего копчения	1	new through import_export	8	1
1965	2023-06-18 11:20:49.328005+00	4153	форель озерная свежая	1	new through import_export	8	1
1966	2023-06-18 11:20:49.328249+00	4154	форель слабосоленая	1	new through import_export	8	1
1967	2023-06-18 11:20:49.328494+00	4155	форель стейки	1	new through import_export	8	1
1968	2023-06-18 11:20:49.328719+00	4156	форель филе	1	new through import_export	8	1
1969	2023-06-18 11:20:49.32894+00	4157	форель холодного копчения	1	new through import_export	8	1
1970	2023-06-18 11:20:49.329168+00	4158	фрикадельки	1	new through import_export	8	1
1971	2023-06-18 11:20:49.329427+00	4159	фрукт дракона	1	new through import_export	8	1
1972	2023-06-18 11:20:49.329665+00	4160	фруктовый сироп	1	new through import_export	8	1
1973	2023-06-18 11:20:49.329891+00	4161	фруктовый сок	1	new through import_export	8	1
1974	2023-06-18 11:20:49.330115+00	4162	фруктовый сок без сахара	1	new through import_export	8	1
1975	2023-06-18 11:20:49.330339+00	4163	фруктоза	1	new through import_export	8	1
1976	2023-06-18 11:20:49.330564+00	4164	фрукты	1	new through import_export	8	1
1977	2023-06-18 11:20:49.330788+00	4165	фрукты консервированные	1	new through import_export	8	1
1978	2023-06-18 11:20:49.331035+00	4166	фундук	1	new through import_export	8	1
1979	2023-06-18 11:20:49.33141+00	4167	фундучная мука	1	new through import_export	8	1
1980	2023-06-18 11:20:49.331646+00	4168	фунчоза	1	new through import_export	8	1
1981	2023-06-18 11:20:49.331866+00	4169	халва	1	new through import_export	8	1
1982	2023-06-18 11:20:49.332095+00	4170	халва ванильная	1	new through import_export	8	1
1983	2023-06-18 11:20:49.332331+00	4171	халва подсолнечная	1	new through import_export	8	1
1984	2023-06-18 11:20:49.332558+00	4172	халуми	1	new through import_export	8	1
1985	2023-06-18 11:20:49.332789+00	4173	хамон	1	new through import_export	8	1
1986	2023-06-18 11:20:49.333018+00	4174	хек	1	new through import_export	8	1
1987	2023-06-18 11:20:49.333238+00	4175	хек филе	1	new through import_export	8	1
1988	2023-06-18 11:20:49.333459+00	4176	херес	1	new through import_export	8	1
1989	2023-06-18 11:20:49.333674+00	4177	хересный уксус	1	new through import_export	8	1
1990	2023-06-18 11:20:49.333924+00	4178	хлеб	1	new through import_export	8	1
1991	2023-06-18 11:20:49.334199+00	4179	хлеб 7 злаков	1	new through import_export	8	1
1992	2023-06-18 11:20:49.334452+00	4180	хлеб белый	1	new through import_export	8	1
1993	2023-06-18 11:20:49.334705+00	4181	хлеб белый сухой	1	new through import_export	8	1
1994	2023-06-18 11:20:49.334993+00	4182	хлеб бородинский	1	new through import_export	8	1
1995	2023-06-18 11:20:49.335281+00	4183	хлеб датский ржаной	1	new through import_export	8	1
1996	2023-06-18 11:20:49.335537+00	4184	хлеб для сэндвичей	1	new through import_export	8	1
1997	2023-06-18 11:20:49.335763+00	4185	хлебная крошка	1	new through import_export	8	1
1998	2023-06-18 11:20:49.335989+00	4186	хлеб ржаной	1	new through import_export	8	1
1999	2023-06-18 11:20:49.33622+00	4187	хлеб серый	1	new through import_export	8	1
2000	2023-06-18 11:20:49.336454+00	4188	хлеб с кунжутом	1	new through import_export	8	1
2001	2023-06-18 11:20:49.33668+00	4189	хлеб цельнозерновой	1	new through import_export	8	1
2002	2023-06-18 11:20:49.336925+00	4190	хлебцы пшенично-ржаные цельнозерновые	1	new through import_export	8	1
2003	2023-06-18 11:20:49.337171+00	4191	хлопья 4 злака	1	new through import_export	8	1
2004	2023-06-18 11:20:49.337393+00	4192	хлопья 5 злаков	1	new through import_export	8	1
2005	2023-06-18 11:20:49.337611+00	4193	хлопья 7 злаков	1	new through import_export	8	1
2006	2023-06-18 11:20:49.337835+00	4194	хлопья быстрого приготовления	1	new through import_export	8	1
2007	2023-06-18 11:20:49.338057+00	4195	хлорид кальция	1	new through import_export	8	1
2008	2023-06-18 11:20:49.338281+00	4196	хмели-сунели	1	new through import_export	8	1
2009	2023-06-18 11:20:49.338507+00	4197	хмель	1	new through import_export	8	1
2010	2023-06-18 11:20:49.338723+00	4198	хрен	1	new through import_export	8	1
2011	2023-06-18 11:20:49.338953+00	4199	хрен протертый	1	new through import_export	8	1
2012	2023-06-18 11:20:49.339351+00	4200	хрен со сливками	1	new through import_export	8	1
2013	2023-06-18 11:20:49.339586+00	4201	хурма	1	new through import_export	8	1
2014	2023-06-18 11:20:49.339807+00	4202	хурма спелая	1	new through import_export	8	1
2015	2023-06-18 11:20:49.340032+00	4203	цесарка тушка	1	new through import_export	8	1
2016	2023-06-18 11:20:49.340262+00	4204	цикорий	1	new through import_export	8	1
2017	2023-06-18 11:20:49.340514+00	4205	цитроновые цукаты	1	new through import_export	8	1
2018	2023-06-18 11:20:49.340745+00	4206	цитрусовые цукаты	1	new through import_export	8	1
2019	2023-06-18 11:20:49.340977+00	4207	цитрусовый свежевыжатый сок	1	new through import_export	8	1
2020	2023-06-18 11:20:49.341195+00	4208	цукаты	1	new through import_export	8	1
2021	2023-06-18 11:20:49.341438+00	4209	цукини	1	new through import_export	8	1
2022	2023-06-18 11:20:49.341682+00	4210	цукини цветы	1	new through import_export	8	1
2023	2023-06-18 11:20:49.341901+00	4211	цыплята	1	new through import_export	8	1
2024	2023-06-18 11:20:49.34212+00	4212	цыплята-корнишоны	1	new through import_export	8	1
2025	2023-06-18 11:20:49.342349+00	4213	чабер	1	new through import_export	8	1
2026	2023-06-18 11:20:49.342575+00	4214	чабрец	1	new through import_export	8	1
2027	2023-06-18 11:20:49.342796+00	4215	чабрец сушеный	1	new through import_export	8	1
2028	2023-06-18 11:20:49.34306+00	4216	чай дарджилинг	1	new through import_export	8	1
2029	2023-06-18 11:20:49.343298+00	4217	чай жасминовый	1	new through import_export	8	1
2030	2023-06-18 11:20:49.343535+00	4218	чай зеленый	1	new through import_export	8	1
2031	2023-06-18 11:20:49.343757+00	4219	чай копченый лапсанг сушонг	1	new through import_export	8	1
2032	2023-06-18 11:20:49.343976+00	4220	чай красный	1	new through import_export	8	1
2033	2023-06-18 11:20:49.3442+00	4221	чай ройбуш	1	new through import_export	8	1
2034	2023-06-18 11:20:49.344437+00	4222	чай черный	1	new through import_export	8	1
2035	2023-06-18 11:20:49.344672+00	4223	чай черный крупнолистовой	1	new through import_export	8	1
2036	2023-06-18 11:20:49.344903+00	4224	чай черный со специями	1	new through import_export	8	1
2037	2023-06-18 11:20:49.345123+00	4225	чай эрл грей	1	new through import_export	8	1
2038	2023-06-18 11:20:49.345355+00	4226	чатни манго	1	new through import_export	8	1
2039	2023-06-18 11:20:49.345585+00	4227	чеддер	1	new through import_export	8	1
2040	2023-06-18 11:20:49.345808+00	4228	черемуха	1	new through import_export	8	1
2041	2023-06-18 11:20:49.346058+00	4229	черемуховая мука	1	new through import_export	8	1
2042	2023-06-18 11:20:49.346341+00	4230	черемша	1	new through import_export	8	1
2043	2023-06-18 11:20:49.346584+00	4231	черешневый джем	1	new through import_export	8	1
2044	2023-06-18 11:20:49.346814+00	4232	черешня	1	new through import_export	8	1
2045	2023-06-18 11:20:49.347198+00	4233	черешня консервированная без косточек	1	new through import_export	8	1
2046	2023-06-18 11:20:49.347489+00	4234	черная смородина	1	new through import_export	8	1
2047	2023-06-18 11:20:49.347726+00	4235	черника	1	new through import_export	8	1
2048	2023-06-18 11:20:49.347956+00	4236	черника замороженная	1	new through import_export	8	1
2049	2023-06-18 11:20:49.348176+00	4237	чернила каракатицы	1	new through import_export	8	1
2050	2023-06-18 11:20:49.348398+00	4238	черничный джем	1	new through import_export	8	1
2051	2023-06-18 11:20:49.348624+00	4239	чернослив	1	new through import_export	8	1
2052	2023-06-18 11:20:49.348846+00	4240	чернослив без косточек	1	new through import_export	8	1
2053	2023-06-18 11:20:49.349063+00	4241	чернослив вяленый	1	new through import_export	8	1
2054	2023-06-18 11:20:49.349291+00	4242	чернослив копченый без косточек	1	new through import_export	8	1
2055	2023-06-18 11:20:49.34952+00	4243	черносмородиновое варенье	1	new through import_export	8	1
2056	2023-06-18 11:20:49.349737+00	4244	черносмородиновый джем	1	new through import_export	8	1
2057	2023-06-18 11:20:49.349955+00	4245	чеснок	1	new through import_export	8	1
2058	2023-06-18 11:20:49.350172+00	4246	чеснок молодой	1	new through import_export	8	1
2059	2023-06-18 11:20:49.350406+00	4247	чеснок сушеный	1	new through import_export	8	1
2060	2023-06-18 11:20:49.350642+00	4248	чесночная соль	1	new through import_export	8	1
2061	2023-06-18 11:20:49.350873+00	4249	чесночное масло	1	new through import_export	8	1
2062	2023-06-18 11:20:49.351109+00	4250	чесночный порошок	1	new through import_export	8	1
2063	2023-06-18 11:20:49.351359+00	4251	чечевица	1	new through import_export	8	1
2064	2023-06-18 11:20:49.35163+00	4252	чечевица вареная	1	new through import_export	8	1
2065	2023-06-18 11:20:49.351871+00	4253	чечевица зеленая	1	new through import_export	8	1
2066	2023-06-18 11:20:49.352117+00	4254	чечевица красная	1	new through import_export	8	1
2067	2023-06-18 11:20:49.352402+00	4255	чечил спагетти	1	new through import_export	8	1
2068	2023-06-18 11:20:49.352657+00	4256	чиабатта	1	new through import_export	8	1
2069	2023-06-18 11:20:49.352892+00	4257	чиа семена	1	new through import_export	8	1
2070	2023-06-18 11:20:49.353118+00	4258	чипотле молотый	1	new through import_export	8	1
2071	2023-06-18 11:20:49.353364+00	4259	чипсы	1	new through import_export	8	1
2072	2023-06-18 11:20:49.353609+00	4260	чоризо	1	new through import_export	8	1
2073	2023-06-18 11:20:49.35383+00	4261	шалфей	1	new through import_export	8	1
2074	2023-06-18 11:20:49.354052+00	4262	шалфей свежий	1	new through import_export	8	1
2075	2023-06-18 11:20:49.354275+00	4263	шалфей сушеный	1	new through import_export	8	1
2076	2023-06-18 11:20:49.3545+00	4264	шампанское	1	new through import_export	8	1
2077	2023-06-18 11:20:49.354725+00	4265	шампанское советское	1	new through import_export	8	1
2078	2023-06-18 11:20:49.355069+00	4266	шампанское сухое	1	new through import_export	8	1
2079	2023-06-18 11:20:49.35529+00	4267	шампиньоны	1	new through import_export	8	1
2080	2023-06-18 11:20:49.355557+00	4268	шампиньоны замороженные	1	new through import_export	8	1
2081	2023-06-18 11:20:49.355796+00	4269	шампиньоны консервированные	1	new through import_export	8	1
2082	2023-06-18 11:20:49.356024+00	4270	шампиньоны маринованные	1	new through import_export	8	1
2083	2023-06-18 11:20:49.356258+00	4271	шампиньоны свежие	1	new through import_export	8	1
2084	2023-06-18 11:20:49.356489+00	4272	шафран	1	new through import_export	8	1
2085	2023-06-18 11:20:49.356716+00	4273	шафран имеретинский	1	new through import_export	8	1
2086	2023-06-18 11:20:49.356942+00	4274	шафран молотый	1	new through import_export	8	1
2087	2023-06-18 11:20:49.357159+00	4275	шафран нити	1	new through import_export	8	1
2088	2023-06-18 11:20:49.357386+00	4276	шелковица	1	new through import_export	8	1
2089	2023-06-18 11:20:49.357604+00	4277	шелковица сушеная	1	new through import_export	8	1
2090	2023-06-18 11:20:49.357841+00	4278	шиповник	1	new through import_export	8	1
2091	2023-06-18 11:20:49.358063+00	4279	шиповниковый сироп	1	new through import_export	8	1
2092	2023-06-18 11:20:49.358285+00	4280	шнапс	1	new through import_export	8	1
2093	2023-06-18 11:20:49.358515+00	4281	шнитт-лук	1	new through import_export	8	1
2094	2023-06-18 11:20:49.358761+00	4282	шоколад	1	new through import_export	8	1
2095	2023-06-18 11:20:49.359036+00	4283	шоколад белый	1	new through import_export	8	1
2096	2023-06-18 11:20:49.359302+00	4284	шоколад горький с апельсиновой цедрой	1	new through import_export	8	1
2097	2023-06-18 11:20:49.359562+00	4285	шоколад молочный	1	new through import_export	8	1
2098	2023-06-18 11:20:49.359787+00	4286	шоколад мятный	1	new through import_export	8	1
2099	2023-06-18 11:20:49.360029+00	4287	шоколадная паста	1	new through import_export	8	1
2100	2023-06-18 11:20:49.360264+00	4288	шоколадная стружка	1	new through import_export	8	1
2101	2023-06-18 11:20:49.360496+00	4289	шоколадное масло	1	new through import_export	8	1
2102	2023-06-18 11:20:49.36072+00	4290	шоколадно-ореховая паста	1	new through import_export	8	1
2103	2023-06-18 11:20:49.360946+00	4291	шоколадные горошины	1	new through import_export	8	1
2104	2023-06-18 11:20:49.361186+00	4292	шоколадные капли	1	new through import_export	8	1
2105	2023-06-18 11:20:49.361433+00	4293	шоколадные капли белые	1	new through import_export	8	1
2106	2023-06-18 11:20:49.361655+00	4294	шоколадные конфеты	1	new through import_export	8	1
2107	2023-06-18 11:20:49.361905+00	4295	шоколадные хлопья	1	new through import_export	8	1
2108	2023-06-18 11:20:49.362174+00	4296	шоколадные шарики из готовых завтраков	1	new through import_export	8	1
2109	2023-06-18 11:20:49.362437+00	4297	шоколадный ликер	1	new through import_export	8	1
2110	2023-06-18 11:20:49.362809+00	4298	шоколадный сироп	1	new through import_export	8	1
2111	2023-06-18 11:20:49.363056+00	4299	шоколадный соус	1	new through import_export	8	1
2112	2023-06-18 11:20:49.363305+00	4300	шоколад полусладкий	1	new through import_export	8	1
2113	2023-06-18 11:20:49.363591+00	4301	шоколад с орехами	1	new through import_export	8	1
2114	2023-06-18 11:20:49.363862+00	4302	шоколад черный горький	1	new through import_export	8	1
2115	2023-06-18 11:20:49.364116+00	4303	шоколад черный горький 70%	1	new through import_export	8	1
2116	2023-06-18 11:20:49.364377+00	4304	шоколад черный горький 75%	1	new through import_export	8	1
2117	2023-06-18 11:20:49.364656+00	4305	шоколад черный горький 85%	1	new through import_export	8	1
2118	2023-06-18 11:20:49.364925+00	4306	шортенинг	1	new through import_export	8	1
2119	2023-06-18 11:20:49.365185+00	4307	шпик	1	new through import_export	8	1
2120	2023-06-18 11:20:49.365468+00	4308	шпик копченый	1	new through import_export	8	1
2121	2023-06-18 11:20:49.365708+00	4309	шпинат	1	new through import_export	8	1
2122	2023-06-18 11:20:49.365933+00	4310	шпинат замороженный	1	new through import_export	8	1
2123	2023-06-18 11:20:49.366175+00	4311	шпинат молодой	1	new through import_export	8	1
2124	2023-06-18 11:20:49.366455+00	4312	шпинат свежий	1	new through import_export	8	1
2125	2023-06-18 11:20:49.366703+00	4313	шпроты	1	new through import_export	8	1
2126	2023-06-18 11:20:49.366925+00	4314	шпроты в масле	1	new through import_export	8	1
2127	2023-06-18 11:20:49.36718+00	4315	шрот	1	new through import_export	8	1
2128	2023-06-18 11:20:49.367443+00	4316	щавель замороженный	1	new through import_export	8	1
2129	2023-06-18 11:20:49.367686+00	4317	щавель свежий	1	new through import_export	8	1
2130	2023-06-18 11:20:49.367905+00	4318	щука	1	new through import_export	8	1
2131	2023-06-18 11:20:49.368126+00	4319	щука филе	1	new through import_export	8	1
2132	2023-06-18 11:20:49.36837+00	4320	эгг-ног	1	new through import_export	8	1
2133	2023-06-18 11:20:49.368639+00	4321	эдам	1	new through import_export	8	1
2134	2023-06-18 11:20:49.368875+00	4322	эль	1	new through import_export	8	1
2135	2023-06-18 11:20:49.369107+00	4323	эмменталь	1	new through import_export	8	1
2136	2023-06-18 11:20:49.369364+00	4324	эскалоп	1	new through import_export	8	1
2137	2023-06-18 11:20:49.369627+00	4325	эстрагон	1	new through import_export	8	1
2138	2023-06-18 11:20:49.369848+00	4326	эстрагон сушеный	1	new through import_export	8	1
2139	2023-06-18 11:20:49.370068+00	4327	яблоки	1	new through import_export	8	1
2140	2023-06-18 11:20:49.370288+00	4328	яблоки антоновка	1	new through import_export	8	1
2141	2023-06-18 11:20:49.37052+00	4329	яблоки гала	1	new through import_export	8	1
2142	2023-06-18 11:20:49.370736+00	4330	яблоки голден	1	new through import_export	8	1
2143	2023-06-18 11:20:49.371193+00	4331	яблоки гренни смит	1	new through import_export	8	1
2144	2023-06-18 11:20:49.371481+00	4332	яблоки зеленые	1	new through import_export	8	1
2145	2023-06-18 11:20:49.371719+00	4333	яблоки красные	1	new through import_export	8	1
2146	2023-06-18 11:20:49.371945+00	4334	яблоки моченые	1	new through import_export	8	1
2147	2023-06-18 11:20:49.372165+00	4335	яблоки нетвердых сортов	1	new through import_export	8	1
2148	2023-06-18 11:20:49.372386+00	4336	яблоки сладкие	1	new through import_export	8	1
2149	2023-06-18 11:20:49.372624+00	4337	яблоки сушеные	1	new through import_export	8	1
2150	2023-06-18 11:20:49.372893+00	4338	яблочная эссенция	1	new through import_export	8	1
2151	2023-06-18 11:20:49.373146+00	4339	яблочное варенье	1	new through import_export	8	1
2152	2023-06-18 11:20:49.373411+00	4340	яблочное повидло	1	new through import_export	8	1
2153	2023-06-18 11:20:49.373652+00	4341	яблочное пюре	1	new through import_export	8	1
2154	2023-06-18 11:20:49.373872+00	4342	яблочные чипсы	1	new through import_export	8	1
2155	2023-06-18 11:20:49.374105+00	4343	яблочный джем	1	new through import_export	8	1
2156	2023-06-18 11:20:49.374336+00	4344	яблочный сироп	1	new through import_export	8	1
2157	2023-06-18 11:20:49.374593+00	4345	яблочный сок	1	new through import_export	8	1
2158	2023-06-18 11:20:49.374835+00	4346	яблочный соус	1	new through import_export	8	1
2159	2023-06-18 11:20:49.375059+00	4347	яблочный уксус	1	new through import_export	8	1
2160	2023-06-18 11:20:49.375307+00	4348	ягнятина	1	new through import_export	8	1
2161	2023-06-18 11:20:49.375545+00	4349	ягнятина кострец	1	new through import_export	8	1
2162	2023-06-18 11:20:49.37577+00	4350	ягнятина фарш	1	new through import_export	8	1
2163	2023-06-18 11:20:49.375988+00	4351	ягнячьи отбивные на косточке	1	new through import_export	8	1
2164	2023-06-18 11:20:49.376207+00	4352	ягнячья голень нарубленная	1	new through import_export	8	1
2165	2023-06-18 11:20:49.376437+00	4353	ягнячья корейка	1	new through import_export	8	1
2166	2023-06-18 11:20:49.376654+00	4354	ягодное варенье	1	new through import_export	8	1
2167	2023-06-18 11:20:49.376884+00	4355	ягодное желе	1	new through import_export	8	1
2168	2023-06-18 11:20:49.377104+00	4356	ягодный сироп	1	new through import_export	8	1
2169	2023-06-18 11:20:49.377329+00	4357	ягодный сок	1	new through import_export	8	1
2170	2023-06-18 11:20:49.377573+00	4358	ягодный соус кислый	1	new through import_export	8	1
2171	2023-06-18 11:20:49.377815+00	4359	ягоды	1	new through import_export	8	1
2172	2023-06-18 11:20:49.378084+00	4360	ягоды вяленые	1	new through import_export	8	1
2173	2023-06-18 11:20:49.378334+00	4361	ягоды замороженные	1	new through import_export	8	1
2174	2023-06-18 11:20:49.378575+00	4362	ягоды лесные	1	new through import_export	8	1
2175	2023-06-18 11:20:49.378794+00	4363	ягоды лесные замороженные	1	new through import_export	8	1
2176	2023-06-18 11:20:49.379153+00	4364	яичные белки	1	new through import_export	8	1
2177	2023-06-18 11:20:49.379388+00	4365	яичные желтки	1	new through import_export	8	1
2178	2023-06-18 11:20:49.37964+00	4366	яичные желтки вареные	1	new through import_export	8	1
2179	2023-06-18 11:20:49.379877+00	4367	яичные желтки крупные	1	new through import_export	8	1
2180	2023-06-18 11:20:49.38011+00	4368	яичный меланж	1	new through import_export	8	1
2181	2023-06-18 11:20:49.380335+00	4369	яичный порошок	1	new through import_export	8	1
2182	2023-06-18 11:20:49.380557+00	4370	яйца куриные	1	new through import_export	8	1
2183	2023-06-18 11:20:49.380775+00	4371	яйца куриные крупные	1	new through import_export	8	1
2184	2023-06-18 11:20:49.380994+00	4372	яйца перепелиные	1	new through import_export	8	1
2185	2023-06-18 11:20:49.381215+00	4373	японская крошка панко	1	new through import_export	8	1
2186	2023-06-18 11:20:49.381444+00	4374	ячменные хлопья	1	new through import_export	8	1
2187	2023-06-18 11:20:49.381663+00	4375	ячмень	1	new through import_export	8	1
2188	2023-06-18 11:20:49.381893+00	4376	ячневая крупа	1	new through import_export	8	1
2189	2023-06-18 11:35:51.443722+00	1	Завтрак	1	new through import_export	11	1
2190	2023-06-18 11:35:51.445677+00	2	Обед	1	new through import_export	11	1
2191	2023-06-18 11:35:51.446539+00	3	Ужин	1	new through import_export	11	1
2192	2023-06-18 12:00:09.984482+00	3	Абрикосовое варенье с миндалем	2	[{"changed": {"fields": ["\\u0410\\u0432\\u0442\\u043e\\u0440", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	10	1
2193	2023-06-18 12:00:17.986946+00	5	Гратен дофинуа	2	[{"changed": {"fields": ["\\u0410\\u0432\\u0442\\u043e\\u0440", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	10	1
2194	2023-06-18 12:00:25.243647+00	1	Тыквенное пюре	2	[{"changed": {"fields": ["\\u0410\\u0432\\u0442\\u043e\\u0440", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	10	1
2195	2023-06-18 12:00:31.626115+00	2	Рисовая каша на молоке	2	[{"changed": {"fields": ["\\u0410\\u0432\\u0442\\u043e\\u0440", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	10	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	authtoken	token
7	authtoken	tokenproxy
8	api	ingredient
9	api	ingredientrecipe
10	api	recipe
11	api	tag
12	api	shoppinglist
13	api	favorite
14	users	customuser
15	users	subscription
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-06-18 11:18:55.996108+00
2	contenttypes	0002_remove_content_type_name	2023-06-18 11:18:55.998928+00
3	auth	0001_initial	2023-06-18 11:18:56.013832+00
4	auth	0002_alter_permission_name_max_length	2023-06-18 11:18:56.015892+00
5	auth	0003_alter_user_email_max_length	2023-06-18 11:18:56.017933+00
6	auth	0004_alter_user_username_opts	2023-06-18 11:18:56.020011+00
7	auth	0005_alter_user_last_login_null	2023-06-18 11:18:56.021959+00
8	auth	0006_require_contenttypes_0002	2023-06-18 11:18:56.022682+00
9	auth	0007_alter_validators_add_error_messages	2023-06-18 11:18:56.025042+00
10	auth	0008_alter_user_username_max_length	2023-06-18 11:18:56.027218+00
11	auth	0009_alter_user_last_name_max_length	2023-06-18 11:18:56.029288+00
12	auth	0010_alter_group_name_max_length	2023-06-18 11:18:56.032222+00
13	auth	0011_update_proxy_permissions	2023-06-18 11:18:56.034929+00
14	auth	0012_alter_user_first_name_max_length	2023-06-18 11:18:56.036811+00
15	users	0001_initial	2023-06-18 11:18:56.061604+00
16	admin	0001_initial	2023-06-18 11:18:56.069127+00
17	admin	0002_logentry_remove_auto_add	2023-06-18 11:18:56.072116+00
18	admin	0003_logentry_add_action_flag_choices	2023-06-18 11:18:56.075064+00
19	api	0001_initial	2023-06-18 11:18:56.133455+00
20	authtoken	0001_initial	2023-06-18 11:18:56.141909+00
21	authtoken	0002_auto_20160226_1747	2023-06-18 11:18:56.157712+00
22	authtoken	0003_tokenproxy	2023-06-18 11:18:56.16048+00
23	sessions	0001_initial	2023-06-18 11:18:56.167899+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
plx2tbangekgjdq9gtis8bj3jtr6txg5	.eJxVjDsOwjAQRO_iGlm7ZG3HlPScwVr_cADZUpxUiLuTSCmgmGbem3kLx-tS3NrT7KYoLgLF6bfzHJ6p7iA-uN6bDK0u8-TlrsiDdnlrMb2uh_t3ULiXbQ0Dog8ZCZA0syKCZFSmLTDaAKDyGAOdjY5gKLO2iFbZgZEwogHx-QK22jZu:1qAqRr:me9oxSxwhZeQcCT1T2Ja_2Z7cmPc8h7aTG72zAf7qXs	2023-07-02 11:19:59.712896+00
\.


--
-- Data for Name: users_customuser; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.users_customuser (id, password, last_login, is_superuser, username, is_staff, is_active, date_joined, email, first_name, last_name) FROM stdin;
2	pbkdf2_sha256$600000$E2Vz2PZQ6lVTAKELzmSWX2$Xop7sv6D7SO0QPv8a5MOi29efytkB0KLqPxxXKYCECc=	\N	f	test3	f	t	2023-06-18 11:19:29.816731+00	test3@yandex.ru	Тест3	Тестович
3	pbkdf2_sha256$600000$elJYyVDW687rjKCL8uEu0R$7uIYyA7BcOhs3Na0YpBeaA4vAE3eLv9W4eUEuNRPXdc=	\N	f	test4	f	t	2023-06-18 11:19:40.798349+00	test4@yandex.ru	Тест4	Тестович
1	pbkdf2_sha256$600000$6tCY3eLNw43g4eYkFaID9u$XNFYlpHsDwqQt+f0YpGZayCBDumu3BJTprmaK7ntUlg=	2023-06-18 11:21:09.251779+00	t	maryk	t	t	2023-06-18 11:19:19.100913+00	wildcat.3333@yandex.ru	mary	k
\.


--
-- Data for Name: users_customuser_groups; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.users_customuser_groups (id, customuser_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_customuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.users_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
\.


--
-- Data for Name: users_subscription; Type: TABLE DATA; Schema: public; Owner: maryk
--

COPY public.users_subscription (id, author_id, user_id) FROM stdin;
1	2	1
2	3	1
\.


--
-- Name: api_favorite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.api_favorite_id_seq', 2, true);


--
-- Name: api_ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.api_ingredient_id_seq', 4376, true);


--
-- Name: api_ingredientrecipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.api_ingredientrecipe_id_seq', 39, true);


--
-- Name: api_recipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.api_recipe_id_seq', 7, true);


--
-- Name: api_recipe_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.api_recipe_tags_id_seq', 16, true);


--
-- Name: api_shoppinglist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.api_shoppinglist_id_seq', 3, true);


--
-- Name: api_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.api_tag_id_seq', 3, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2195, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);


--
-- Name: users_customuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.users_customuser_groups_id_seq', 1, false);


--
-- Name: users_customuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.users_customuser_id_seq', 3, true);


--
-- Name: users_customuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.users_customuser_user_permissions_id_seq', 1, false);


--
-- Name: users_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryk
--

SELECT pg_catalog.setval('public.users_subscription_id_seq', 2, true);


--
-- Name: api_favorite api_favorite_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_favorite
    ADD CONSTRAINT api_favorite_pkey PRIMARY KEY (id);


--
-- Name: api_ingredient api_ingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_ingredient
    ADD CONSTRAINT api_ingredient_pkey PRIMARY KEY (id);


--
-- Name: api_ingredientrecipe api_ingredientrecipe_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_ingredientrecipe
    ADD CONSTRAINT api_ingredientrecipe_pkey PRIMARY KEY (id);


--
-- Name: api_recipe api_recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_recipe
    ADD CONSTRAINT api_recipe_pkey PRIMARY KEY (id);


--
-- Name: api_recipe_tags api_recipe_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_recipe_tags
    ADD CONSTRAINT api_recipe_tags_pkey PRIMARY KEY (id);


--
-- Name: api_recipe_tags api_recipe_tags_recipe_id_tag_id_4e3605b4_uniq; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_recipe_tags
    ADD CONSTRAINT api_recipe_tags_recipe_id_tag_id_4e3605b4_uniq UNIQUE (recipe_id, tag_id);


--
-- Name: api_shoppinglist api_shoppinglist_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_shoppinglist
    ADD CONSTRAINT api_shoppinglist_pkey PRIMARY KEY (id);


--
-- Name: api_tag api_tag_color_key; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_tag
    ADD CONSTRAINT api_tag_color_key UNIQUE (color);


--
-- Name: api_tag api_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_tag
    ADD CONSTRAINT api_tag_name_key UNIQUE (name);


--
-- Name: api_tag api_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_tag
    ADD CONSTRAINT api_tag_pkey PRIMARY KEY (id);


--
-- Name: api_tag api_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_tag
    ADD CONSTRAINT api_tag_slug_key UNIQUE (slug);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: api_recipe unique_author_name; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_recipe
    ADD CONSTRAINT unique_author_name UNIQUE (author_id, name);


--
-- Name: api_favorite unique_favorite_recipe; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_favorite
    ADD CONSTRAINT unique_favorite_recipe UNIQUE (user_id, recipe_id);


--
-- Name: users_subscription unique_following; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_subscription
    ADD CONSTRAINT unique_following UNIQUE (user_id, author_id);


--
-- Name: api_ingredientrecipe unique_recipe_ingredient; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_ingredientrecipe
    ADD CONSTRAINT unique_recipe_ingredient UNIQUE (recipe_id, ingredient_id);


--
-- Name: api_shoppinglist unique_user_recipe; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_shoppinglist
    ADD CONSTRAINT unique_user_recipe UNIQUE (user_id, recipe_id);


--
-- Name: users_customuser users_customuser_email_key; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_email_key UNIQUE (email);


--
-- Name: users_customuser_groups users_customuser_groups_customuser_id_group_id_76b619e3_uniq; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_customuser_id_group_id_76b619e3_uniq UNIQUE (customuser_id, group_id);


--
-- Name: users_customuser_groups users_customuser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_pkey PRIMARY KEY (id);


--
-- Name: users_customuser users_customuser_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_pkey PRIMARY KEY (id);


--
-- Name: users_customuser_user_permissions users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq UNIQUE (customuser_id, permission_id);


--
-- Name: users_customuser_user_permissions users_customuser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_customuser users_customuser_username_key; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_username_key UNIQUE (username);


--
-- Name: users_subscription users_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_subscription
    ADD CONSTRAINT users_subscription_pkey PRIMARY KEY (id);


--
-- Name: api_favorite_recipe_id_70e48425; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX api_favorite_recipe_id_70e48425 ON public.api_favorite USING btree (recipe_id);


--
-- Name: api_favorite_user_id_87b96550; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX api_favorite_user_id_87b96550 ON public.api_favorite USING btree (user_id);


--
-- Name: api_ingredientrecipe_ingredient_id_3b1e815c; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX api_ingredientrecipe_ingredient_id_3b1e815c ON public.api_ingredientrecipe USING btree (ingredient_id);


--
-- Name: api_ingredientrecipe_recipe_id_68c15ced; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX api_ingredientrecipe_recipe_id_68c15ced ON public.api_ingredientrecipe USING btree (recipe_id);


--
-- Name: api_recipe_author_id_423d4c07; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX api_recipe_author_id_423d4c07 ON public.api_recipe USING btree (author_id);


--
-- Name: api_recipe_tags_recipe_id_39cc25a8; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX api_recipe_tags_recipe_id_39cc25a8 ON public.api_recipe_tags USING btree (recipe_id);


--
-- Name: api_recipe_tags_tag_id_85673ca0; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX api_recipe_tags_tag_id_85673ca0 ON public.api_recipe_tags USING btree (tag_id);


--
-- Name: api_shoppinglist_recipe_id_bf623920; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX api_shoppinglist_recipe_id_bf623920 ON public.api_shoppinglist USING btree (recipe_id);


--
-- Name: api_shoppinglist_user_id_decfea1c; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX api_shoppinglist_user_id_decfea1c ON public.api_shoppinglist USING btree (user_id);


--
-- Name: api_tag_color_2a7628a5_like; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX api_tag_color_2a7628a5_like ON public.api_tag USING btree (color varchar_pattern_ops);


--
-- Name: api_tag_name_e0f7a95d_like; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX api_tag_name_e0f7a95d_like ON public.api_tag USING btree (name varchar_pattern_ops);


--
-- Name: api_tag_slug_dc7250ca_like; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX api_tag_slug_dc7250ca_like ON public.api_tag USING btree (slug varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: users_customuser_email_6445acef_like; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX users_customuser_email_6445acef_like ON public.users_customuser USING btree (email varchar_pattern_ops);


--
-- Name: users_customuser_groups_customuser_id_958147bf; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX users_customuser_groups_customuser_id_958147bf ON public.users_customuser_groups USING btree (customuser_id);


--
-- Name: users_customuser_groups_group_id_01390b14; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX users_customuser_groups_group_id_01390b14 ON public.users_customuser_groups USING btree (group_id);


--
-- Name: users_customuser_user_permissions_customuser_id_5771478b; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX users_customuser_user_permissions_customuser_id_5771478b ON public.users_customuser_user_permissions USING btree (customuser_id);


--
-- Name: users_customuser_user_permissions_permission_id_baaa2f74; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX users_customuser_user_permissions_permission_id_baaa2f74 ON public.users_customuser_user_permissions USING btree (permission_id);


--
-- Name: users_customuser_username_80452fdf_like; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX users_customuser_username_80452fdf_like ON public.users_customuser USING btree (username varchar_pattern_ops);


--
-- Name: users_subscription_author_id_717ab6a7; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX users_subscription_author_id_717ab6a7 ON public.users_subscription USING btree (author_id);


--
-- Name: users_subscription_user_id_d9433bee; Type: INDEX; Schema: public; Owner: maryk
--

CREATE INDEX users_subscription_user_id_d9433bee ON public.users_subscription USING btree (user_id);


--
-- Name: api_favorite api_favorite_recipe_id_70e48425_fk_api_recipe_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_favorite
    ADD CONSTRAINT api_favorite_recipe_id_70e48425_fk_api_recipe_id FOREIGN KEY (recipe_id) REFERENCES public.api_recipe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_favorite api_favorite_user_id_87b96550_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_favorite
    ADD CONSTRAINT api_favorite_user_id_87b96550_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_ingredientrecipe api_ingredientrecipe_ingredient_id_3b1e815c_fk_api_ingre; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_ingredientrecipe
    ADD CONSTRAINT api_ingredientrecipe_ingredient_id_3b1e815c_fk_api_ingre FOREIGN KEY (ingredient_id) REFERENCES public.api_ingredient(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_ingredientrecipe api_ingredientrecipe_recipe_id_68c15ced_fk_api_recipe_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_ingredientrecipe
    ADD CONSTRAINT api_ingredientrecipe_recipe_id_68c15ced_fk_api_recipe_id FOREIGN KEY (recipe_id) REFERENCES public.api_recipe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_recipe api_recipe_author_id_423d4c07_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_recipe
    ADD CONSTRAINT api_recipe_author_id_423d4c07_fk_users_customuser_id FOREIGN KEY (author_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_recipe_tags api_recipe_tags_recipe_id_39cc25a8_fk_api_recipe_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_recipe_tags
    ADD CONSTRAINT api_recipe_tags_recipe_id_39cc25a8_fk_api_recipe_id FOREIGN KEY (recipe_id) REFERENCES public.api_recipe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_recipe_tags api_recipe_tags_tag_id_85673ca0_fk_api_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_recipe_tags
    ADD CONSTRAINT api_recipe_tags_tag_id_85673ca0_fk_api_tag_id FOREIGN KEY (tag_id) REFERENCES public.api_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_shoppinglist api_shoppinglist_recipe_id_bf623920_fk_api_recipe_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_shoppinglist
    ADD CONSTRAINT api_shoppinglist_recipe_id_bf623920_fk_api_recipe_id FOREIGN KEY (recipe_id) REFERENCES public.api_recipe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_shoppinglist api_shoppinglist_user_id_decfea1c_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.api_shoppinglist
    ADD CONSTRAINT api_shoppinglist_user_id_decfea1c_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_groups users_customuser_gro_customuser_id_958147bf_fk_users_cus; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_gro_customuser_id_958147bf_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_groups users_customuser_groups_group_id_01390b14_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_group_id_01390b14_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_user_permissions users_customuser_use_customuser_id_5771478b_fk_users_cus; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_customuser_id_5771478b_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_user_permissions users_customuser_use_permission_id_baaa2f74_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_permission_id_baaa2f74_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_subscription users_subscription_author_id_717ab6a7_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_subscription
    ADD CONSTRAINT users_subscription_author_id_717ab6a7_fk_users_customuser_id FOREIGN KEY (author_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_subscription users_subscription_user_id_d9433bee_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: maryk
--

ALTER TABLE ONLY public.users_subscription
    ADD CONSTRAINT users_subscription_user_id_d9433bee_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

