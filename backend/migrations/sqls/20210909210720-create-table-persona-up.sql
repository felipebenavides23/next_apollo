CREATE TABLE catastro.persona(
    id_persona SERIAL PRIMARY KEY,
    id_tipo_persona INTEGER NOT NULL,
    tipo_docu TEXT ,
    N_docu NUMERIC ,
    nombre TEXT ,
    apellido TEXT ,
    nit TEXT ,
    razon_social TEXT ,
    direccion TEXT ,
    telefono TEXT ,
    email TEXT ,

    FOREIGN KEY (id_tipo_persona) REFERENCES catastro.tipo_persona(id)
);

