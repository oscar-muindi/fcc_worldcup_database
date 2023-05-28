--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (161, 2018, 'Final', 4, 2, 806, 807);
INSERT INTO public.games VALUES (162, 2018, 'Third Place', 2, 0, 808, 809);
INSERT INTO public.games VALUES (163, 2018, 'Semi-Final', 2, 1, 807, 809);
INSERT INTO public.games VALUES (164, 2018, 'Semi-Final', 1, 0, 806, 808);
INSERT INTO public.games VALUES (165, 2018, 'Quarter-Final', 3, 2, 807, 810);
INSERT INTO public.games VALUES (166, 2018, 'Quarter-Final', 2, 0, 809, 811);
INSERT INTO public.games VALUES (167, 2018, 'Quarter-Final', 2, 1, 808, 812);
INSERT INTO public.games VALUES (168, 2018, 'Quarter-Final', 2, 0, 806, 813);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 2, 1, 809, 814);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 1, 0, 811, 815);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 3, 2, 808, 816);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 2, 0, 812, 817);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 2, 1, 807, 818);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 2, 1, 810, 819);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 2, 1, 813, 820);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 4, 3, 806, 821);
INSERT INTO public.games VALUES (177, 2014, 'Final', 1, 0, 822, 821);
INSERT INTO public.games VALUES (178, 2014, 'Third Place', 3, 0, 823, 812);
INSERT INTO public.games VALUES (179, 2014, 'Semi-Final', 1, 0, 821, 823);
INSERT INTO public.games VALUES (180, 2014, 'Semi-Final', 7, 1, 822, 812);
INSERT INTO public.games VALUES (181, 2014, 'Quarter-Final', 1, 0, 823, 824);
INSERT INTO public.games VALUES (182, 2014, 'Quarter-Final', 1, 0, 821, 808);
INSERT INTO public.games VALUES (183, 2014, 'Quarter-Final', 2, 1, 812, 814);
INSERT INTO public.games VALUES (184, 2014, 'Quarter-Final', 1, 0, 822, 806);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 2, 1, 812, 825);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 2, 0, 814, 813);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 2, 0, 806, 826);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 2, 1, 822, 827);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 2, 1, 823, 817);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 2, 1, 824, 828);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 1, 0, 821, 815);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 2, 1, 808, 829);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (806, 'France');
INSERT INTO public.teams VALUES (807, 'Croatia');
INSERT INTO public.teams VALUES (808, 'Belgium');
INSERT INTO public.teams VALUES (809, 'England');
INSERT INTO public.teams VALUES (810, 'Russia');
INSERT INTO public.teams VALUES (811, 'Sweden');
INSERT INTO public.teams VALUES (812, 'Brazil');
INSERT INTO public.teams VALUES (813, 'Uruguay');
INSERT INTO public.teams VALUES (814, 'Colombia');
INSERT INTO public.teams VALUES (815, 'Switzerland');
INSERT INTO public.teams VALUES (816, 'Japan');
INSERT INTO public.teams VALUES (817, 'Mexico');
INSERT INTO public.teams VALUES (818, 'Denmark');
INSERT INTO public.teams VALUES (819, 'Spain');
INSERT INTO public.teams VALUES (820, 'Portugal');
INSERT INTO public.teams VALUES (821, 'Argentina');
INSERT INTO public.teams VALUES (822, 'Germany');
INSERT INTO public.teams VALUES (823, 'Netherlands');
INSERT INTO public.teams VALUES (824, 'Costa Rica');
INSERT INTO public.teams VALUES (825, 'Chile');
INSERT INTO public.teams VALUES (826, 'Nigeria');
INSERT INTO public.teams VALUES (827, 'Algeria');
INSERT INTO public.teams VALUES (828, 'Greece');
INSERT INTO public.teams VALUES (829, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);
