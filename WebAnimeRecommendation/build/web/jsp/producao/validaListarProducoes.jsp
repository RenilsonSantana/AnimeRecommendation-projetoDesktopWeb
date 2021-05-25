<%@page import="animerecommendation.model.Autor"%>
<%@page import="animerecommendation.Dao.AutorDao"%>
<%@page import="animerecommendation.Dao.AnimeDao"%>
<%@page import="animerecommendation.model.Anime"%>
<%@page import="java.util.List"%>
<%@page import="animerecommendation.model.Producao"%>
<%@page import="animerecommendation.Dao.ProducaoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ProducaoDao producaoDao = new ProducaoDao();
    List<Producao> listaDeProducao = producaoDao.listar();
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Listar Produções</title>
    <body>
        <div class="recomend">
	<section id="corpo">
            <!--<h4>Animes Recommendation é um site para Otakus que não tem animes para assistir, principalmente otakus novatos que ficam meio perdidos nesse mundo dos animes (Oh e agora? Que anime vou assistir?). Dividimos por gêneros e colocamos só animes que realmente achamos que merecem ser recomendados.</h4>-->
		<h1>Lista de Produções</h1>
                <% if(!(listaDeProducao.isEmpty())) { %>
                    <% for (Producao pro : listaDeProducao){ %>
                    <% 
                        AnimeDao animeDao = new AnimeDao();
                        Anime anime = animeDao.buscar(new Anime(pro.getIdAnime())); 
                        
                        AutorDao autorDao = new AutorDao();
                        Autor autor = autorDao.buscar(new Autor(pro.getIdAutor()));
                    %>
                        <img src="../../Imagens/Chibi_zeref.png">
                        <h2><%=anime.getNome()%></h2>
                        <p><b>Autor:</b> <%=autor.getNome()%></p>
                        <p><b>Genero:</b> <%=anime.getGenero()%></p>
                        <p><b>Episódios:</b> <%=anime.getQtdEpisodios()%></p>
                        <p><b>Temporadas:</b> <%=anime.getQtdTemporadas()%></p>
                        <p><b>Data de Lançamento:</b> <%=pro.getDataDeLancamento()%></p>
                        <h3>Sinopse:</h3><p><%=anime.getSinopse()%></p>
                        <a href="http://www.superanimes.com/anime/ano-hana" target="_blank">Assista no SuperAnimes</a><br/>
                        <a href="alterarProducao.jsp?ID=<%=pro.getId()%>">alterar</a> | 
                        <a href="validaExcluirProducao.jsp?ID=<%=pro.getId()%>">excluir</a>
                        <br><br>
                    <% } %>
                <% } else { %>
                        <h1>NENHUM ANIME ENCONTRADO!</h1>
                <% } %>
        </section>
    </div>
    </body>
</html>