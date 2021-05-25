<%@page import="animerecommendation.model.Autor"%>
<%@page import="animerecommendation.Dao.AutorDao"%>
<%@page import="animerecommendation.model.Anime"%>
<%@page import="animerecommendation.Dao.AnimeDao"%>
<%@page import="animerecommendation.Dao.ProducaoDao"%>
<%@page import="animerecommendation.model.Producao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));

    Producao producaoEntrada = new Producao(id);
    ProducaoDao producaoDao = new ProducaoDao();
    Producao producaoSaida = producaoDao.buscar(producaoEntrada);

    AnimeDao animeDao = new AnimeDao();
    Anime anime = animeDao.buscar(new Anime(producaoSaida.getIdAnime()));

    AutorDao autorDao = new AutorDao();
    Autor autor = autorDao.buscar(new Autor(producaoSaida.getIdAutor()));

    animeDao = new AnimeDao();
    List<Anime> listaDeAnimes = animeDao.listar(new Anime(""));

    autorDao = new AutorDao();
    List<Autor> listaDeAutores = autorDao.listar(new Autor(""));
%>

<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Alterar Producao</title>
    <body>
        <div class="container"/>
        <h1>Alterar Produção</h1>
        <div class="recomend">
            <fieldset class="pessoal">
                <legend>Produção: </legend>
                <form name="alterarProducao" action="validaAlterarProducao.jsp" method="POST">
                    
                    <table>
                        <tr>
                            <td>Anime:</td>
                            <td>
                                <select NAME ="ID_ANIME" class="browser-default">
                                    <option value="<%=anime.getId()%>" selected><%=anime.getNome()%></option>
                                    <% for (Anime ani : listaDeAnimes) {
                                        if(anime.getId() != ani.getId()){%>
                                            <option value="<%=ani.getId()%>"><%=ani.getNome()%></option>
                                    <% } }%>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Autor:</td>
                            <td>
                                <select NAME="ID_AUTOR" class="browser-default">
                                    <option value="<%=autor.getId()%>" selected><%=autor.getNome()%></option>
                                    <% for (Autor aut : listaDeAutores) {
                                    if(autor.getId() != aut.getId()){%>
                                    <option value="<%=aut.getId()%>"><%=aut.getNome()%></option>
                                    <% } }%>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Data de Lançamento:</td>
                            <td><input type="text" name="DATA" value="<%=producaoSaida.getDataDeLancamento()%>"></td>
                        </tr>
                    </table>
                    <input type="hidden" name="ID" value="<%=producaoSaida.getId()%>">
                    <input type="submit" name="Enviar" value="Inserir" class="botao">  <br>
                </form>
            </fieldset>

        </div>                     
    </body>
</html>