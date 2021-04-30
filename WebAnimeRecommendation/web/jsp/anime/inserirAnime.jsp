<%-- 
    Document   : inserirAnime
    Created on : 22/04/2021, 20:33:00
    Author     : BmnGamer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Inserir Anime</title>
    <body>
        <h1>Inserir Anime</h1>
        <div class="recomend">
            <fieldset class="pessoal">
                <legend>Anime: </legend>
                <form name="validaInseriAnime" action="validaInseriAnime.jsp" method="post">
                    <label for="nome">Nome: </label> <input type="text" name="NOME" id="nome" value=""> <br>
                    <label for="genero">Generos: </label> <input type="text" name="GENERO" id="genero" value=""> <br>
                    <label for="episodios">Episodios: </label> <input type="number" name="EPISODIOS" id="episodios" value=""> <br>
                    <label for="temporadas">Temporadas: </label> <input type="number" name="TEMPORADAS" id="temporadas" value=""> <br>
                    <label for="lancamento">Ano de Lançamento: </label> <input type="number" name="LAMCAMENTO" id="lancamento" value=""> <br>
                    <label for="sinopse">Sinopse: </label> <textarea id="sinopse" name="SINOPSE"></textarea> <br>
                    <input type="submit" name="INSERIR" value="INSERIR" class="botao"> <br>
                </form>
            </fieldset>
        </div>
    </body>
</html>
