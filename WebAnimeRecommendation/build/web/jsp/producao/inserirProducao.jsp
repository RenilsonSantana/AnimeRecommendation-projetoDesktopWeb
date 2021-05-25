<%@page import="animerecommendation.Dao.AutorDao"%>
<%@page import="animerecommendation.model.Autor"%>
<%@page import="animerecommendation.Dao.AnimeDao"%>
<%@page import="animerecommendation.model.Anime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<%
    Anime anime = new Anime("");
    AnimeDao animeDao = new AnimeDao();
    List<Anime> listaDeAnimes = animeDao.listar(anime);

    Autor autor = new Autor("");
    AutorDao autorDao = new AutorDao();
    List<Autor> listaDeAutores = autorDao.listar(autor);

%>

<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Inserir Producao</title>
    <body>
        <div class="container"/>
        <h1>Inseri Produção</h1>
        <div class="recomend">
            <fieldset class="pessoal">
                <legend>Produção: </legend>
                <form name="inserirProducao" action="validaInserirProducao.jsp" method="POST">
                    <table>
                        <tr>
                            <td>Anime:</td>
                            <td>
                                <select NAME ="ID_ANIME" class="browser-default">
                                    <% for (Anime ani : listaDeAnimes) {%>
                                    <option value="<%=ani.getId()%>"><%=ani.getNome()%></option>
                                    <% } %>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Autor:</td>
                            <td>
                                <select NAME="ID_AUTOR" class="browser-default">
                                    <% for (Autor aut : listaDeAutores) {%>
                                    <option value="<%=aut.getId()%>"><%=aut.getNome()%></option>
                                    <% }%>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>Data de Lançamento:</td>
                            <td><input type="text" name="DATA" value=""></td>
                        </tr>
                    </table>    
                    <input type="submit" name="Enviar" value="Inserir" class="botao">  <br>
                </form>
            </fieldset>

        </div>                     
    </body>
</html>
