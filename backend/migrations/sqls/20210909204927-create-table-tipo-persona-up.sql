CREATE TABLE  catastro.tipo_persona(
    id SERIAL PRIMARY KEY,
    tipo_perso TEXT NOT NULL
);

INSERT INTO catastro.tipo_persona(tipo_perso) VALUES ('natural');
INSERT INTO catastro.tipo_persona(tipo_perso) VALUES ('juridica');
