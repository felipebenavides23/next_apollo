CREATE TABLE catastro.terreno (
    id_terreno SERIAL PRIMARY KEY,
    id_predio SERIAL NOT NULL,
    area NUMERIC NOT NULL,
    valor_comercial NUMERIC NOT NULL,
    fuente_agua TEXT NOT NULL,
    construccion TEXT NOT NULL,

    FOREIGN KEY (id_predio) REFERENCES catastro.predio(id_predio),unique(id_predio)

)