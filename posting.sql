CREATE TABLE IF NOT EXISTS public.posting
(
    id integer NOT NULL,
    "from" character varying COLLATE pg_catalog."default" NOT NULL,
    "to" character varying COLLATE pg_catalog."default" NOT NULL,
    price character varying COLLATE pg_catalog."default" NOT NULL,
    type character varying COLLATE pg_catalog."default" NOT NULL,
    dispatch_time date NOT NULL,
    arrival_time date NOT NULL,
    order_id integer NOT NULL,
    CONSTRAINT posting_pkey PRIMARY KEY (id),
    CONSTRAINT order_id FOREIGN KEY (order_id)
        REFERENCES public."order" (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)