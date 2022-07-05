-- paso 1 crear tabla 
CREATE TABLE public.peliculas
(
    id bigint NOT NULL,
    pelicula text COLLATE pg_catalog."default" NOT NULL,
    ano_estreno integer NOT NULL,
    director text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT peliculas_pkey PRIMARY KEY (id)
)

-- importar--
SELECT id, pelicula, ano_estreno, director
	FROM public.peliculas;

    --seleccion id titanic--    
SELECT id
	FROM public.peliculas
	where pelicula='Titanic'

    --seleccionar cuantas peliculas realizo harrison F--
SELECT COUNT(ID) FROM reparto where actor='Harrison Ford'

----

	
