<%-- 
    Document   : validaExcluiAnime
    Created on : 23/04/2021, 17:15:36
    Author     : BmnGamer
--%>

<%@page import="animerecommendation.Dao.AutorDao"%>
<%@page import="animerecommendation.model.Autor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));

    Autor autorEntrada = new Autor(id);
    AutorDao autorDao = new AutorDao();
    Autor autorSaida = autorDao.excluir(autorEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Excluir Autor</title>
    <body>
        <div class="recomend">
	<section id="corpo">
            <!--<h4>Animes Recommendation é um site para Otakus que não tem animes para assistir, principalmente otakus novatos que ficam meio perdidos nesse mundo dos animes (Oh e agora? Que anime vou assistir?). Dividimos por gêneros e colocamos só animes que realmente achamos que merecem ser recomendados.</h4>-->
                <h1>EXCLUSÃO CONCLUIDA</h1>
		<h2><%=autorSaida.getNome()%></h2>
		<p><b>Idade:</b> <%=autorSaida.getIdade()%> anos</p>
        </section>
    </div>
    </body>
</html>
