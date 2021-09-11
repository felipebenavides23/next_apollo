 CREATE TABLE catastro.predio (
    id_predio SERIAL PRIMARY KEY,
    id_persona SERIAL NOT NULL,
    avaluo NUMERIC NOT NULL,
    nombre_predio TEXT NOT NULL,
    departamento TEXT NOT  NULL,
    municipio TEXT NOT NULL,

    FOREIGN KEY (id_persona) REFERENCES catastro.persona(id_persona)
 );