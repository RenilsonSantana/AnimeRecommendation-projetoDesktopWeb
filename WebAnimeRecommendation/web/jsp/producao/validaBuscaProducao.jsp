<%-- 
    Document   : validaBuscaAnime
    Created on : 23/04/2021, 16:43:30
    Author     : BmnGamer
--%>

<%@page import="animerecommendation.model.Autor"%>
<%@page import="animerecommendation.Dao.AutorDao"%>
<%@page import="animerecommendation.Dao.AutorDao"%>
<%@page import="animerecommendation.model.Anime"%>
<%@page import="animerecommendation.Dao.AnimeDao"%>
<%@page import="animerecommendation.Dao.ProducaoDao"%>
<%@page import="animerecommendation.model.Producao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));

    Producao producaoEntrada = new Producao(id);
    ProducaoDao producaoDao = new ProducaoDao();
    Producao producaoSaida = producaoDao.buscar(producaoEntrada);

    AnimeDao animeDao = new AnimeDao();
    Anime anime = animeDao.buscar(new Anime(producaoSaida.getIdAnime()));

    AutorDao autorDao = new AutorDao();
    Autor autor = autorDao.buscar(new Autor(producaoSaida.getIdAutor()));
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Buscar Producao</title>
    <body>
        <div class="recomend">
            <section id="corpo">
                <!--<h4>Animes Recommendation é um site para Otakus que não tem animes para assistir, principalmente otakus novatos que ficam meio perdidos nesse mundo dos animes (Oh e agora? Que anime vou assistir?). Dividimos por gêneros e colocamos só animes que realmente achamos que merecem ser recomendados.</h4>-->
                <h1>BUSCA CONCLUIDA</h1>
                <img src="../../Imagens/Chibi_zeref.png">
                        <h2><%=anime.getNome()%></h2>
                        <p><b>Autor:</b> <%=autor.getNome()%></p>
                        <p><b>Genero:</b> <%=anime.getGenero()%></p>
                        <p><b>Episódios:</b> <%=anime.getQtdEpisodios()%></p>
                        <p><b>Temporadas:</b> <%=anime.getQtdTemporadas()%></p>
                        <p><b>Data de Lançamento:</b> <%=producaoSaida.getDataDeLancamento()%></p>
                        <h3>Sinopse:</h3><p><%=anime.getSinopse()%></p>
                        <a href="http://www.superanimes.com/anime/ano-hana" target="_blank">Assista no SuperAnimes</a><br><br>
            </section>
        </div>
    </body>
</html>
