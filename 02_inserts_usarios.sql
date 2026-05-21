INSERT INTO Usuario (id_usuario, nm_usuario, rg_usuario, cpf_usuario, dt_nascimento, tp_usuario, creci)
VALUES('1','Ayrton Brassica','123456789','12345678912' ,'1996-11-21', 'Corretor', '123456');

INSERT INTO Usuario (id_usuario, nm_usuario,rg_usuario, cpf_usuario, dt_nascimento, tp_usuario)
VALUES('2', 'Vinicius Lucas', '987654321', '12987654321', '1998-04+18', 'Locador')

INSERT INTO Usuario (id_usuario, nm_usuario, rg_usuario, cpf_usuario, dt_nascimento, tp_usuario)
VALUES('3', 'João Lucas', '876547698','123456798', '1996-11-21', 'Locatario')

UPDATE Usuario SET rg_usuario = '987654322' WHERE id_usuario = '3';

INSERT INTO Usuario (id_usuario, nm_usuario, rg_usuario, cpf_usuario, dt_nascimento, tp_usuario)
VALUES('4', 'Paulo Roberto', '876547699','123456798', '1996-11-21', 'Locatario')

INSERT INTO Usuario (id_usuario, nm_usuario, rg_usuario, cpf_usuario, dt_nascimento, tp_usuario)
VALUES('5', 'Breno Tadeu', '899547699','123456858', '1996-08-13', 'Locador')

INSERT INTO Imovel (id_imovel, end_imovel, bairro_imovel, cdd_imovel, cep_imovel, tipo_imovel)
VALUES('1', 'Rua dos bobos, 123', 'Centro', 'São Paulo', '12345678', 'Apartamento');