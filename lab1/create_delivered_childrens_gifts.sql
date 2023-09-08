-- Table: public.delivered_childrens_gifts

-- DROP TABLE IF EXISTS public.delivered_childrens_gifts;

CREATE TABLE IF NOT EXISTS public.delivered_childrens_gifts
(
    child_id smallint NOT NULL,
    gift_price smallint NOT NULL,
    date_of_obtaning_gift date NOT NULL,
    id smallint NOT NULL,
    CONSTRAINT delivered_childrens_gifts_pkey PRIMARY KEY (id),
    CONSTRAINT child_id FOREIGN KEY (child_id)
        REFERENCES public.employment_childrens (child_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.delivered_childrens_gifts
    OWNER to postgres;