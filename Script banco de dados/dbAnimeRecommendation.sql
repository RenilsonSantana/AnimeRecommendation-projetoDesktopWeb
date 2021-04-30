create database dbANIMERECOMMENDATION;

use dbANIMERECOMMENDATION;

CREATE TABLE tbANIMES (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    genero VARCHAR(300) NOT NULL,
    episodios INT NOT NULL,
    temporadas INT NOT NULL,
    anoLancamento INT NOT NULL,
    sinopse VARCHAR(1000) NOT NULL,
    PRIMARY KEY (id)
) 

select * from tbANIMES