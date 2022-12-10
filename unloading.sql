CREATE TABLE IF NOT EXISTS public.unloading
(
    id integer NOT NULL,
    posting_id integer NOT NULL,
    brigade_id integer NOT NULL,
    start date NOT NULL,
    "end" date NOT NULL,
    CONSTRAINT unloading_pkey PRIMARY KEY (id),
    CONSTRAINT brigade_id FOREIGN KEY (brigade_id)
        REFERENCES public.brigade (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT posting_id FOREIGN KEY (posting_id)
        REFERENCES public.posting (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)