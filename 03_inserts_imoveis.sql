INSERT INTO Imovel (id_imovel, end_imovel, bairro_imovel, cdd_imovel, cep_imovel, tipo_imovel)
VALUES('1', 'Rua dos bobos, 123', 'Centro', 'São Paulo', '12345678', 'Apartamento');

UPDATE Imovel SET id_usuario = '2' WHERE id_imovel = '1';

INSERT INTO Imovel (id_imovel, end_imovel, bairro_imovel, cdd_imovel, cep_imovel, tipo_imovel)
VALUES('2', 'Rua dos loucos', 'Centro', 'São Paulo', '87654321', 'Apartamento')
