

--
-- TOC entry 211 (class 1259 OID 93466)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    customer_name character varying(30),
    membertype_id integer
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 93471)
-- Name: membertype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.membertype (
    membertype_id integer NOT NULL,
    membertype character varying
);


ALTER TABLE public.membertype OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 93461)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    product_id integer NOT NULL,
    product_name character varying(100),
    stock integer,
    price integer
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 93441)
-- Name: productorder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productorder (
    order_id integer NOT NULL,
    customer_id integer,
    product_id integer,
    quantity integer,
    price integer,
    order_time timestamp without time zone
);


ALTER TABLE public.productorder OWNER TO postgres;

--
-- TOC entry 3327 (class 0 OID 93466)
-- Dependencies: 211
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customer VALUES (5, '大川裕子', 2);
INSERT INTO public.customer VALUES (4, '原和成', 1);
INSERT INTO public.customer VALUES (3, '竹村ひとみ', 2);
INSERT INTO public.customer VALUES (2, '石川幸江', 1);
INSERT INTO public.customer VALUES (1, '阿部あかり', 2);


--
-- TOC entry 3328 (class 0 OID 93471)
-- Dependencies: 212
-- Data for Name: membertype; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.membertype VALUES (2, '割引会員');
INSERT INTO public.membertype VALUES (1, '通常会員');


--
-- TOC entry 3326 (class 0 OID 93461)
-- Dependencies: 210
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product VALUES (6, 'バナナ牛乳', 15, 140);
INSERT INTO public.product VALUES (5, 'イチゴ牛乳', 10, 150);
INSERT INTO public.product VALUES (4, '石鹸', 23, 120);
INSERT INTO public.product VALUES (3, '温泉のもと草津', 4, 120);
INSERT INTO public.product VALUES (2, '薬用ハンドソープ', 23, 700);
INSERT INTO public.product VALUES (1, '薬用入浴剤', 100, 70);


--
-- TOC entry 3325 (class 0 OID 93441)
-- Dependencies: 209
-- Data for Name: productorder; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.productorder VALUES (7, 1, 5, 2, 300, '2023-07-07 11:11:00');
INSERT INTO public.productorder VALUES (6, 5, 2, 1, 700, '2022-05-19 13:25:00');
INSERT INTO public.productorder VALUES (5, 1, 4, 3, 360, '2019-08-08 10:00:00');
INSERT INTO public.productorder VALUES (4, 3, 2, 1, 700, '2023-05-26 08:00:00');
INSERT INTO public.productorder VALUES (3, 2, 2, 2, 1400, '2023-10-01 01:01:34');
INSERT INTO public.productorder VALUES (2, 5, 3, 5, 600, '2023-12-05 12:01:34');
INSERT INTO public.productorder VALUES (1, 4, 1, 12, 840, '2023-12-01 12:01:34');


--
-- TOC entry 3180 (class 2606 OID 93470)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 3182 (class 2606 OID 93477)
-- Name: membertype membertype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membertype
    ADD CONSTRAINT membertype_pkey PRIMARY KEY (membertype_id);


--
-- TOC entry 3178 (class 2606 OID 93465)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- TOC entry 3176 (class 2606 OID 93445)
-- Name: productorder productorder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productorder
    ADD CONSTRAINT productorder_pkey PRIMARY KEY (order_id);


--
-- TOC entry 3185 (class 2606 OID 93478)
-- Name: customer customer_membertype_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_membertype_id_fkey FOREIGN KEY (membertype_id) REFERENCES public.membertype(membertype_id) NOT VALID;


--
-- TOC entry 3184 (class 2606 OID 93488)
-- Name: productorder productorder_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productorder
    ADD CONSTRAINT productorder_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id) NOT VALID;


--
-- TOC entry 3183 (class 2606 OID 93483)
-- Name: productorder productorder_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productorder
    ADD CONSTRAINT productorder_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id) NOT VALID;


-- Completed on 2023-03-07 15:08:18

--
-- PostgreSQL database dump complete
--

