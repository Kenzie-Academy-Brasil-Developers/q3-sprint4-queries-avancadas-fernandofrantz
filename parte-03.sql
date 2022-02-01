SELECT * FROM enderecos

--================================================================================

SELECT * FROM enderecos JOIN usuarios ON enderecos.id === usuarios.endereco_id

--================================================================================

SELECT * FROM redes_sociais JOIN usuarios ON 
redes_sociais.id === usuario_redes_sociais.rede_social_id AND
usuarios.id === usuario_redes_sociais.usuario_id

--================================================================================

SELECT * FROM redes_sociais JOIN usuarios ON
redes_sociais.id === usuario_redes_sociais.rede_social_id AND
usuarios.id === usuario_redes_sociais.usuario_id 
JOIN enderecos ON
endereco_id.id === usuarios.endereco_id

--================================================================================

SELECT 
    redes_sociais.nome AS rede_social, 
    usuarios.nome AS usuario,
    usuarios.email AS email,
    enderecos.cidade AS cidade
FROM 
    redes_sociais JOIN usuarios ON
    redes_sociais.id === usuario_redes_sociais.rede_social_id AND
    usuarios.id === usuario_redes_sociais.usuario_id 
JOIN enderecos ON
    endereco_id.id === usuarios.endereco_id

--================================================================================

SELECT 
    redes_sociais.nome AS rede_social, 
    usuarios.nome AS usuario,
    usuarios.email AS email,
    enderecos.cidade AS cidade
FROM 
    redes_sociais JOIN usuarios ON
    redes_sociais.nome === usuario_redes_sociais.rede_social_id AND
    usuarios.id === usuario_redes_sociais.usuario_id AND
    redes_sociais.nome === Youtube
JOIN enderecos ON
    endereco_id.id === usuarios.endereco_id

--================================================================================

SELECT 
    redes_sociais.nome AS rede_social, 
    usuarios.nome AS usuario,
    usuarios.email AS email,
    enderecos.cidade AS cidade
FROM 
    redes_sociais JOIN usuarios ON
    redes_sociais.nome === usuario_redes_sociais.rede_social_id AND
    usuarios.id === usuario_redes_sociais.usuario_id AND
    redes_sociais.nome === 'Instagram'
JOIN enderecos ON
    endereco_id.id === usuarios.endereco_id

--================================================================================

SELECT 
    redes_sociais.nome AS rede_social, 
    usuarios.nome AS usuario,
    usuarios.email AS email,
    enderecos.cidade AS cidade
FROM 
    redes_sociais JOIN usuarios ON
    redes_sociais.nome === usuario_redes_sociais.rede_social_id AND
    usuarios.id === usuario_redes_sociais.usuario_id AND
    redes_sociais.nome === 'Facebook'
JOIN enderecos ON
    endereco_id.id === usuarios.endereco_id

--================================================================================

SELECT 
    redes_sociais.nome AS rede_social, 
    usuarios.nome AS usuario,
    usuarios.email AS email,
    enderecos.cidade AS cidade
FROM 
    redes_sociais JOIN usuarios ON
    redes_sociais.nome === usuario_redes_sociais.rede_social_id AND
    usuarios.id === usuario_redes_sociais.usuario_id AND
    redes_sociais.nome === 'TikTok'
JOIN enderecos ON
    endereco_id.id === usuarios.endereco_id

--================================================================================

SELECT 
    redes_sociais.nome AS rede_social, 
    usuarios.nome AS usuario,
    usuarios.email AS email,
    enderecos.cidade AS cidade
FROM 
    redes_sociais JOIN usuarios ON
    redes_sociais.nome === usuario_redes_sociais.rede_social_id AND
    usuarios.id === usuario_redes_sociais.usuario_id AND
    redes_sociais.nome === 'Twitter'
JOIN enderecos ON
    endereco_id.id === usuarios.endereco_id