CREATE TABLE IF NOT EXISTS redes_sociais(
    id PRIMARY KEY SERIAL
    nome VARCHAR(150) NOT NULL UNIQUE
)

CREATE TABLE IF NOT EXISTS enderecos(
    id PRIMARY KEY SERIAL
    rua VARCHAR NOT NULL
    pais VARCHAR(100) NOT NULL
    cidade VARCHAR(100) NOT NULL
)

CREATE TABLE IF NOT EXISTS usuarios(
    id PRIMARY KEY SERIAL
    nome VARCHAR(100)
    email VARCHAR NOT NULL UNIQUE
    senha VARCHAR NOT NULL
    endereco_id REFERENCES enderecos(id)
)

CREATE TABLE IF NOT EXISTS usuario_rede_sociais(
    id PRIMARY KEY SERIAL
    usuario_id REFERENCES usuarios(id)
    redes_social_id REFERENCES redes_sociais(id)
)