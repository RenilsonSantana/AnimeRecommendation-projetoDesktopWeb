<%-- 
    Document   : excluirAnime
    Created on : 23/04/2021, 17:14:36
    Author     : BmnGamer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Excluir Autor</title>
    <body>
        <h1>Excluir Autor</h1>
        <div class="recomend">
            <fieldset class="pessoal">
                <legend>Autor: </legend>
                <form name="validaExcluiAutor" action="validaExcluiAutor.jsp" method="post">
                    <label for="id">ID: </label> <input type="text" name="ID" id="id" value=""> <br>
                    <input type="submit" name="EXCLUIR" value="EXCLUIR" class="botao"> <br>
                </form>
            </fieldset>
        </div>
    </body>
</html>
