--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.5 (Debian 15.5-0+deb12u1)

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

--
-- Name: lab03; Type: SCHEMA; Schema: -; Owner: g315_semenov
--

CREATE SCHEMA lab03;


ALTER SCHEMA lab03 OWNER TO g315_semenov;

--
-- Name: lab04; Type: SCHEMA; Schema: -; Owner: g315_semenov
--

CREATE SCHEMA lab04;


ALTER SCHEMA lab04 OWNER TO g315_semenov;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: g315_semenov
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO g315_semenov;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: employees; Type: TABLE; Schema: lab04; Owner: g315_semenov
--

CREATE TABLE lab04.employees (
    id integer NOT NULL,
    lname character varying(50),
    fname character varying(50),
    mname character varying(50)
);


ALTER TABLE lab04.employees OWNER TO g315_semenov;

--
-- Name: installs; Type: TABLE; Schema: lab04; Owner: g315_semenov
--

CREATE TABLE lab04.installs (
    pc_id integer,
    soft_id integer
);


ALTER TABLE lab04.installs OWNER TO g315_semenov;

--
-- Name: pcs; Type: TABLE; Schema: lab04; Owner: g315_semenov
--

CREATE TABLE lab04.pcs (
    id integer NOT NULL,
    room_id integer,
    note character varying(100),
    ip_addr character varying(50),
    mac_addr character varying(17)
);


ALTER TABLE lab04.pcs OWNER TO g315_semenov;

--
-- Name: rooms; Type: TABLE; Schema: lab04; Owner: g315_semenov
--

CREATE TABLE lab04.rooms (
    id integer NOT NULL,
    num integer,
    emp_id integer
);


ALTER TABLE lab04.rooms OWNER TO g315_semenov;

--
-- Name: soft; Type: TABLE; Schema: lab04; Owner: g315_semenov
--

CREATE TABLE lab04.soft (
    id integer NOT NULL,
    sname character varying(50),
    ver character varying(50),
    quant integer
);


ALTER TABLE lab04.soft OWNER TO g315_semenov;

--
-- Data for Name: employees; Type: TABLE DATA; Schema: lab04; Owner: g315_semenov
--

COPY lab04.employees (id, lname, fname, mname) FROM stdin;
1	Semenov	Nikita	Andreevich
2	Omelko	Olga	Olegovna
3	Nikonorova	Ekaterina	Alexandrovna
4	Tipyasev	Artem	Valerevich
5	Fomin	Alexandr	Valerevich
6	Abramov	Igor	Anatolievich
7	Neganov	Nikolai	Vladimirovich
8	Makarov	Vyacheslav	Sergeevich
9	Pupkin	Vasiliy	Anatolievich
10	Severuhin	Alexandr	Mihailovich
\.


--
-- Data for Name: installs; Type: TABLE DATA; Schema: lab04; Owner: g315_semenov
--

COPY lab04.installs (pc_id, soft_id) FROM stdin;
1	1
1	2
2	3
2	4
3	5
3	5
4	4
4	3
5	2
5	1
6	1
6	2
7	3
7	4
8	5
8	5
9	4
9	3
10	2
10	1
11	1
11	2
12	3
13	4
12	5
13	5
14	4
14	3
15	2
15	1
16	1
16	2
17	3
17	4
18	5
18	5
19	3
19	4
20	2
20	5
21	2
21	3
22	5
22	1
23	2
23	3
24	4
24	5
25	2
25	4
26	5
26	1
27	3
27	4
28	2
28	3
29	1
29	4
30	1
30	3
\.


--
-- Data for Name: pcs; Type: TABLE DATA; Schema: lab04; Owner: g315_semenov
--

COPY lab04.pcs (id, room_id, note, ip_addr, mac_addr) FROM stdin;
1	1		199.93.45.10	00:0a:95:9d:68:1e
2	1		200.53.12.24	00:1b:63:4e:7d:2f
3	2		201.23.80.8	00:24:d7:8c:5f:3a
4	2	You need to download Firefox browser	197.34.52.14	00:0f:1a:2b:9c:4d
5	3		197.10.62.7	00:16:8e:7f:3d:5c
6	3		202.20.91.3	00:0c:29:6a:8b:1d
7	4		201.51.14.15	00:1e:4c:5f:9d:3a
8	4		199.71.3.18	00:0b:2d:7e:1f:4c
9	5		5.36.37.39	00:0d:3f:5c:9e:2b
10	5		198.90.1.20	00:1a:7b:4e:2d:3c
11	6		203.10.72.32	00:2c:9d:1f:3b:5e
12	6		204.12.19.12	00:1d:5f:7e:4c:2a
13	7		206.73.14.20	00:3e:2b:9c:1a:5d
14	7		207.22.3.10	00:4f:3c:8d:2e:1b
15	8	You need to update Visual Studio	207.221.322.105	00:5a:1e:9f:3d:4c
16	8		208.91.2.30	00:6c:4d:2b:1f:5e
17	9		209.34.5.12	00:7d:3e:1c:4b:2f
18	9		210.60.8.73	00:8f:5c:2a:3d:1e
19	10		211.10.2.32	00:9e:2d:4b:1f:3c
20	10		212.19.3.14	00:ab:1f:3e:5d:2c
21	11		213.91.7.12	00:bc:3d:5a:2e:1f
22	11		214.42.9.20	00:cd:2e:1b:3f:4d
23	12		215.90.1.32	00:de:4c:3a:1d:5e
24	12		216.10.7.18	00:ef:5d:2b:4c:1f
25	13		217.20.2.30	00:fa:1c:3e:5b:2d
26	13		218.73.5.12	00:0b:2d:7e:1f:4c
27	14	You need to uninstall Photoshop	219.22.8.7	00:1c:3e:5b:2d:7f
28	14		220.91.3.14	00:2d:4f:1a:3c:6e
29	15		221.34.9.20	00:3e:5c:2d:1b:4f
30	15		222.60.1.32	00:4f:6d:3c:2e:1a
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: lab04; Owner: g315_semenov
--

COPY lab04.rooms (id, num, emp_id) FROM stdin;
1	3	1
2	2	2
3	1	3
4	3	4
5	2	5
6	1	6
7	3	7
8	2	8
9	1	9
10	3	10
11	2	9
12	1	7
13	3	5
14	2	3
15	1	1
\.


--
-- Data for Name: soft; Type: TABLE DATA; Schema: lab04; Owner: g315_semenov
--

COPY lab04.soft (id, sname, ver, quant) FROM stdin;
1	Virtual Machine Manager	5.1	2
2	Firefox	8.0	5
3	Visual Studio	22.3	4
4	Libre Office	6.7	1
5	Photoshop	21.5	3
\.


--
-- Name: employees pk_employees_id; Type: CONSTRAINT; Schema: lab04; Owner: g315_semenov
--

ALTER TABLE ONLY lab04.employees
    ADD CONSTRAINT pk_employees_id PRIMARY KEY (id);


--
-- Name: pcs pk_pcs_id; Type: CONSTRAINT; Schema: lab04; Owner: g315_semenov
--

ALTER TABLE ONLY lab04.pcs
    ADD CONSTRAINT pk_pcs_id PRIMARY KEY (id);


--
-- Name: rooms pk_rooms_id; Type: CONSTRAINT; Schema: lab04; Owner: g315_semenov
--

ALTER TABLE ONLY lab04.rooms
    ADD CONSTRAINT pk_rooms_id PRIMARY KEY (id);


--
-- Name: soft pk_soft_id; Type: CONSTRAINT; Schema: lab04; Owner: g315_semenov
--

ALTER TABLE ONLY lab04.soft
    ADD CONSTRAINT pk_soft_id PRIMARY KEY (id);


--
-- Name: installs fk_installs_pc_id; Type: FK CONSTRAINT; Schema: lab04; Owner: g315_semenov
--

ALTER TABLE ONLY lab04.installs
    ADD CONSTRAINT fk_installs_pc_id FOREIGN KEY (pc_id) REFERENCES lab04.pcs(id);


--
-- Name: installs fk_installs_soft_id; Type: FK CONSTRAINT; Schema: lab04; Owner: g315_semenov
--

ALTER TABLE ONLY lab04.installs
    ADD CONSTRAINT fk_installs_soft_id FOREIGN KEY (soft_id) REFERENCES lab04.soft(id);


--
-- Name: pcs fk_pcs_room_id; Type: FK CONSTRAINT; Schema: lab04; Owner: g315_semenov
--

ALTER TABLE ONLY lab04.pcs
    ADD CONSTRAINT fk_pcs_room_id FOREIGN KEY (room_id) REFERENCES lab04.rooms(id);


--
-- Name: rooms fk_rooms_emp_id; Type: FK CONSTRAINT; Schema: lab04; Owner: g315_semenov
--

ALTER TABLE ONLY lab04.rooms
    ADD CONSTRAINT fk_rooms_emp_id FOREIGN KEY (emp_id) REFERENCES lab04.employees(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: g315_semenov
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

