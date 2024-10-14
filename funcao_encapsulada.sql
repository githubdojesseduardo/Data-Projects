
DELIMITER $$
CREATE FUNCTION MediaAvaliacoes()
RETURNS FLOAT DETERMINISTIC
BEGIN

DECLARE media FLOAT;

SELECT round(AVG(nota), 2) MediaNotas
INTO media
FROM avaliacoes;

RETURN media;
END$$

DELIMITER ;

SELECT MediaAvaliacoes()
