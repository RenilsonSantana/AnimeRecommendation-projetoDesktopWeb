<%-- 
    Document   : validaListaAnime
    Created on : 23/04/2021, 16:53:43
    Author     : BmnGamer
--%>

<%@page import="java.util.List"%>
<%@page import="animerecommendation.model.Autor"%>
<%@page import="animerecommendation.Dao.AutorDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("UTF-8");
    String nome = request.getParameter("NOME");

    Autor autorEntrada = new Autor(nome);
    AutorDao autorDao = new AutorDao();
    List<Autor> listaDeAutores = autorDao.listar(autorEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Listar Autor</title>
    <body>
        <div class="recomend">
	<section id="corpo">
            <!--<h4>Animes Recommendation é um site para Otakus que não tem animes para assistir, principalmente otakus novatos que ficam meio perdidos nesse mundo dos animes (Oh e agora? Que anime vou assistir?). Dividimos por gêneros e colocamos só animes que realmente achamos que merecem ser recomendados.</h4>-->
		<h1><%=nome%></h1>
                <% if(!(listaDeAutores.isEmpty())) { %>
                    <% for (Autor autor : listaDeAutores){ %>
                        <h2><%=autor.getNome()%></h2>
                        <p><b>Idade:</b> <%=autor.getIdade()%> anos</p>
                    <% } %>
                <% } else { %>
                        <h1>NENHUM AUTOR ENCONTRADO!</h1>
                <% } %>
        </section>
    </div>
    </body>
</html>
