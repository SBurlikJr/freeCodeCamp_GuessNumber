--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    rand_generated_num integer NOT NULL,
    number_of_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 583, 9);
INSERT INTO public.games VALUES (2, 1, 750, 6);
INSERT INTO public.games VALUES (3, 1, 963, 14);
INSERT INTO public.games VALUES (4, 2, 910, 911);
INSERT INTO public.games VALUES (5, 2, 33, 34);
INSERT INTO public.games VALUES (6, 3, 660, 661);
INSERT INTO public.games VALUES (7, 3, 340, 341);
INSERT INTO public.games VALUES (8, 2, 544, 547);
INSERT INTO public.games VALUES (9, 2, 742, 744);
INSERT INTO public.games VALUES (10, 2, 340, 341);
INSERT INTO public.games VALUES (11, 1, 588, 9);
INSERT INTO public.games VALUES (12, 4, 761, 762);
INSERT INTO public.games VALUES (13, 4, 478, 479);
INSERT INTO public.games VALUES (14, 5, 714, 715);
INSERT INTO public.games VALUES (15, 5, 882, 883);
INSERT INTO public.games VALUES (16, 4, 557, 560);
INSERT INTO public.games VALUES (17, 4, 559, 561);
INSERT INTO public.games VALUES (18, 4, 155, 156);
INSERT INTO public.games VALUES (19, 1, 482, 14);
INSERT INTO public.games VALUES (20, 1, 110, 32);
INSERT INTO public.games VALUES (21, 6, 499, 500);
INSERT INTO public.games VALUES (22, 6, 694, 695);
INSERT INTO public.games VALUES (23, 7, 202, 203);
INSERT INTO public.games VALUES (24, 7, 462, 463);
INSERT INTO public.games VALUES (25, 6, 597, 600);
INSERT INTO public.games VALUES (26, 6, 707, 709);
INSERT INTO public.games VALUES (27, 6, 568, 569);
INSERT INTO public.games VALUES (28, 8, 429, 430);
INSERT INTO public.games VALUES (29, 8, 858, 859);
INSERT INTO public.games VALUES (30, 9, 922, 923);
INSERT INTO public.games VALUES (31, 9, 337, 338);
INSERT INTO public.games VALUES (32, 8, 662, 665);
INSERT INTO public.games VALUES (33, 8, 323, 325);
INSERT INTO public.games VALUES (34, 8, 464, 465);
INSERT INTO public.games VALUES (36, 17, 858, 859);
INSERT INTO public.games VALUES (37, 17, 891, 892);
INSERT INTO public.games VALUES (38, 18, 452, 453);
INSERT INTO public.games VALUES (39, 18, 499, 500);
INSERT INTO public.games VALUES (40, 17, 706, 709);
INSERT INTO public.games VALUES (41, 17, 332, 333);
INSERT INTO public.games VALUES (42, 17, 490, 491);
INSERT INTO public.games VALUES (43, 1, 466, 7);
INSERT INTO public.games VALUES (44, 19, 979, 980);
INSERT INTO public.games VALUES (45, 19, 122, 123);
INSERT INTO public.games VALUES (46, 20, 566, 567);
INSERT INTO public.games VALUES (47, 20, 706, 707);
INSERT INTO public.games VALUES (48, 19, 473, 476);
INSERT INTO public.games VALUES (49, 19, 52, 53);
INSERT INTO public.games VALUES (50, 19, 787, 788);
INSERT INTO public.games VALUES (51, 21, 863, 864);
INSERT INTO public.games VALUES (52, 21, 390, 391);
INSERT INTO public.games VALUES (53, 22, 581, 582);
INSERT INTO public.games VALUES (54, 22, 419, 420);
INSERT INTO public.games VALUES (55, 21, 162, 165);
INSERT INTO public.games VALUES (56, 21, 573, 574);
INSERT INTO public.games VALUES (57, 21, 943, 944);
INSERT INTO public.games VALUES (58, 23, 277, 278);
INSERT INTO public.games VALUES (59, 23, 449, 450);
INSERT INTO public.games VALUES (60, 24, 211, 212);
INSERT INTO public.games VALUES (61, 24, 261, 262);
INSERT INTO public.games VALUES (62, 23, 795, 798);
INSERT INTO public.games VALUES (63, 23, 899, 900);
INSERT INTO public.games VALUES (64, 23, 680, 681);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Link');
INSERT INTO public.users VALUES (2, 'user_1742411632448');
INSERT INTO public.users VALUES (3, 'user_1742411632447');
INSERT INTO public.users VALUES (4, 'user_1742412125240');
INSERT INTO public.users VALUES (5, 'user_1742412125239');
INSERT INTO public.users VALUES (6, 'user_1742412469103');
INSERT INTO public.users VALUES (7, 'user_1742412469102');
INSERT INTO public.users VALUES (8, 'user_1742412535502');
INSERT INTO public.users VALUES (9, 'user_1742412535501');
INSERT INTO public.users VALUES (10, 'user_1742413061051');
INSERT INTO public.users VALUES (12, 'user_1742413061050');
INSERT INTO public.users VALUES (17, 'user_1742413088922');
INSERT INTO public.users VALUES (18, 'user_1742413088921');
INSERT INTO public.users VALUES (19, 'user_1742413193978');
INSERT INTO public.users VALUES (20, 'user_1742413193977');
INSERT INTO public.users VALUES (21, 'user_1742413238978');
INSERT INTO public.users VALUES (22, 'user_1742413238977');
INSERT INTO public.users VALUES (23, 'user_1742413296154');
INSERT INTO public.users VALUES (24, 'user_1742413296153');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


--
-- Name: users users_user_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_id_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

