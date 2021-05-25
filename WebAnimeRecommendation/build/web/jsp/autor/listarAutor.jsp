<%-- 
    Document   : listarAnime
    Created on : 23/04/2021, 16:50:23
    Author     : BmnGamer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Listar Autor</title>
    <body>
        <h1>Listar Autor</h1>
        <div class="recomend">
            <fieldset class="pessoal">
                <legend>Autor: </legend>
                <form name="validaListaAutor" action="validaListaAutor.jsp" method="post">
                    <label for="nome">Nome: </label> <input type="text" name="NOME" id="nome" value=""> <br>
                    <input type="submit" name="BUSCAR" value="BUSCAR" class="botao"> <br>
                </form>
            </fieldset>
        </div>
    </body>
</html>
