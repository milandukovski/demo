--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

-- Started on 2019-06-11 23:21:55

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12278)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2183 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 16668)
-- Name: author_books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.author_books (
    id bigint NOT NULL,
    author_id bigint,
    book_id bigint
);


ALTER TABLE public.author_books OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16666)
-- Name: author_books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.author_books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.author_books_id_seq OWNER TO postgres;

--
-- TOC entry 2184 (class 0 OID 0)
-- Dependencies: 200
-- Name: author_books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.author_books_id_seq OWNED BY public.author_books.id;


--
-- TOC entry 197 (class 1259 OID 16646)
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors (
    id bigint NOT NULL,
    first_name text,
    last_name text,
    address text,
    city text
);


ALTER TABLE public.authors OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16644)
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO postgres;

--
-- TOC entry 2185 (class 0 OID 0)
-- Dependencies: 196
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- TOC entry 199 (class 1259 OID 16657)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    id bigint NOT NULL,
    title text,
    page_count integer,
    type text,
    published_date timestamp without time zone,
    description text,
    isbn text
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16655)
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO postgres;

--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 198
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- TOC entry 2040 (class 2604 OID 16671)
-- Name: author_books id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author_books ALTER COLUMN id SET DEFAULT nextval('public.author_books_id_seq'::regclass);


--
-- TOC entry 2038 (class 2604 OID 16649)
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- TOC entry 2039 (class 2604 OID 16660)
-- Name: books id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- TOC entry 2175 (class 0 OID 16668)
-- Dependencies: 201
-- Data for Name: author_books; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.author_books (id, author_id, book_id) VALUES (1, 1, 1);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (2, 4, 1);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (3, 4, 2);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (4, 3, 3);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (5, 2, 4);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (6, 6, 4);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (7, 6, 5);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (8, 5, 5);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (9, 1, 6);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (10, 2, 7);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (11, 3, 7);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (12, 4, 7);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (13, 3, 8);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (14, 1, 9);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (15, 3, 9);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (16, 5, 10);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (17, 2, 10);
INSERT INTO public.author_books (id, author_id, book_id) VALUES (18, 6, 10);


--
-- TOC entry 2171 (class 0 OID 16646)
-- Dependencies: 197
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.authors (id, first_name, last_name, address, city) VALUES (1, 'Frank', 'Ableson', '3897 Marshall Street', 'Hanover');
INSERT INTO public.authors (id, first_name, last_name, address, city) VALUES (2, 'Charlie', 'Collins', '866 Hampton Meadows', 'Bedford');
INSERT INTO public.authors (id, first_name, last_name, address, city) VALUES (3, 'Robi', 'Sen', '4396 Frank Avenue', 'Bridgeville');
INSERT INTO public.authors (id, first_name, last_name, address, city) VALUES (4, 'Gojko', 'Adzic', '2604 Elk Street', 'test');
INSERT INTO public.authors (id, first_name, last_name, address, city) VALUES (5, 'Faisal', 'Abid', '1230 Meadowcrest Lane', 'Los Angeles');
INSERT INTO public.authors (id, first_name, last_name, address, city) VALUES (6, 'Tariq', 'Ahmed', '1230 Meadowcrest Lane', 'Russell');


--
-- TOC entry 2173 (class 0 OID 16657)
-- Dependencies: 199
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.books (id, title, page_count, type, published_date, description, isbn) VALUES (1, 'Unlocking Android', 416, 'MOBILE', '2010-02-22 18:35:20.516447', 'Unlocking Android: A Developer''s Guide provides concise, hands-on instruction for the Android operating system and development tools. This book teaches important architectural concepts in a straightforward writing style and builds on this with practical and useful examples throughout.', '1933988673');
INSERT INTO public.books (id, title, page_count, type, published_date, description, isbn) VALUES (2, 'Android in Action, Second Edition', 592, 'MOBILE', '2011-08-16 11:45:43.500126', 'Android in Action, Second Edition is a comprehensive tutorial for Android developers. Taking you far beyond \"Hello Android,\" this fast-paced book puts you in the driver''s seat as you learn important architectural concepts and implementation strategies. You''ll master the SDK, build WebKit apps using HTML 5, and even learn to extend or replace Android''s built-in features by building useful and intriguing examples.', '1935182722');
INSERT INTO public.books (id, title, page_count, type, published_date, description, isbn) VALUES (3, 'Flex 3 in Action', 576, 'INTERNET', '2012-09-07 02:44:03.944994', 'New web applications require engaging user-friendly interfaces   and the cooler, the better. With Flex 3, web developers at any skill level can create high-quality, effective, and interactive Rich Internet Applications (RIAs) quickly and easily. Flex removes the complexity barrier from RIA development by offering sophisticated tools and a straightforward programming language so you can focus on what you want to do instead of how to do it.', '1617290084');
INSERT INTO public.books (id, title, page_count, type, published_date, description, isbn) VALUES (4, 'Zend Framework in Action', 432, 'WEB_DEVELOPMENT', '2010-10-04 23:40:23.498871', 'Zend Framework in Action is a comprehensive tutorial that shows how to use the Zend Framework to create web-based applications and web services. This book takes you on an over-the-shoulder tour of the components of the Zend Framework as you build a high quality, real-world web application.', '1933988320');
INSERT INTO public.books (id, title, page_count, type, published_date, description, isbn) VALUES (5, 'Griffon in Action', 375, 'JAVA', '2017-06-09 12:21:19.617038', 'Griffon in Action is a comprehensive tutorial written for Java developers who want a more productive approach to UI development. In this book, you''ll immediately dive into Griffon. After a Griffon orientation and a quick Groovy tutorial, you''ll start building examples that explore Griffon''s high productivity approach to Swing development. One of the troublesome parts of Swing development is the amount of Java code that is required to get a simple application off the ground.', '1935182234');
INSERT INTO public.books (id, title, page_count, type, published_date, description, isbn) VALUES (6, 'OSGi in Depth', 325, 'JAVA', '2014-08-24 16:20:25.835934', 'Enterprise OSGi shows a Java developer how to develop to the OSGi Service Platform Enterprise specification, an emerging Java-based technology for developing modular enterprise applications. Enterprise OSGi addresses several shortcomings of existing enterprise platforms, such as allowing the creation of better maintainable and extensible applications, and provide a simpler, easier-to-use, light-weight solution to enterprise software development.', '193518217X');
INSERT INTO public.books (id, title, page_count, type, published_date, description, isbn) VALUES (7, 'Hibernate in Action', 400, 'JAVA', '2018-11-19 03:35:06.93015', '193239415X', '\"2005 Best Java Book!\" -- Java Developer''s Journal');
INSERT INTO public.books (id, title, page_count, type, published_date, description, isbn) VALUES (8, 'JSTL in Action', 480, 'INTERNET', '2010-01-23 16:34:59.691786', 'JSTL is an important simplification of the Java web platform', '1930110529');
INSERT INTO public.books (id, title, page_count, type, published_date, description, isbn) VALUES (9, 'iBATIS in Action', 384, 'WEB_DEVELOPMENT', '2018-01-03 03:27:18.361317', 'Gets new users going and gives experienced users in-depth coverage of advanced features.', '1932394826');
INSERT INTO public.books (id, title, page_count, type, published_date, description, isbn) VALUES (10, 'jQuery in Action', 416, 'OPEN_SOURCE', '2015-04-08 05:32:06.877093', 'The best-thought-out and researched piece of literature on the jQuery library.', '1933988355');


--
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 200
-- Name: author_books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.author_books_id_seq', 18, true);


--
-- TOC entry 2188 (class 0 OID 0)
-- Dependencies: 196
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authors_id_seq', 6, true);


--
-- TOC entry 2189 (class 0 OID 0)
-- Dependencies: 198
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_seq', 10, true);


--
-- TOC entry 2046 (class 2606 OID 16673)
-- Name: author_books author_books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author_books
    ADD CONSTRAINT author_books_pkey PRIMARY KEY (id);


--
-- TOC entry 2042 (class 2606 OID 16654)
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- TOC entry 2044 (class 2606 OID 16665)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- TOC entry 2047 (class 2606 OID 16674)
-- Name: author_books author_books_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author_books
    ADD CONSTRAINT author_books_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.authors(id);


--
-- TOC entry 2048 (class 2606 OID 16679)
-- Name: author_books author_books_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author_books
    ADD CONSTRAINT author_books_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(id);


-- Completed on 2019-06-11 23:21:56

--
-- PostgreSQL database dump complete
--

