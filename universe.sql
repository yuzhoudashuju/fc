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
    age integer,
    distance numeric,
    has_life boolean
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
    planet_id integer,
    age integer,
    has_life boolean
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
    name character varying(255) NOT NULL,
    star_id integer,
    age integer,
    has_life boolean
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
-- Name: research; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.research (
    research_id integer NOT NULL,
    research_topic text NOT NULL,
    researcher_id integer,
    name character varying(255)
);


ALTER TABLE public.research OWNER TO freecodecamp;

--
-- Name: researcher; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.researcher (
    researcher_id integer NOT NULL,
    researcher_name character varying(255) NOT NULL,
    researcher_field character varying(255),
    name character varying(255)
);


ALTER TABLE public.researcher OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    age integer,
    has_planets boolean
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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 10000, 0, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 9000, 2.537, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 7000, 3.0, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 11000, 29.35, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 8000, 23.16, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 21000, 20.92, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (41, 'Moon', 3, 4500, false);
INSERT INTO public.moon VALUES (42, 'Io', 5, 4500, false);
INSERT INTO public.moon VALUES (43, 'Europa', 5, 4500, false);
INSERT INTO public.moon VALUES (44, 'Ganymede', 5, 4500, false);
INSERT INTO public.moon VALUES (45, 'Callisto', 5, 4500, false);
INSERT INTO public.moon VALUES (46, 'Titan', 6, 4500, false);
INSERT INTO public.moon VALUES (47, 'Rhea', 6, 4500, false);
INSERT INTO public.moon VALUES (48, 'Iapetus', 6, 4500, false);
INSERT INTO public.moon VALUES (49, 'Dione', 6, 4500, false);
INSERT INTO public.moon VALUES (50, 'Tethys', 6, 4500, false);
INSERT INTO public.moon VALUES (51, 'Enceladus', 6, 4500, false);
INSERT INTO public.moon VALUES (52, 'Mimas', 6, 4500, false);
INSERT INTO public.moon VALUES (53, 'Hyperion', 6, 4500, false);
INSERT INTO public.moon VALUES (54, 'Phoebe', 6, 4500, false);
INSERT INTO public.moon VALUES (55, 'Janus', 6, 4500, false);
INSERT INTO public.moon VALUES (56, 'Epimetheus', 6, 4500, false);
INSERT INTO public.moon VALUES (57, 'Helene', 6, 4500, false);
INSERT INTO public.moon VALUES (58, 'Telesto', 6, 4500, false);
INSERT INTO public.moon VALUES (59, 'Moon 19', 6, 4500, false);
INSERT INTO public.moon VALUES (60, 'Moon 20', 6, 4500, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Mercury', 1, 4500, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 4500, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 4500, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 4500, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 4500, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 4500, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 4500, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 4500, false);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 4500, false);
INSERT INTO public.planet VALUES (10, 'Planet 9', 1, 4500, false);
INSERT INTO public.planet VALUES (11, 'Planet 10', 1, 4500, false);
INSERT INTO public.planet VALUES (12, 'Planet 11', 1, 4500, false);


--
-- Data for Name: research; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.research VALUES (1, 'Research Topic 1', 1, 'Unique Name 1');
INSERT INTO public.research VALUES (2, 'Research Topic 2', 2, 'Unique Name 2');
INSERT INTO public.research VALUES (3, 'Research Topic 3', 3, 'Unique Name 3');


--
-- Data for Name: researcher; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.researcher VALUES (1, 'Researcher 1', 'Field 1', 'Unique Name 1');
INSERT INTO public.researcher VALUES (2, 'Researcher 2', 'Field 2', 'Unique Name 2');
INSERT INTO public.researcher VALUES (3, 'Researcher 3', 'Field 3', 'Unique Name 3');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4600, true);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 200, true);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1, 5500, false);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 1, 5500, false);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 1, 4800, false);
INSERT INTO public.star VALUES (6, 'Barnard''s Star', 1, 10000, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 60, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


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
-- Name: research research_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.research
    ADD CONSTRAINT research_name_key UNIQUE (name);


--
-- Name: research research_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.research
    ADD CONSTRAINT research_pkey PRIMARY KEY (research_id);


--
-- Name: researcher researcher_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.researcher
    ADD CONSTRAINT researcher_name_key UNIQUE (name);


--
-- Name: researcher researcher_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.researcher
    ADD CONSTRAINT researcher_pkey PRIMARY KEY (researcher_id);


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
-- Name: research research_researcher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.research
    ADD CONSTRAINT research_researcher_id_fkey FOREIGN KEY (researcher_id) REFERENCES public.researcher(researcher_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

