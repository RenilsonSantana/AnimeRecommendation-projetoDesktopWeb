<%-- 
    Document   : validaExcluiAnime
    Created on : 23/04/2021, 17:15:36
    Author     : BmnGamer
--%>

<%@page import="animerecommendation.Dao.AnimeDao"%>
<%@page import="animerecommendation.model.Anime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));

    Anime animeEntrada = new Anime(id);
    AnimeDao animeDao = new AnimeDao();
    Anime animeSaida = animeDao.excluir(animeEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Excluir Anime</title>
    <body>
        <div class="recomend">
	<section id="corpo">
            <!--<h4>Animes Recommendation é um site para Otakus que não tem animes para assistir, principalmente otakus novatos que ficam meio perdidos nesse mundo dos animes (Oh e agora? Que anime vou assistir?). Dividimos por gêneros e colocamos só animes que realmente achamos que merecem ser recomendados.</h4>-->
                <h1>EXCLUSÃO CONCLUIDA</h1>
		<img src="../../Imagens/Chibi_zeref.png">
		<h2><%=animeSaida.getNome()%></h2>
		<p><b>Genero:</b> <%=animeSaida.getGenero()%></p>
		<p><b>Episódios:</b> <%=animeSaida.getQtdEpisodios()%></p>
		<p><b>Temporadas:</b> <%=animeSaida.getQtdTemporadas()%></p>
		<p><b>Ano:</b> <%=animeSaida.getAnoDeLancamento()%></p>
                <h3>Sinopse:</h3><p><%=animeSaida.getSinopse()%></p>
		<a href="http://www.superanimes.com/anime/ano-hana" target="_blank">Assista no SuperAnimes</a><br><br>
        </section>
    </div>
    </body>
</html>
