USE SUCOS;

SELECT * FROM CLIENTES;

INSERT INTO PRODUTOS (COD_PRODUTO, DESCRICAO, SABOR, TAMANHO, EMBALAGEM, PRECO)
VALUES (175963, 'Light - 350ml - uva', 'uva', '350ml', 'Lata', 5.00);

INSERT INTO PRODUTOS VALUES (873156, 'Comum - 350ml - Laranja', 'Laranja', '600ml', 'Garrafa', 8.50);

INSERT INTO PRODUTOS (COD_PRODUTO, DESCRICAO, SABOR) 
VALUES (731595, 'Linght - 350ml - Morango', 'Morango');

INSERT INTO PRODUTOS VALUES 
(945135, 'Light - 350ml - Jaca', 'Jaca', '350ml', 'Lata', 3.50),
(945138, 'Light - 350ml - Manga', 'Manga', '240ml', 'Garrafa', 2.00);


INSERT INTO CLIENTES VALUES 
('14711567106','Érica Carvalho','R. Iriquitia','Jardins','São Paulo','SP',80012212,'19900901','F',170000,24500,0),
('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','Água Santa','Rio de Janeiro','RJ',22000000,'20000212','M',100000,20000,1),
('26005867095','César Teixeira','Rua Conde de Bonfim','Tijuca','Rio de Janeiro','RJ',22020001,'20000312','M',120000,22000,0)