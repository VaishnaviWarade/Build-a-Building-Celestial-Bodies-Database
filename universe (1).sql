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
    name character varying(30) NOT NULL,
    galaxy_types integer,
    galaxy_age integer NOT NULL,
    galaxy_distance_from_earth numeric,
    galaxy_description text,
    galaxy_is_spherical boolean,
    galaxy_has_life boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_types integer,
    moon_age integer NOT NULL,
    moon_distance_from_earth numeric,
    moon_description text,
    moon_is_spherical boolean,
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
-- Name: mytable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mytable (
    mytable_id integer NOT NULL,
    name character varying(30) NOT NULL,
    hobby text,
    age integer NOT NULL,
    contact integer
);


ALTER TABLE public.mytable OWNER TO freecodecamp;

--
-- Name: mytable_my_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mytable_my_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mytable_my_id_seq OWNER TO freecodecamp;

--
-- Name: mytable_my_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mytable_my_id_seq OWNED BY public.mytable.mytable_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_types integer,
    planet_age integer NOT NULL,
    planet_distance_from_earth numeric,
    planet_description text,
    planet_is_spherical boolean,
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
    name character varying(30) NOT NULL,
    star_types integer,
    star_age integer NOT NULL,
    star_distance_from_earth numeric,
    star_description text,
    star_is_spherical boolean,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: mytable mytable_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mytable ALTER COLUMN mytable_id SET DEFAULT nextval('public.mytable_my_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 3, 500, 5600.7, 'An amazing galaxy andromeda', true, false);
INSERT INTO public.galaxy VALUES (2, 'Alesa', 5, 9900, 8600.7, 'An amazing galaxy alesa', true, false);
INSERT INTO public.galaxy VALUES (3, 'Volva', 4, 700, 4600.2, 'Amazing galaxy volva', false, true);
INSERT INTO public.galaxy VALUES (4, 'Moraka', 7, 3500, 23865.90, 'Amazing galaxy Moraka', false, true);
INSERT INTO public.galaxy VALUES (5, 'Yomay', 2, 4000, 2450.45, 'Amazing galaxy yomay', true, true);
INSERT INTO public.galaxy VALUES (6, 'Neo', 6, 320, 4560.3, 'Amazing galaxy neo', true, true);
INSERT INTO public.galaxy VALUES (7, 'Reforda', 4, 350, 3400.54, 'AN Amazing galaxy reforda', true, false);
INSERT INTO public.galaxy VALUES (8, 'Alpha Century', 2, 4500, 2300.68, 'An Amazing galaxy alpha', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'mmon1', 1, 100, 1000.50, 'moon1 moon', true, 20);
INSERT INTO public.moon VALUES (2, 'moon2', 2, 200, 2000.50, 'moon2 moon', false, 19);
INSERT INTO public.moon VALUES (3, 'moon3', 3, 300, 3000.50, 'moon3 moon', false, 18);
INSERT INTO public.moon VALUES (4, 'moon4', 4, 400, 4000.50, 'moon4 moon', true, 17);
INSERT INTO public.moon VALUES (5, 'moon5', 5, 500, 5000.50, 'moon5 moon', false, 16);
INSERT INTO public.moon VALUES (6, 'moon6', 6, 600, 6000.50, 'moon6 moon', true, 15);
INSERT INTO public.moon VALUES (7, 'moon7', 7, 700, 7000.50, 'moon7 moon', false, 14);
INSERT INTO public.moon VALUES (8, 'moon8', 8, 800, 8000.50, 'moon8 moon', true, 13);
INSERT INTO public.moon VALUES (9, 'moon9', 9, 900, 9000.50, 'moon9 moon', false, 12);
INSERT INTO public.moon VALUES (10, 'moon10', 10, 1000, 10000.50, 'moon10 moon', true, 11);
INSERT INTO public.moon VALUES (11, 'moon11', 1, 1100, 11000.50, 'moon11 moon', false, 10);
INSERT INTO public.moon VALUES (12, 'moon12', 2, 1200, 12000.50, 'moon12 moon', true, 9);
INSERT INTO public.moon VALUES (13, 'moon13', 3, 1300, 13000.50, 'moon13 moon', false, 1);
INSERT INTO public.moon VALUES (14, 'moon14', 4, 1400, 14000.50, 'moon 14 moon', true, 20);
INSERT INTO public.moon VALUES (15, 'moon15', 5, 1500, 15000.50, 'moon 15 moon', false, 19);
INSERT INTO public.moon VALUES (16, 'moon16', 6, 1600, 16000.50, 'moon 16 moon', true, 19);
INSERT INTO public.moon VALUES (17, 'moon17', 7, 1700, 17000.50, 'moon 17 moon', false, 18);
INSERT INTO public.moon VALUES (18, 'moon18', 8, 1800, 18000.50, 'moon 18 moon', true, 17);
INSERT INTO public.moon VALUES (19, 'moon19', 9, 1900, 19000.50, 'moon 19 moon', true, 15);
INSERT INTO public.moon VALUES (20, 'moon20', 4, 2000, 20000.50, 'moon 20 moon', false, 9);


--
-- Data for Name: mytable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mytable VALUES (1, 'vaish', 'dance', 23, 659);
INSERT INTO public.mytable VALUES (2, 'krish', 'song', 18, 453);
INSERT INTO public.mytable VALUES (3, 'mum', 'draw', 34, 5678);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 1, 100, 20000.40, 'planet 1 rocks', true, 5);
INSERT INTO public.planet VALUES (9, 'planet2', 2, 200, 3000.45, 'planet 2 rocks', false, 4);
INSERT INTO public.planet VALUES (10, 'planet3', 3, 300, 6500.45, 'planet 3 rocks', true, 3);
INSERT INTO public.planet VALUES (11, 'planet4', 4, 400, 5600.34, 'planet 4 rocks', false, 6);
INSERT INTO public.planet VALUES (12, 'planet5', 5, 500, 8700.34, 'planet 5 rocks', true, 5);
INSERT INTO public.planet VALUES (13, 'planet6', 6, 600, 4500.37, 'planet 6 rocks', false, 2);
INSERT INTO public.planet VALUES (14, 'planet7', 7, 700, 7600.45, 'planet 7 rocks', true, 3);
INSERT INTO public.planet VALUES (15, 'planet8', 8, 800, 6590.34, 'planet 8 rocks', false, 5);
INSERT INTO public.planet VALUES (16, 'planet9', 9, 900, 3000.45, 'planet 9 rocks', false, 1);
INSERT INTO public.planet VALUES (17, 'planet10', 10, 1000, 6500.45, 'planet 10 rocks', true, 3);
INSERT INTO public.planet VALUES (18, 'planet11', 10, 150, 5600.34, 'planet 10 rocks', false, 6);
INSERT INTO public.planet VALUES (19, 'plane11', 5, 250, 8700.34, 'planet11 rocks', true, 5);
INSERT INTO public.planet VALUES (20, 'planet12', 6, 360, 4500.37, 'planet 12 rocks', false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 2, 400, 5600.56, 'Star 1 rocks', true, 4);
INSERT INTO public.star VALUES (2, 'star2', 3, 500, 6700.5, 'star2 rocks', false, 3);
INSERT INTO public.star VALUES (3, 'star3', 4, 650, 3400.56, 'star3 rocks', false, 7);
INSERT INTO public.star VALUES (4, 'star4', 5, 340, 2300, 'star 4 rocks', true, 3);
INSERT INTO public.star VALUES (5, 'star5', 7, 320, 5400.20, 'star 5 rocks', true, 5);
INSERT INTO public.star VALUES (6, 'star6', 3, 200, 4500.34, 'star 6 rocks', true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: mytable_my_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mytable_my_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age UNIQUE (moon_age);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: mytable mytable_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mytable
    ADD CONSTRAINT mytable_name_key UNIQUE (name);


--
-- Name: mytable mytable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mytable
    ADD CONSTRAINT mytable_pkey PRIMARY KEY (mytable_id);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_age; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age UNIQUE (planet_age);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age UNIQUE (star_age);


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

