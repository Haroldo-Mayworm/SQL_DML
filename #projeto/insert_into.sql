USE SUCOS;

INSERT INTO PRODUTOS
SELECT
	CODIGO_DO_PRODUTO AS COD_PRODUTO,
    NOME_DO_PRODUTO AS DESCRICAO,
    SABOR,
    TAMANHO,
	EMBALAGEM,
    PRECO_DE_LISTA AS PRECO
FROM SUCOS_VENDAS.TABELA_DE_PRODUTOS
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT COD_PRODUTO FROM PRODUTOS);

INSERT INTO VENDEDORES
SELECT
	MATRICULA,
    NOME,
    BAIRRO,
    PERCENTUAL_COMISSAO AS COMISSAO,
    DATA_ADMISSAO AS DT_ADMISSAO,
	DE_FERIAS AS FERIAS
FROM SUCOS_VENDAS.TABELA_DE_VENDEDORES
WHERE MATRICULA NOT IN (SELECT MATRICULA FROM VENDEDORES);
    
INSERT INTO CLIENTES
SELECT
	CPF,
    NOME,
    ENDERECO_1 AS ENDERECO,
    BAIRRO,
    CIDADE,
    ESTADO,
    CEP,
    DATA_DE_NASCIMENTO AS DT_NASCIMENTO,
    SEXO,
    LIMITE_DE_CREDITO AS LIMITE_CREDITO,
    VOLUME_DE_COMPRA AS VOLUME_COMPRA,
    PRIMEIRA_COMPRA
FROM SUCOS_VENDAS.TABELA_DE_CLIENTES
WHERE CPF NOT IN (SELECT CPF FROM CLIENTES);
    
INSERT INTO NOTAS
SELECT
	NUMERO AS NUM_NOTA,
    DATA_VENDA AS DT_VENDA,
	CPF,
    MATRICULA,
    IMPOSTO
FROM SUCOS_VENDAS.NOTAS_FISCAIS
WHERE NUMERO NOT IN (SELECT NUM_NOTA FROM NOTAS);
    
INSERT INTO ITENS_NOTA
SELECT
	NUMERO AS NUM_NOTA,
    CODIGO_DO_PRODUTO AS COD_PRODUTO,
    QUANTIDADE,
    PRECO
FROM SUCOS_VENDAS.ITENS_NOTAS_FISCAIS;