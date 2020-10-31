-- --------     << metacritic>>     ------------
--
--                    SCRIPT DE CONSULTAS (DML)
--
-- date Criacao ...........: 29/10/2019
-- Autor(es) ..............: Max Henrique Barbosa
-- Banco de Dados .........: MySql
-- Base de Dados(nome) ....: metacritic
--
-- PROJETO => 01 Base de Dados
--         => 03 Tabelas
--         => 02 Views
-- -----------------------------------------------------------------

USE metacritic;

/*
OBJETIVO: Visualizar quantos jogos existem em cada gênero.
*/
CREATE OR REPLACE VIEW VIEW_QT_GENERO AS
	SELECT g.id_genre, g.description, count(j.id_genre) as num_jogos
		FROM game j, genre g
		WHERE g.id_genre = j.id_genre
    GROUP BY g.id_genre DESC;



/*
OBJETIVO: Quantos jogos tem de cada publisher.
*/
CREATE OR REPLACE VIEW VIEW_QT_PUBLISHER AS
	SELECT p.id_publisher, p.publisher_name, count(j.id_publisher) as qt_buplisher_jogos
		FROM game j, publisher p
		WHERE p.id_publisher = j.id_publisher
    GROUP BY p.id_publisher DESC;