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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    secret_number integer NOT NULL,
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
    username character varying(30)
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

INSERT INTO public.games VALUES (1, 18, 456, 0);
INSERT INTO public.games VALUES (2, 18, 430, 0);
INSERT INTO public.games VALUES (3, 19, 276, 0);
INSERT INTO public.games VALUES (4, 19, 92, 0);
INSERT INTO public.games VALUES (5, 18, 487, 0);
INSERT INTO public.games VALUES (6, 18, 745, 1);
INSERT INTO public.games VALUES (7, 18, 622, 0);
INSERT INTO public.games VALUES (8, 20, 296, 296);
INSERT INTO public.games VALUES (9, 20, 502, 502);
INSERT INTO public.games VALUES (10, 21, 284, 284);
INSERT INTO public.games VALUES (11, 21, 793, 793);
INSERT INTO public.games VALUES (12, 20, 872, 874);
INSERT INTO public.games VALUES (13, 20, 137, 138);
INSERT INTO public.games VALUES (14, 20, 125, 125);
INSERT INTO public.games VALUES (15, 22, 929, 930);
INSERT INTO public.games VALUES (16, 22, 505, 506);
INSERT INTO public.games VALUES (17, 23, 968, 969);
INSERT INTO public.games VALUES (18, 23, 622, 623);
INSERT INTO public.games VALUES (19, 22, 729, 732);
INSERT INTO public.games VALUES (20, 22, 654, 656);
INSERT INTO public.games VALUES (21, 22, 232, 233);
INSERT INTO public.games VALUES (22, 24, 169, 170);
INSERT INTO public.games VALUES (23, 24, 968, 969);
INSERT INTO public.games VALUES (24, 25, 450, 451);
INSERT INTO public.games VALUES (25, 25, 936, 937);
INSERT INTO public.games VALUES (26, 24, 450, 453);
INSERT INTO public.games VALUES (27, 24, 943, 945);
INSERT INTO public.games VALUES (28, 24, 389, 390);
INSERT INTO public.games VALUES (29, 26, 551, 552);
INSERT INTO public.games VALUES (30, 26, 805, 806);
INSERT INTO public.games VALUES (31, 27, 303, 304);
INSERT INTO public.games VALUES (32, 27, 698, 699);
INSERT INTO public.games VALUES (33, 26, 807, 810);
INSERT INTO public.games VALUES (34, 26, 45, 47);
INSERT INTO public.games VALUES (35, 26, 738, 739);
INSERT INTO public.games VALUES (36, 28, 354, 355);
INSERT INTO public.games VALUES (37, 28, 305, 306);
INSERT INTO public.games VALUES (38, 29, 438, 439);
INSERT INTO public.games VALUES (39, 29, 380, 381);
INSERT INTO public.games VALUES (40, 28, 712, 715);
INSERT INTO public.games VALUES (41, 28, 843, 845);
INSERT INTO public.games VALUES (42, 28, 693, 694);
INSERT INTO public.games VALUES (43, 30, 376, 377);
INSERT INTO public.games VALUES (44, 30, 140, 141);
INSERT INTO public.games VALUES (45, 31, 272, 273);
INSERT INTO public.games VALUES (46, 31, 44, 45);
INSERT INTO public.games VALUES (47, 30, 431, 434);
INSERT INTO public.games VALUES (48, 30, 664, 666);
INSERT INTO public.games VALUES (49, 30, 430, 431);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1735499195688');
INSERT INTO public.users VALUES (2, 'user_1735499195687');
INSERT INTO public.users VALUES (3, 'user_1735499592423');
INSERT INTO public.users VALUES (4, 'user_1735499592422');
INSERT INTO public.users VALUES (5, 'user_1735499622732');
INSERT INTO public.users VALUES (6, 'user_1735499622731');
INSERT INTO public.users VALUES (7, 'user_1735499664427');
INSERT INTO public.users VALUES (8, 'user_1735499664426');
INSERT INTO public.users VALUES (9, 'user_1735499684071');
INSERT INTO public.users VALUES (10, 'user_1735499684070');
INSERT INTO public.users VALUES (11, 'user_1735499752602');
INSERT INTO public.users VALUES (12, 'user_1735499752601');
INSERT INTO public.users VALUES (13, 'peter');
INSERT INTO public.users VALUES (14, 'user_1735499966288');
INSERT INTO public.users VALUES (15, 'user_1735499966287');
INSERT INTO public.users VALUES (16, 'user_1735500068314');
INSERT INTO public.users VALUES (17, 'user_1735500068313');
INSERT INTO public.users VALUES (18, 'user_1735500444008');
INSERT INTO public.users VALUES (19, 'user_1735500444007');
INSERT INTO public.users VALUES (20, 'user_1735500462117');
INSERT INTO public.users VALUES (21, 'user_1735500462116');
INSERT INTO public.users VALUES (22, 'user_1735500467507');
INSERT INTO public.users VALUES (23, 'user_1735500467506');
INSERT INTO public.users VALUES (24, 'user_1735500653356');
INSERT INTO public.users VALUES (25, 'user_1735500653355');
INSERT INTO public.users VALUES (26, 'user_1735500782304');
INSERT INTO public.users VALUES (27, 'user_1735500782303');
INSERT INTO public.users VALUES (28, 'user_1735500793867');
INSERT INTO public.users VALUES (29, 'user_1735500793866');
INSERT INTO public.users VALUES (30, 'user_1735501057423');
INSERT INTO public.users VALUES (31, 'user_1735501057422');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 49, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 31, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

