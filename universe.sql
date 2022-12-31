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

-- DROP DATABASE universe;
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
    name character varying(50),
    age_in_million_of_years integer,
    distance_from_earth_light_years integer,
    magnitude numeric(6,1),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
    name character varying(50),
    age_in_million_of_years integer,
    distance_from_earth integer,
    radio numeric(6,1),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(50),
    age_in_million_of_years integer,
    density integer,
    radio numeric(6,1),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    star_id integer NOT NULL
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
-- Name: satellites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellites (
    satellites_id integer NOT NULL,
    name character varying(50),
    year_of_launch integer,
    distance_from_earth integer,
    diameter numeric(6,1),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.satellites OWNER TO freecodecamp;

--
-- Name: satellites_satellites_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellites_satellites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellites_satellites_id_seq OWNER TO freecodecamp;

--
-- Name: satellites_satellites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellites_satellites_id_seq OWNED BY public.satellites.satellites_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    age_in_million_of_years integer,
    distance_from_earth_light_years integer,
    magnitude numeric(6,1),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satellites satellites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites ALTER COLUMN satellites_id SET DEFAULT nextval('public.satellites_satellites_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 13000, 25800, -20.9, 'Our galaxy', true, false);
INSERT INTO public.galaxy VALUES (2, 'Enana del Can Mayor', 4000, 25000, -14.6, 'Nearest galaxy', false, false);
INSERT INTO public.galaxy VALUES (3, 'SagDEG', NULL, 70000, 4.5, 'ancient galaxy', false, false);
INSERT INTO public.galaxy VALUES (4, 'LMC', 1101, 158200, NULL, 'third nearest galaxy', false, false);
INSERT INTO public.galaxy VALUES (5, 'NGC 292', NULL, 199000, -17.1, 'Smaller than Via Lactea', false, false);
INSERT INTO public.galaxy VALUES (6, 'Messier 104', 1325, 2935, -21.8, 'It is like a hat', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 453, 384400, 1737.4, 'Earth', false, false, 6);
INSERT INTO public.moon VALUES (2, 'Fobos', 4503, 77000000, 11267.0, 'First moon', false, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 4503, 77000000, 6.2, 'Second moon', false, false, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 4503, 628000000, 1560.8, 'Sixth moon', false, false, 3);
INSERT INTO public.moon VALUES (6, 'Calisto', 4503, 628000000, 2410.3, 'Jupiter-s second moon', false, false, 3);
INSERT INTO public.moon VALUES (7, 'Ganimedes', 4503, 628000000, 2634.1, 'Biggest moon', false, false, 3);
INSERT INTO public.moon VALUES (8, 'Io', NULL, 628000000, 1821.6, 'High density', false, false, 3);
INSERT INTO public.moon VALUES (9, 'Mimas', NULL, 1272000000, 198.2, 'Saturno I', false, false, 7);
INSERT INTO public.moon VALUES (10, 'Encelado', NULL, 1272000000, 252.1, 'Biggest of Saturno', false, false, 7);
INSERT INTO public.moon VALUES (11, 'Tetis', NULL, 1272000000, 531.0, '5th biggest of Saturno', false, false, 7);
INSERT INTO public.moon VALUES (13, 'Titan', 4003, 1200570624, 2574.7, '2nd biggest', false, false, 7);
INSERT INTO public.moon VALUES (14, 'Miranda', NULL, NULL, 235.8, 'Urano I', false, false, 8);
INSERT INTO public.moon VALUES (15, 'Titania', NULL, NULL, 788.4, 'Urano III', false, false, 8);
INSERT INTO public.moon VALUES (16, 'Oberon', NULL, NULL, 761.4, 'Urano IV', false, false, 8);
INSERT INTO public.moon VALUES (17, 'Umbriel', NULL, NULL, 584.7, 'darkest', false, false, 8);
INSERT INTO public.moon VALUES (18, 'Ariel', NULL, 190900, 578.9, '4th biggest in Urano', false, false, 8);
INSERT INTO public.moon VALUES (19, 'Triton', NULL, NULL, 1353.4, 'One of the coldest', false, false, 9);
INSERT INTO public.moon VALUES (20, 'Proteo', NULL, NULL, 210.0, 'Neptuno VIII', false, false, 9);
INSERT INTO public.moon VALUES (21, 'Larisa', NULL, NULL, 97.0, 'Neptuno VII', false, false, 9);
INSERT INTO public.moon VALUES (22, 'Nereida', NULL, NULL, 170.0, 'Third in size', false, false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Kepler-186f', NULL, NULL, 7454.1, 'Like earth', false, false, 6);
INSERT INTO public.planet VALUES (14, 'Kepler-62f', 7005, NULL, 8983.1, 'Extrasolar planet', false, false, 6);
INSERT INTO public.planet VALUES (1, 'Mercurio', 4503, 13534, 2439.7, 'Closest to the sun', false, true, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 4503, 5, 6051.8, 'without satellites', false, true, 7);
INSERT INTO public.planet VALUES (3, 'Jupiter', 4603, 1, 69911.0, 'biggest planet', false, true, 7);
INSERT INTO public.planet VALUES (4, 'Marte', 4603, 3, 3389.5, 'water', false, true, 7);
INSERT INTO public.planet VALUES (5, 'Ceres', 4573, 2, 473.0, 'dwarf planet', false, true, 7);
INSERT INTO public.planet VALUES (6, 'Tierra', 4543, 5, 6371.0, 'I live there', true, true, 7);
INSERT INTO public.planet VALUES (7, 'Saturno', 4503, 687, 58232.0, 'visible rings', false, true, 7);
INSERT INTO public.planet VALUES (8, 'Urano', 4503, 1, 25362.0, '3rd biggest planet', false, true, 7);
INSERT INTO public.planet VALUES (9, 'Neptuno', 4503, 1, 24622.0, 'farthest', false, true, 7);
INSERT INTO public.planet VALUES (10, 'Pluton', 90, 1, 1188.3, 'smallest', false, true, 7);


--
-- Data for Name: satellites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellites VALUES (1, 'Sputnik 1', 1957, 577, 58.0, 'first satellite', false, false, 6);
INSERT INTO public.satellites VALUES (2, 'Sputnik 2', 1957, 982, 2.0, 'radio', true, false, 6);
INSERT INTO public.satellites VALUES (3, 'Explorer 1', 1958, 1454, 15.9, 'USA', false, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirio', 300, 8611, -1.5, 'The most brilliant', false, false, 1);
INSERT INTO public.star VALUES (2, 'Canopus', NULL, 309, -5.7, 'second brightest', false, false, 1);
INSERT INTO public.star VALUES (3, 'Arturo', 7105, 36, -0.3, 'third brightest', false, false, 1);
INSERT INTO public.star VALUES (4, 'Vega', 455, 25, 0.5, 'first magnitude', false, false, 1);
INSERT INTO public.star VALUES (5, 'Capella', 525, 42, -0.4, 'In Auriga', false, false, 1);
INSERT INTO public.star VALUES (6, 'Procyon', 1701, 11, 0.4, 'Binary star', false, false, 1);
INSERT INTO public.star VALUES (7, 'Sol', 4603, 1, 4.8, 'it burns', false, false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: satellites_satellites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellites_satellites_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellites satellites_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_description_key UNIQUE (description);


--
-- Name: satellites satellites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_pkey PRIMARY KEY (satellites_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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
-- Name: satellites satellites_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

