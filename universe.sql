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
    name character varying(255) NOT NULL,
    distance_from_earth integer,
    has_life boolean NOT NULL,
    age_in_millions_of_years numeric
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
    name character varying(255) NOT NULL,
    planet_id integer NOT NULL,
    distance_from_planet integer,
    has_life boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon1; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon1 (
    moon1_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer NOT NULL,
    distance_from_planet integer,
    has_life boolean NOT NULL
);


ALTER TABLE public.moon1 OWNER TO freecodecamp;

--
-- Name: moon1_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon1_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon1_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon1_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon1_moon_id_seq OWNED BY public.moon1.moon1_id;


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
    name character varying(255) NOT NULL,
    star_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    planet_types text
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
    name character varying(255) NOT NULL,
    galaxy_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric
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
-- Name: moon1 moon1_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon1 ALTER COLUMN moon1_id SET DEFAULT nextval('public.moon1_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, false, 13700);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, false, 9000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000000, false, 13000);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 12000000, false, 6000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 23000000, false, 4000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 31000000, false, 11000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 384400, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 6000, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 20000, false);
INSERT INTO public.moon VALUES (4, 'Io', 4, 421700, false);
INSERT INTO public.moon VALUES (5, 'Europa', 4, 671000, false);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4, 1070400, false);
INSERT INTO public.moon VALUES (7, 'Callisto', 4, 1882700, false);
INSERT INTO public.moon VALUES (8, 'Titan', 5, 1221850, false);
INSERT INTO public.moon VALUES (9, 'Rhea', 5, 527040, false);
INSERT INTO public.moon VALUES (10, 'Iapetus', 5, 3561300, false);
INSERT INTO public.moon VALUES (11, 'Miranda', 8, 129390, false);
INSERT INTO public.moon VALUES (12, 'Ariel', 8, 191020, false);
INSERT INTO public.moon VALUES (13, 'Umbriel', 8, 266000, false);
INSERT INTO public.moon VALUES (14, 'Oberon', 8, 583520, false);
INSERT INTO public.moon VALUES (15, 'Titania', 8, 435910, false);
INSERT INTO public.moon VALUES (16, 'Triton', 6, 354760, false);
INSERT INTO public.moon VALUES (17, 'Nereid', 6, 5513810, false);
INSERT INTO public.moon VALUES (18, 'Charon', 9, 19571, false);
INSERT INTO public.moon VALUES (19, 'Styx', 9, 42656, false);
INSERT INTO public.moon VALUES (20, 'Nix', 9, 48694, false);


--
-- Data for Name: moon1; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon1 VALUES (1, 'Moon', 1, 384400, false);
INSERT INTO public.moon1 VALUES (2, 'Phobos', 2, 6000, false);
INSERT INTO public.moon1 VALUES (3, 'Deimos', 2, 20000, false);
INSERT INTO public.moon1 VALUES (4, 'Io', 4, 421700, false);
INSERT INTO public.moon1 VALUES (5, 'Europa', 4, 671000, false);
INSERT INTO public.moon1 VALUES (6, 'Ganymede', 4, 1070400, false);
INSERT INTO public.moon1 VALUES (7, 'Callisto', 4, 1882700, false);
INSERT INTO public.moon1 VALUES (8, 'Titan', 5, 1221850, false);
INSERT INTO public.moon1 VALUES (9, 'Rhea', 5, 527040, false);
INSERT INTO public.moon1 VALUES (10, 'Iapetus', 5, 3561300, false);
INSERT INTO public.moon1 VALUES (11, 'Miranda', 8, 129390, false);
INSERT INTO public.moon1 VALUES (12, 'Ariel', 8, 191020, false);
INSERT INTO public.moon1 VALUES (13, 'Umbriel', 8, 266000, false);
INSERT INTO public.moon1 VALUES (14, 'Oberon', 8, 583520, false);
INSERT INTO public.moon1 VALUES (15, 'Titania', 8, 435910, false);
INSERT INTO public.moon1 VALUES (16, 'Triton', 6, 354760, false);
INSERT INTO public.moon1 VALUES (17, 'Nereid', 6, 5513810, false);
INSERT INTO public.moon1 VALUES (18, 'Charon', 9, 19571, false);
INSERT INTO public.moon1 VALUES (19, 'Styx', 9, 42656, false);
INSERT INTO public.moon1 VALUES (20, 'Nix', 9, 48694, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 'Terrestrial');
INSERT INTO public.planet VALUES (2, 'Mars', 1, true, 'Terrestrial');
INSERT INTO public.planet VALUES (3, 'Venus', 1, true, 'Terrestrial');
INSERT INTO public.planet VALUES (4, 'Jupiter', 1, true, 'Gas Giant');
INSERT INTO public.planet VALUES (5, 'Saturn', 1, true, 'Gas Giant');
INSERT INTO public.planet VALUES (6, 'Neptune', 1, true, 'Ice Giant');
INSERT INTO public.planet VALUES (7, 'Mercury', 1, true, 'Terrestrial');
INSERT INTO public.planet VALUES (8, 'Uranus', 1, true, 'Ice Giant');
INSERT INTO public.planet VALUES (9, 'Pluto', 1, true, 'Dwarf');
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 2, true, 'Exoplanet');
INSERT INTO public.planet VALUES (11, 'Proxima b', 3, true, 'Exoplanet');
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 3, true, 'Exoplanet');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, 4600);
INSERT INTO public.star VALUES (2, 'Sirius', 1, true, 242);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 1, true, 5400);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, true, 8000);
INSERT INTO public.star VALUES (5, 'Vega', 1, true, 455);
INSERT INTO public.star VALUES (6, 'Rigel', 1, true, 7000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon1_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon1_moon_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


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
-- Name: moon1 moon1_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon1
    ADD CONSTRAINT moon1_name_key UNIQUE (name);


--
-- Name: moon1 moon1_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon1
    ADD CONSTRAINT moon1_pkey PRIMARY KEY (moon1_id);


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
-- Name: moon1 moon1_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon1
    ADD CONSTRAINT moon1_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

