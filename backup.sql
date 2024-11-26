--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: BlogTag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."BlogTag" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "blogId" integer NOT NULL,
    "tagId" integer NOT NULL
);


ALTER TABLE public."BlogTag" OWNER TO postgres;

--
-- Name: Blogs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Blogs" (
    id integer NOT NULL,
    title character varying(255),
    description text,
    "imagePath" character varying(255),
    summary text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "categoryId" integer,
    "authorId" integer
);


ALTER TABLE public."Blogs" OWNER TO postgres;

--
-- Name: Blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Blogs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Blogs_id_seq" OWNER TO postgres;

--
-- Name: Blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Blogs_id_seq" OWNED BY public."Blogs".id;


--
-- Name: Categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Categories" (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Categories" OWNER TO postgres;

--
-- Name: Categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Categories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Categories_id_seq" OWNER TO postgres;

--
-- Name: Categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Categories_id_seq" OWNED BY public."Categories".id;


--
-- Name: Comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Comments" (
    id integer NOT NULL,
    message text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "blogId" integer,
    "userId" integer
);


ALTER TABLE public."Comments" OWNER TO postgres;

--
-- Name: Comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Comments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Comments_id_seq" OWNER TO postgres;

--
-- Name: Comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Comments_id_seq" OWNED BY public."Comments".id;


--
-- Name: Tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tags" (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Tags" OWNER TO postgres;

--
-- Name: Tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Tags_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Tags_id_seq" OWNER TO postgres;

--
-- Name: Tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tags_id_seq" OWNED BY public."Tags".id;


--
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    username character varying(255),
    password character varying(255),
    "firstName" character varying(255),
    "lastName" character varying(255),
    mobile character varying(255),
    "imagePath" character varying(255),
    "isAdmin" boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Users_id_seq" OWNER TO postgres;

--
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- Name: Blogs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Blogs" ALTER COLUMN id SET DEFAULT nextval('public."Blogs_id_seq"'::regclass);


--
-- Name: Categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories" ALTER COLUMN id SET DEFAULT nextval('public."Categories_id_seq"'::regclass);


--
-- Name: Comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comments" ALTER COLUMN id SET DEFAULT nextval('public."Comments_id_seq"'::regclass);


--
-- Name: Tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tags" ALTER COLUMN id SET DEFAULT nextval('public."Tags_id_seq"'::regclass);


--
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- Data for Name: BlogTag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."BlogTag" ("createdAt", "updatedAt", "blogId", "tagId") FROM stdin;
2024-11-25 10:52:40.014701+07	2024-11-25 10:52:40.014701+07	1	1
2024-11-25 10:52:40.014701+07	2024-11-25 10:52:40.014701+07	1	2
2024-11-25 10:52:40.014701+07	2024-11-25 10:52:40.014701+07	1	3
2024-11-25 10:52:40.014701+07	2024-11-25 10:52:40.014701+07	2	1
2024-11-25 10:52:40.014701+07	2024-11-25 10:52:40.014701+07	2	4
2024-11-25 10:52:40.014701+07	2024-11-25 10:52:40.014701+07	3	1
2024-11-25 10:52:40.014701+07	2024-11-25 10:52:40.014701+07	4	2
2024-11-25 10:52:40.014701+07	2024-11-25 10:52:40.014701+07	5	3
2024-11-25 10:52:40.014701+07	2024-11-25 10:52:40.014701+07	6	4
\.


--
-- Data for Name: Blogs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Blogs" (id, title, description, "imagePath", summary, "createdAt", "updatedAt", "categoryId", "authorId") FROM stdin;
1	6 ways to prepare breakfast for 30	<img src="/img/blog/details/details-pic.jpg" alt=""><p>Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet\n        dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit\n        aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur\n        sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada.\n        Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus.\n        Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis\n        quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada\n        feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n        <h3>The corner window forms a place within a place that is a resting point within the large space.</h3>\n        <p>The study area is located at the back with a view of the vast nature. Together with the other\n        buildings, a congruent story has been managed in which the whole has a reinforcing effect on\n        the components. The use of materials seeks connection to the main house, the adjacent\n        stables</p>	/img/blog/blog-1.jpg	Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat	2024-11-25 10:52:40.00648+07	2024-11-25 10:52:40.00648+07	1	1
2	Visit the clean farm in the US	<p>Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet\n        dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit\n        aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur\n        sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada.\n        Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus.\n        Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis\n        quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada\n        feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n        <h3>The corner window forms a place within a place that is a resting point within the large space.</h3>\n        <p>The study area is located at the back with a view of the vast nature. Together with the other\n        buildings, a congruent story has been managed in which the whole has a reinforcing effect on\n        the components. The use of materials seeks connection to the main house, the adjacent\n        stables</p>	/img/blog/blog-2.jpg	Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat	2024-11-25 10:52:40.00648+07	2024-11-25 10:52:40.00648+07	2	2
3	Cooking tips make cooking simple	<p>Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet\n        dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit\n        aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur\n        sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada.\n        Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus.\n        Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis\n        quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada\n        feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n        <h3>The corner window forms a place within a place that is a resting point within the large space.</h3>\n        <p>The study area is located at the back with a view of the vast nature. Together with the other\n        buildings, a congruent story has been managed in which the whole has a reinforcing effect on\n        the components. The use of materials seeks connection to the main house, the adjacent\n        stables</p>	/img/blog/blog-3.jpg	Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat	2024-11-25 10:52:40.00648+07	2024-11-25 10:52:40.00648+07	3	3
4	Crab Pool Security	<p>Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet\n        dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit\n        aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur\n        sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada.\n        Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus.\n        Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis\n        quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada\n        feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n        <h3>The corner window forms a place within a place that is a resting point within the large space.</h3>\n        <p>The study area is located at the back with a view of the vast nature. Together with the other\n        buildings, a congruent story has been managed in which the whole has a reinforcing effect on\n        the components. The use of materials seeks connection to the main house, the adjacent\n        stables</p>	/img/blog/blog-4.jpg	Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat	2024-11-25 10:52:40.00648+07	2024-11-25 10:52:40.00648+07	4	4
5	The Moment You Need To Remove Garlic From The Menu	<p>Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet\n        dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit\n        aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur\n        sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada.\n        Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus.\n        Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis\n        quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada\n        feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n        <h3>The corner window forms a place within a place that is a resting point within the large space.</h3>\n        <p>The study area is located at the back with a view of the vast nature. Together with the other\n        buildings, a congruent story has been managed in which the whole has a reinforcing effect on\n        the components. The use of materials seeks connection to the main house, the adjacent\n        stables</p>	/img/blog/blog-5.jpg	Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat	2024-11-25 10:52:40.00648+07	2024-11-25 10:52:40.00648+07	1	5
6	6 ways to prepare breakfast	<p>Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet\n        dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit\n        aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur\n        sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada.\n        Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus.\n        Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis\n        quis ac lectus. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada\n        feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n        <h3>The corner window forms a place within a place that is a resting point within the large space.</h3>\n        <p>The study area is located at the back with a view of the vast nature. Together with the other\n        buildings, a congruent story has been managed in which the whole has a reinforcing effect on\n        the components. The use of materials seeks connection to the main house, the adjacent\n        stables</p>	/img/blog/blog-6.jpg	Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat	2024-11-25 10:52:40.00648+07	2024-11-25 10:52:40.00648+07	3	2
\.


--
-- Data for Name: Categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Categories" (id, name, "createdAt", "updatedAt") FROM stdin;
1	Beauty	2024-11-25 10:52:39.98567+07	2024-11-25 10:52:39.98567+07
2	Food	2024-11-25 10:52:39.98567+07	2024-11-25 10:52:39.98567+07
3	Life Style	2024-11-25 10:52:39.98567+07	2024-11-25 10:52:39.98567+07
4	Travel	2024-11-25 10:52:39.98567+07	2024-11-25 10:52:39.98567+07
\.


--
-- Data for Name: Comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Comments" (id, message, "createdAt", "updatedAt", "blogId", "userId") FROM stdin;
1	Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	2	4
2	Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	2	3
3	Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	1	5
4	Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	2	1
5	Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	5	1
6	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	5	4
7	Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	2	5
8	Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	5	1
9	Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	2	4
10	Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	4	1
11	Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	3	1
12	Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	5	3
13	Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	5	2
14	Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	4	2
15	Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	6	2
16	Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	5	5
17	Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	6	2
18	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	4	4
19	Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	3	2
20	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	2	4
21	Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	4	5
22	Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	6	1
23	Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	3	1
24	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	1	5
25	Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	3	3
26	Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	2	5
27	Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	1	4
28	Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	2	5
29	Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.	2024-11-25 10:52:40.021703+07	2024-11-25 10:52:40.021703+07	4	4
\.


--
-- Data for Name: Tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tags" (id, name, "createdAt", "updatedAt") FROM stdin;
1	Trending	2024-11-25 10:52:39.993693+07	2024-11-25 10:52:39.993693+07
2	Cooking	2024-11-25 10:52:39.993693+07	2024-11-25 10:52:39.993693+07
3	Healthy Food	2024-11-25 10:52:39.993693+07	2024-11-25 10:52:39.993693+07
4	Life Style	2024-11-25 10:52:39.993693+07	2024-11-25 10:52:39.993693+07
\.


--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" (id, username, password, "firstName", "lastName", mobile, "imagePath", "isAdmin", "createdAt", "updatedAt") FROM stdin;
1	admin@mail.com	AXI3CxWdu	Enrico	De Ferraris	506-883-2766	/img/blog/details/details-author.jpg	t	2024-11-25 10:52:39.999667+07	2024-11-25 10:52:39.999667+07
2	lcarlick1@furl.net	kUzhyPDAB	Lisle	Carlick	685-500-0168	/img/blog/details/details-author.jpg	\N	2024-11-25 10:52:39.999667+07	2024-11-25 10:52:39.999667+07
3	fochiltree2@nytimes.com	x1Q3NnKVg5oB	Frederich	Ochiltree	387-491-7478	/img/blog/details/details-author.jpg	t	2024-11-25 10:52:39.999667+07	2024-11-25 10:52:39.999667+07
4	dblasetti3@wufoo.com	vY3dpY	Dorolisa	Blasetti	768-449-9990	/img/blog/details/details-author.jpg	\N	2024-11-25 10:52:39.999667+07	2024-11-25 10:52:39.999667+07
5	ryelland4@de.vu	RNqceiBJWMjI	Rosaleen	Yelland	658-130-3536	/img/blog/details/details-author.jpg	\N	2024-11-25 10:52:39.999667+07	2024-11-25 10:52:39.999667+07
\.


--
-- Name: Blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Blogs_id_seq"', 6, true);


--
-- Name: Categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Categories_id_seq"', 4, true);


--
-- Name: Comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Comments_id_seq"', 29, true);


--
-- Name: Tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tags_id_seq"', 4, true);


--
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Users_id_seq"', 5, true);


--
-- Name: BlogTag BlogTag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BlogTag"
    ADD CONSTRAINT "BlogTag_pkey" PRIMARY KEY ("blogId", "tagId");


--
-- Name: Blogs Blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Blogs"
    ADD CONSTRAINT "Blogs_pkey" PRIMARY KEY (id);


--
-- Name: Categories Categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY (id);


--
-- Name: Comments Comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_pkey" PRIMARY KEY (id);


--
-- Name: Tags Tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY (id);


--
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- Name: BlogTag BlogTag_blogId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BlogTag"
    ADD CONSTRAINT "BlogTag_blogId_fkey" FOREIGN KEY ("blogId") REFERENCES public."Blogs"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: BlogTag BlogTag_tagId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BlogTag"
    ADD CONSTRAINT "BlogTag_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public."Tags"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Blogs Blogs_authorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Blogs"
    ADD CONSTRAINT "Blogs_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Blogs Blogs_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Blogs"
    ADD CONSTRAINT "Blogs_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."Categories"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Comments Comments_blogId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_blogId_fkey" FOREIGN KEY ("blogId") REFERENCES public."Blogs"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Comments Comments_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

