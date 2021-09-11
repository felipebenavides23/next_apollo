CREATE TABLE catastro.construccion(
    id_construccion SERIAL PRIMARY KEY,
    id_predio SERIAL NOT NULL,
    id_tipo_cons SERIAL NOT NULL,
    N_piso NUMERIC NOT NULL,
    area_total NUMERIC NOT NULL,
    direccion TEXT NOT NULL,

    FOREIGN KEY (id_predio) REFERENCES catastro.predio(id_predio),
    FOREIGN KEY (id_tipo_cons) REFERENCES catastro.tipo_construccion(id)
)