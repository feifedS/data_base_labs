-- Table: public.employment_childrens

-- DROP TABLE IF EXISTS public.employment_childrens;

CREATE TABLE IF NOT EXISTS public.employment_childrens
(
    employment_id smallint NOT NULL,
    childrens_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    chidlrens_birthdate date NOT NULL,
    child_id smallint NOT NULL,
    CONSTRAINT employment_childrens_pkey PRIMARY KEY (child_id),
    CONSTRAINT employment_id FOREIGN KEY (employment_id)
        REFERENCES public.gifts_for_employments_underage_childrens (employment_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employment_childrens
    OWNER to postgres;