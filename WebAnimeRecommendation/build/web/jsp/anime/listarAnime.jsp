<%-- 
    Document   : listarAnime
    Created on : 23/04/2021, 16:50:23
    Author     : BmnGamer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Listar Animes</title>
    <body>
        <h1>Listar Animes</h1>
        <div class="recomend">
            <fieldset class="pessoal">
                <legend>Anime: </legend>
                <form name="validaListaAnime" action="validaListaAnime.jsp" method="post">
                    <label for="genero">Genero: </label> <input type="text" name="GENERO" id="genero" value=""> <br>
                    <input type="submit" name="BUSCAR" value="BUSCAR" class="botao"> <br>
                </form>
            </fieldset>
        </div>
    </body>
</html>
