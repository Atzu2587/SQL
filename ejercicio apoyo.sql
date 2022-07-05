CREATE DATABASE Agencia_autos
CREATE TABLE public."autos"
(
    id bigint NOT NULL,
    marca text COLLATE pg_catalog."default" NOT NULL,
    modelo text COLLATE pg_catalog."default" NOT NULL,
    "año" integer NOT NULL,
    color character varying(20)[] COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT autos_pkey PRIMARY KEY (id) 
    )

CREATE TABLE public.ventas
(
    id bigint NOT NULL,
    fecha date NOT NULL,
    cliente text COLLATE pg_catalog."default" NOT NULL,
    referencia text COLLATE pg_catalog."default",
    cantidad integer NOT NULL,
    id_autos bigint NOT NULL,
    CONSTRAINT ventas_pkey PRIMARY KEY (id),
    CONSTRAINT autos FOREIGN KEY (id_autos)
        REFERENCES public.autos (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

\copy autos FROM 'C:\Users\Atzu\Documents\MODULO 5\SQL\Apoyo Lectura\autos.csv' csv header;

-- punto 6 hacer consulta con un alias--
SELECT marca, modelo, year as "año", color
	FROM public.autos;

--  punto 7 insertar datos venta --
INSERT INTO public.ventas(
	id, fecha, cliente, referencia, cantidad, id_autos)
	VALUES (2,'2022-02-23', 'Miguel Angel', 'Amigo', 2, 3);

-- punto 8 Funcion suma--
    select sum(cantidad) as "autos vendidos" from ventas

-- punto 9 añadir una tabla--
    ALTER TABLE autos 
add estado Text;
-- punto 10 Agregar un registro a la tabla autos--
INSERT INTO public.autos(
	id, marca, modelo, year, color, estado)
	VALUES (5, 'mazda', 'CX5', 2022, 'Rojo', 'nuevo');

-- punto 11 Agregar un update--
UPDATE public.autos
	SET marca='chevrolet', modelo='aveo'
	WHERE id=2;

-- punto 12 Agrupar por marca--
    SELECT count (marca), marca
	FROM public.autos
	group by marca;