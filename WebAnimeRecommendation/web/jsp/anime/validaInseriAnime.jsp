<%-- 
    Document   : validaInseriAnime
    Created on : 22/04/2021, 20:54:43
    Author     : BmnGamer
--%>

<%@page import="animerecommendation.Dao.AnimeDao"%>
<%@page import="animerecommendation.model.Anime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("UTF-8");
    String nome = request.getParameter("NOME");
    String genero = request.getParameter("GENERO");
    int episodios = Integer.parseInt(request.getParameter("EPISODIOS"));
    int temporadas = Integer.parseInt(request.getParameter("TEMPORADAS"));
    int anoLancamento = Integer.parseInt(request.getParameter("LAMCAMENTO"));
    String sinopse = request.getParameter("SINOPSE");

    Anime animeEntrada = new Anime(nome, genero, episodios, temporadas, anoLancamento, sinopse);
    AnimeDao animeDao = new AnimeDao();
    Anime animeSaida = animeDao.inserir(animeEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Insetir Anime</title>
    <body>
    <div class="recomend">
	<section id="corpo">
            <!--<h4>Animes Recommendation é um site para Otakus que não tem animes para assistir, principalmente otakus novatos que ficam meio perdidos nesse mundo dos animes (Oh e agora? Que anime vou assistir?). Dividimos por gêneros e colocamos só animes que realmente achamos que merecem ser recomendados.</h4>-->
		<h1>INCLUSÃO CONCLUIDA</h1>
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
