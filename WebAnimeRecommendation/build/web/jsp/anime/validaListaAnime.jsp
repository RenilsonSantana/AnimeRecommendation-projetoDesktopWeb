<%-- 
    Document   : validaListaAnime
    Created on : 23/04/2021, 16:53:43
    Author     : BmnGamer
--%>

<%@page import="java.util.List"%>
<%@page import="animerecommendation.model.Anime"%>
<%@page import="animerecommendation.Dao.AnimeDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("UTF-8");
    String genero = request.getParameter("GENERO");

    Anime animeEntrada = new Anime(genero);
    AnimeDao animeDao = new AnimeDao();
    List<Anime> listaDeAnime = animeDao.listarAnimesPorGenero(animeEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Listar Animes</title>
    <body>
        <div class="recomend">
	<section id="corpo">
            <!--<h4>Animes Recommendation é um site para Otakus que não tem animes para assistir, principalmente otakus novatos que ficam meio perdidos nesse mundo dos animes (Oh e agora? Que anime vou assistir?). Dividimos por gêneros e colocamos só animes que realmente achamos que merecem ser recomendados.</h4>-->
		<h1><%=genero%></h1>
                <% if(!(listaDeAnime.isEmpty())) { %>
                    <% for (Anime anime :listaDeAnime){ %>
                        <img src="../../Imagens/Chibi_zeref.png">
                        <h2><%=anime.getNome()%></h2>
                        <p><b>Genero:</b> <%=anime.getGenero()%></p>
                        <p><b>Episódios:</b> <%=anime.getQtdEpisodios()%></p>
                        <p><b>Temporadas:</b> <%=anime.getQtdTemporadas()%></p>
                        <p><b>Ano:</b> <%=anime.getAnoDeLancamento()%></p>
                        <h3>Sinopse:</h3><p><%=anime.getSinopse()%></p>
                        <a href="http://www.superanimes.com/anime/ano-hana" target="_blank">Assista no SuperAnimes</a><br><br>
                    <% } %>
                <% } else { %>
                        <h1>NENHUM ANIME ENCONTRADO!</h1>
                <% } %>
        </section>
    </div>
    </body>
</html>
