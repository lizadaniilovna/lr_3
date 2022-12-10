CREATE TABLE IF NOT EXISTS public.item
(
    id integer NOT NULL,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    performance character varying COLLATE pg_catalog."default" NOT NULL,
    expiration date NOT NULL,
    storage_conditions character varying COLLATE pg_catalog."default",
    created character varying COLLATE pg_catalog."default" NOT NULL,
    count integer,
    price integer,
    CONSTRAINT item_pkey PRIMARY KEY (id)
)
