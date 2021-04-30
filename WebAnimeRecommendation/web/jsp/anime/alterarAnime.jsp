<%-- 
    Document   : alterarAnime
    Created on : 22/04/2021, 21:29:26
    Author     : BmnGamer
--%>

<%@page import="animerecommendation.Dao.AnimeDao"%>
<%@page import="animerecommendation.model.Anime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Alterar Anime</title>
    <body>
        <h1>Alterar Anime</h1>
        <div class="recomend">
            <fieldset class="pessoal">
                <legend>Anime: </legend>
                <form name="validaAlteraAnime" action="validaAlteraAnime.jsp" method="post">
                    <label for="id">ID: </label> <input type="text" name="ID" id="id" value=""> <br>
                    <label for="nome">Nome: </label> <input type="text" name="NOME" id="nome" value=""> <br>
                    <label for="genero">Generos: </label> <input type="text" name="GENERO" id="genero" value=""> <br>
                    <label for="episodios">Episodios: </label> <input type="number" name="EPISODIOS" id="episodios" value=""> <br>
                    <label for="temporadas">Temporadas: </label> <input type="number" name="TEMPORADAS" id="temporadas" value=""> <br>
                    <label for="lancamento">Ano de Lançamento: </label> <input type="number" name="LAMCAMENTO" id="lancamento" value=""> <br>
                    <label for="sinopse">Sinopse: </label> <textarea id="sinopse" name="SINOPSE"></textarea> <br>
                    <input type="submit" name="ALTERAR" value="ALTERAR" class="botao"> <br>
                </form>
            </fieldset>
        </div>
    </body>
</html>
