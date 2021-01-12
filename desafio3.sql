CREATE VIEW historico_reproducao_usuarios AS
SELECT usr.usuario AS "usuario", c.cancao AS "nome" 
FROM SpotifyClone.usuarios AS usr
INNER JOIN SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS hdr
ON hdr.cancao_id = c.cancao_id AND hdr.usuario_id = usr.usuario_id
ORDER BY usuario, nome;