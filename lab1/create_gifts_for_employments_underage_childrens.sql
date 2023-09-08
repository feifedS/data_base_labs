-- Table: public.gifts_for_employments_underage_childrens

-- DROP TABLE IF EXISTS public.gifts_for_employments_underage_childrens;

CREATE TABLE IF NOT EXISTS public.gifts_for_employments_underage_childrens
(
    employment_id smallint NOT NULL,
    surname character varying(100) COLLATE pg_catalog."default" NOT NULL,
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    middlename character varying(100) COLLATE pg_catalog."default",
    "position" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    division character varying(100) COLLATE pg_catalog."default" NOT NULL,
    date_of_employment date NOT NULL,
    CONSTRAINT gifts_for_employments_underage_childrens_pkey PRIMARY KEY (employment_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.gifts_for_employments_underage_childrens
    OWNER to postgres;