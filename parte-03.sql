SELECT * FROM enderecos

SELECT * FROM enderecos FULL OUTER JOIN usuarios ON enderecos.id === usuarios.endereco_id







SELECT p.nome, p.idade, e.pais, e.estado
FROM pessoas AS p
INNER JOIN enderecos AS e
    ON p.endereco_id = e.id;