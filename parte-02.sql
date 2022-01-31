INSERT INTO 
    enderecos(rua, pais, cidade)
VALUES
    ('Avenida Higienópolis', 'Brasil', 'Londrina'),
    ('Avenida Paulista', 'Brasil', 'São Paulo'),
    ('Rua Marcelino Champagnat', 'Brasil', 'Curitiba')

INSERT INTO 
    usuarios(nome, email, senha, endereco_id)
VALUES
    ('Cauan', 'cauan@exemple.com', '1234', SELECT id FROM enderecos WHERE enderecos.cidade === 'São Paulo'),
    ('Chrystian', 'chrystian@exemple.com', '4321', SELECT id FROM enderecos WHERE enderecos.cidade === 'Curitiba'),
    ('Matheus', 'matheus@exemple.com', '3214', SELECT id FROM enderecos WHERE enderecos.cidade === 'Londrina')

INSERT INTO 
    redes_sociais(nome)
VALUES
    ('Youtube'),
    ('Twitter'),
    ('Instagram'),
    ('Facebook'),
    ('TikTok')

INSERT INTO 
    usuario_rede_sociais(usuario_id, redes_social_id)
VALUES
    (SELECT id FROM usuarios WHERE usuarios.name === 'Cauan', SELECT id FROM redes_sociais WHERE redes_sociais.name === 'Youtube'),
    (SELECT id FROM usuarios WHERE usuarios.name === 'Chrystian', SELECT id FROM redes_sociais WHERE redes_sociais.name === 'Youtube'),
    (SELECT id FROM usuarios WHERE usuarios.name === 'Matheus', SELECT id FROM redes_sociais WHERE redes_sociais.name === 'Youtube'),
    (SELECT id FROM usuarios WHERE usuarios.name === 'Chrystian', SELECT id FROM redes_sociais WHERE redes_sociais.name === 'Twitter'),
    (SELECT id FROM usuarios WHERE usuarios.name === 'Cauan', SELECT id FROM redes_sociais WHERE redes_sociais.name === 'Twitter'),
    (SELECT id FROM usuarios WHERE usuarios.name === 'Matheus', SELECT id FROM redes_sociais WHERE redes_sociais.name === 'Instagram'),
    (SELECT id FROM usuarios WHERE usuarios.name === 'Matheus', SELECT id FROM redes_sociais WHERE redes_sociais.name === 'Facebook'),
    (SELECT id FROM usuarios WHERE usuarios.name === 'Chrystian', SELECT id FROM redes_sociais WHERE redes_sociais.name === 'Instagram'),
    (SELECT id FROM usuarios WHERE usuarios.name === 'Cauan', SELECT id FROM redes_sociais WHERE redes_sociais.name === 'TikTok'),

