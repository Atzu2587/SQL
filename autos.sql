CREATE DATABASE Agencia_autos
CREATE TABLE public."autos"
(
    id bigint NOT NULL,
    marca text COLLATE pg_catalog."default" NOT NULL,
    modelo text COLLATE pg_catalog."default" NOT NULL,
    "año" integer NOT NULL,
    color character varying(20)[] COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT autos_pkey PRIMARY KEY (id) )