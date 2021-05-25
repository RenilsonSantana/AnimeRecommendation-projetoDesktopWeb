<%-- 
    Document   : alterarAnime
    Created on : 22/04/2021, 21:29:26
    Author     : BmnGamer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Alterar Autor</title>
    <body>
        <h1>Alterar Autor</h1>
        <div class="recomend">
            <fieldset class="pessoal">
                <legend>Autor: </legend>
                <form name="validaAlteraAutor" action="validaAlteraAutor.jsp" method="post">
                    <label for="id">ID: </label> <input type="text" name="ID" id="id" value=""> <br>
                    <label for="nome">Nome: </label> <input type="text" name="NOME" id="nome" value=""> <br>
                    <label for="idade">Idade: </label> <input type="text" name="IDADE" id="idade" value=""> <br>
                    <input type="submit" name="ALTERAR" value="ALTERAR" class="botao"> <br>
                </form>
            </fieldset>
        </div>
    </body>
</html>
