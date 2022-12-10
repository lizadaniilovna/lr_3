CREATE TABLE IF NOT EXISTS public.worker
(
    id integer NOT NULL,
    brigade_id integer NOT NULL,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    surname character(1) COLLATE pg_catalog."default" NOT NULL,
    patronymic character varying COLLATE pg_catalog."default",
    sex character varying COLLATE pg_catalog."default",
    birthday date,
    contract_number character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT worker_pkey PRIMARY KEY (id),
    CONSTRAINT brigade_id_worker FOREIGN KEY (brigade_id)
        REFERENCES public.brigade (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
