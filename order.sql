CREATE TABLE IF NOT EXISTS public."order"
(
    id integer NOT NULL,
    item_id integer NOT NULL,
    order_number character varying COLLATE pg_catalog."default" NOT NULL,
    seller integer NOT NULL,
    date date NOT NULL,
    CONSTRAINT order_pkey PRIMARY KEY (id),
    CONSTRAINT item_id FOREIGN KEY (item_id)
        REFERENCES public.item (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)
