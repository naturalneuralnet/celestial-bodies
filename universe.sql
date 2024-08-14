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

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UT
F-8' LC_CTYPE = 'C.UTF-8';


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
    galaxy_type text,
    name character varying(30) NOT NULL,
    age_in_billions_of_years integer,
    constellation text
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
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecode
camp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    is_spherical boolean NOT NULL,
    is_tidal_locked boolean NOT NULL,
    name character varying(30)
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
    number_of_moons integer,
    star_id integer,
    has_moon boolean NOT NULL,
    name character varying(30)
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
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecode
camp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    age_in_billions_of_years integer,
    distance_from_earth_in_au numeric,
    type text
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
-- Name: system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.system (
    name character varying(30) NOT NULL,
    number_of_planets integer,
    system_id integer NOT NULL
);


ALTER TABLE public.system OWNER TO freecodecamp;

--
-- Name: system_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.system_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_system_id_seq OWNER TO freecodecamp;

--
-- Name: system_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecode
camp
--

ALTER SEQUENCE public.system_system_id_seq OWNED BY public.system.system_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galax
y_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon
_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.plane
t_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star
_id_seq'::regclass);


--
-- Name: system system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system ALTER COLUMN system_id SET DEFAULT nextval('public.syste
m_system_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Spiral', 'Milky Way', 13, 'Milky River');
INSERT INTO public.galaxy VALUES (2, 'Spiral', 'Andromeda', 10, 'Andromedas');
INSERT INTO public.galaxy VALUES (3, 'Elliptical', 'Hercules A', 9, 'Hercules');
INSERT INTO public.galaxy VALUES (4, 'Seyfert', 'Black Eye', 13, 'Coma Berencies');
INSERT INTO public.galaxy VALUES (5, 'Spiral', 'Butterfly', 12, 'Virgo');
INSERT INTO public.galaxy VALUES (6, 'Spiral', 'Pinwheel', 8, 'Ursa Major');
INSERT INTO public.galaxy VALUES (7, 'Elliptical', 'Sombrero', 12, 'Virgo');
INSERT INTO public.galaxy VALUES (8, 'Spiral', 'Tadpole', 14, 'Draco');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, true, true, 'Moon');
INSERT INTO public.moon VALUES (2, 4, false, true, 'Phobos');
INSERT INTO public.moon VALUES (3, 4, false, true, 'Deimos');
INSERT INTO public.moon VALUES (4, 5, true, true, 'Ganymede');
INSERT INTO public.moon VALUES (5, 5, true, true, 'Callisto');
INSERT INTO public.moon VALUES (6, 5, true, true, 'Io');
INSERT INTO public.moon VALUES (7, 5, true, true, 'Europa');
INSERT INTO public.moon VALUES (8, 6, true, true, 'Titan');
INSERT INTO public.moon VALUES (9, 6, true, true, 'Enceladus');
INSERT INTO public.moon VALUES (10, 6, false, false, 'Hyperion');
INSERT INTO public.moon VALUES (11, 6, false, true, 'Prometheus');
INSERT INTO public.moon VALUES (12, 7, true, true, 'Miranda');
INSERT INTO public.moon VALUES (13, 7, true, true, 'Oberon');
INSERT INTO public.moon VALUES (14, 7, true, true, 'Titania');
INSERT INTO public.moon VALUES (15, 8, true, true, 'Triton');
INSERT INTO public.moon VALUES (16, 9, true, true, 'Charon');
INSERT INTO public.moon VALUES (17, 9, false, true, 'Nyx');
INSERT INTO public.moon VALUES (18, 9, false, true, 'Hydra');
INSERT INTO public.moon VALUES (19, 9, false, true, 'Kerberos');
INSERT INTO public.moon VALUES (20, 9, false, true, 'Styx');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 0, 1, false, 'Mercury');
INSERT INTO public.planet VALUES (2, 0, 1, false, 'Venus');
INSERT INTO public.planet VALUES (3, 1, 1, true, 'Earth');
INSERT INTO public.planet VALUES (4, 2, 1, true, 'Mars');
INSERT INTO public.planet VALUES (5, 95, 1, true, 'Jupiter');
INSERT INTO public.planet VALUES (6, 146, 1, true, 'Saturn');
INSERT INTO public.planet VALUES (7, 28, 1, true, 'Uranus');
INSERT INTO public.planet VALUES (8, 16, 1, true, 'Neptune');
INSERT INTO public.planet VALUES (9, 5, 1, true, 'Pluto');
INSERT INTO public.planet VALUES (10, 0, 2, false, 'Dagon');
INSERT INTO public.planet VALUES (11, 0, 3, false, 'Neri');
INSERT INTO public.planet VALUES (12, 0, 4, false, 'Su');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, 4, 1.0, 'Yellow Dwarf');
INSERT INTO public.star VALUES (2, 'Proxima', 1, 7, 4.24, 'Red Dwarf');
INSERT INTO public.star VALUES (3, 'Tau Ceti', 1, 12, 12.2, 'Yellow Dwarf');
INSERT INTO public.star VALUES (4, 'VV Cephei', 2, 2, 300.0, 'Red Giant');
INSERT INTO public.star VALUES (5, 'Sirius', 1, 3, 8.0, 'Binary');
INSERT INTO public.star VALUES (6, 'Altair', 1, 1, 16.0, 'White Dwarf');


--
-- Data for Name: system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.system VALUES ('Sol', 9, 1);
INSERT INTO public.system VALUES ('Alpha Centuari', 5, 2);
INSERT INTO public.system VALUES ('Kepler', 1, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: system_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.system_system_id_seq', 1, false);


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
-- Name: system system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_name_key UNIQUE (name);


--
-- Name: system system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_pkey PRIMARY KEY (system_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecode
camp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet
(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freeco
decamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(sta
r_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecode
camp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy
(galaxy_id);


--
-- PostgreSQL database dump complete
--