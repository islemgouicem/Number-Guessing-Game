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
    name character varying NOT NULL,
    guess_count integer,
    user_id integer NOT NULL
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
    name character varying(23) NOT NULL
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

INSERT INTO public.games VALUES (1156, 'user_1726667316052-2024-09-18-13-48-36', 915, 474);
INSERT INTO public.games VALUES (1157, 'user_1726667316052-2024-09-18-13-48-36', NULL, 474);
INSERT INTO public.games VALUES (1158, 'user_1726667316051-2024-09-18-13-48-36', 587, 475);
INSERT INTO public.games VALUES (1159, 'user_1726667316051-2024-09-18-13-48-36', NULL, 475);
INSERT INTO public.games VALUES (1160, 'user_1726667316052-2024-09-18-13-48-36', NULL, 474);
INSERT INTO public.games VALUES (1161, 'user_1726667316052-2024-09-18-13-48-37', 230, 474);
INSERT INTO public.games VALUES (1162, 'user_1726667316052-2024-09-18-13-48-37', NULL, 474);
INSERT INTO public.games VALUES (1163, 'user_1726667372561-2024-09-18-13-49-32', 536, 476);
INSERT INTO public.games VALUES (1164, 'user_1726667372561-2024-09-18-13-49-32', NULL, 476);
INSERT INTO public.games VALUES (1165, 'user_1726667372560-2024-09-18-13-49-33', 539, 477);
INSERT INTO public.games VALUES (1166, 'user_1726667372560-2024-09-18-13-49-33', NULL, 477);
INSERT INTO public.games VALUES (1167, 'user_1726667372561-2024-09-18-13-49-33', 892, 476);
INSERT INTO public.games VALUES (1168, 'user_1726667372561-2024-09-18-13-49-33', NULL, 476);
INSERT INTO public.games VALUES (1169, 'user_1726667372561-2024-09-18-13-49-33', NULL, 476);
INSERT INTO public.games VALUES (1170, 'user_1726667414693-2024-09-18-13-50-14', 328, 478);
INSERT INTO public.games VALUES (1171, 'user_1726667414693-2024-09-18-13-50-14', NULL, 478);
INSERT INTO public.games VALUES (1172, 'user_1726667414692-2024-09-18-13-50-15', 512, 479);
INSERT INTO public.games VALUES (1173, 'user_1726667414692-2024-09-18-13-50-15', NULL, 479);
INSERT INTO public.games VALUES (1174, 'user_1726667414693-2024-09-18-13-50-15', 554, 478);
INSERT INTO public.games VALUES (1175, 'user_1726667414693-2024-09-18-13-50-15', NULL, 478);
INSERT INTO public.games VALUES (1176, 'user_1726667414693-2024-09-18-13-50-15', NULL, 478);
INSERT INTO public.games VALUES (1177, 'user_1726667578320-2024-09-18-13-52-58', 299, 480);
INSERT INTO public.games VALUES (1178, 'user_1726667578320-2024-09-18-13-52-58', NULL, 480);
INSERT INTO public.games VALUES (1179, 'user_1726667578319-2024-09-18-13-52-58', 173, 481);
INSERT INTO public.games VALUES (1180, 'user_1726667578319-2024-09-18-13-52-58', NULL, 481);
INSERT INTO public.games VALUES (1181, 'user_1726667578320-2024-09-18-13-52-59', 82, 480);
INSERT INTO public.games VALUES (1182, 'user_1726667578320-2024-09-18-13-52-59', NULL, 480);
INSERT INTO public.games VALUES (1183, 'user_1726667578320-2024-09-18-13-52-59', NULL, 480);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (474, 'user_1726667316052');
INSERT INTO public.users VALUES (475, 'user_1726667316051');
INSERT INTO public.users VALUES (476, 'user_1726667372561');
INSERT INTO public.users VALUES (477, 'user_1726667372560');
INSERT INTO public.users VALUES (478, 'user_1726667414693');
INSERT INTO public.users VALUES (479, 'user_1726667414692');
INSERT INTO public.users VALUES (480, 'user_1726667578320');
INSERT INTO public.users VALUES (481, 'user_1726667578319');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1183, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 481, true);


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

