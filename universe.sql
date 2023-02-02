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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    galaxy_type integer NOT NULL,
    milky boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life (
    life_id integer NOT NULL,
    name character varying(50) NOT NULL,
    quantity integer
);


ALTER TABLE public.life OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_life_id_seq OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_life_id_seq OWNED BY public.life.life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    moon_type integer NOT NULL,
    rock_type integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    planet_type integer NOT NULL,
    number_of_moons numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    star_type integer NOT NULL,
    color boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: life life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life ALTER COLUMN life_id SET DEFAULT nextval('public.life_life_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky_way', 'milky', 1, true);
INSERT INTO public.galaxy VALUES (2, 'milky_ways', 'milkys', 1, true);
INSERT INTO public.galaxy VALUES (3, 'milky_wayds', 'milkdys', 1, true);
INSERT INTO public.galaxy VALUES (4, 'ilky_wayds', 'ilkdys', 1, true);
INSERT INTO public.galaxy VALUES (5, 'ilky_waydvs', 'ilkddys', 1, true);
INSERT INTO public.galaxy VALUES (6, 'ilky_wafydvs', 'ilkfddys', 3, false);


--
-- Data for Name: life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life VALUES (1, 'tron', 23);
INSERT INTO public.life VALUES (2, 'hors', 23);
INSERT INTO public.life VALUES (3, 'osdf', 23);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (2, 'dmoon', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (3, 'dmoodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (4, 'dmdoodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (5, 'ddmdoodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (6, 'ddmddoodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (7, 'ddmddogodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (8, 'ddmdddogodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (9, 'ddmdddeogodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (10, 'ddmdddeoggodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (11, 'ddmdddeogggodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (12, 'ddmdddeoggggodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (13, 'ddmdddeogrgggodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (14, 'ddmdddeogrghggodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (15, 'ddmdddeogrdghggodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (16, 'ddmdddeogrdghhggodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (17, 'ddmdddeogrdeghhggodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (18, 'ddmdddeogrdegjhhggodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (19, 'ddmdddeogrdegjrhhggodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (20, 'ddmdddeogrdegjrhjhggodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (21, 'ddmdddeogrdegjrhjfhggodn', 'rocky', 2, 1, NULL);
INSERT INTO public.moon VALUES (22, 'ddmdddeogrdegjrhjfhfggodn', 'rocky', 2, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 'rocky', 2, 1, NULL);
INSERT INTO public.planet VALUES (2, 'eartfh', 'rfocky', 2, 1, NULL);
INSERT INTO public.planet VALUES (3, 'eardtfh', 'rfockyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (4, 'earhdtfh', 'rfockhyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (5, 'earhasdtfh', 'rfockhhyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (6, 'earhahsdtfh', 'rfockhehyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (7, 'earhajhsdtfh', 'rfockhehhyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (8, 'earhaajhsdtfh', 'rfocfkhehhyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (9, 'earhaajhhsdtfh', 'rfocfkhhehhyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (10, 'earhaajhhshdtfh', 'rfocfkhhehhhyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (11, 'earhaajhheshdtfh', 'rfocfkhhehhhhyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (12, 'earhaajhhetshdtfh', 'rfocfkhhvehhhhyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (13, 'earhaajhhettshdtfh', 'rfocfkhhvtehhhhyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (14, 'earhaajhhettushdtfh', 'rfocfkhhvtehhhhyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (15, 'earhaajhhettnushdtfh', 'rfocfkhhvtehhhhyf', 2, 1, NULL);
INSERT INTO public.planet VALUES (16, 'earhaajhhettrnushdtfh', 'rfocfkhhvtehhhhyf', 2, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'hot', 1, true, NULL);
INSERT INTO public.star VALUES (2, 'sund', 'hodt', 1, true, NULL);
INSERT INTO public.star VALUES (3, 'sunde', 'hoedt', 1, true, NULL);
INSERT INTO public.star VALUES (4, 'sundey', 'hoedyt', 1, true, NULL);
INSERT INTO public.star VALUES (5, 'sunrdey', 'hoyedyt', 1, true, NULL);
INSERT INTO public.star VALUES (6, 'sunrgdey', 'hogyedyt', 3, true, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_life_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life life_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_name_key UNIQUE (name);


--
-- Name: life life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_pkey PRIMARY KEY (life_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
