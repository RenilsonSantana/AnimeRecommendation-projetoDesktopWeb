<%-- 
    Document   : buscarAnime
    Created on : 23/04/2021, 16:41:31
    Author     : BmnGamer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Buscar Anime</title>
    <body>
        <h1>Buscar Anime</h1>
        <div class="recomend">
            <fieldset class="pessoal">
                <legend>Anime: </legend>
                <form name="validaBuscaAnime" action="validaBuscaAnime.jsp" method="post">
                    <label for="id">ID: </label> <input type="text" name="ID" id="id" value=""> <br>
                    <input type="submit" name="BUSCAR" value="BUSCAR" class="botao"> <br>
                </form>
            </fieldset>
        </div>
    </body>
</html>
