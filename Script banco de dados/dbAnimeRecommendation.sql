create database dbANIMERECOMMENDATION;

use dbANIMERECOMMENDATION;

CREATE TABLE tbANIMES(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    genero VARCHAR(300) NOT NULL,
    episodios INT NOT NULL,
    temporadas INT NOT NULL,
    anoLancamento INT NOT NULL,
    sinopse VARCHAR(1000) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tbAUTOR(
	id INT NOT NULL AUTO_INCREMENT,
    nome_Autor VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tbPRODUCAO(
	id INT NOT NULL AUTO_INCREMENT,
    id_Anime INT NOT NULL,
    id_Autor INT NOT NULL,
    data_lancamento VARCHAR(15),
    FOREIGN KEY (id_Anime) REFERENCES tbANIMES(id),
    FOREIGN KEY (id_Autor) REFERENCES tbAUTOR(id),
    PRIMARY KEY (id)
);

select * from tbProducao