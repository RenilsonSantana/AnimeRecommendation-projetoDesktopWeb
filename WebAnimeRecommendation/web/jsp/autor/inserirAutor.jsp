<%-- 
    Document   : inserirAnime
    Created on : 22/04/2021, 20:33:00
    Author     : BmnGamer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Inserir Autor</title>
    <body>
        <h1>Inserir Autor</h1>
        <div class="recomend">
            <fieldset class="pessoal">
                <legend>Autor: </legend>
                <form name="validaInseriAutor" action="validaInseriAutor.jsp" method="post">
                    <label for="nome">Nome: </label> <input type="text" name="NOME" id="nome" value=""> <br>
                    <label for="idade">Idade: </label> <input type="text" name="IDADE" id="idade" value=""> <br>
                    <input type="submit" name="INSERIR" value="INSERIR" class="botao"> <br>
                </form>
            </fieldset>
        </div>
    </body>
</html>
