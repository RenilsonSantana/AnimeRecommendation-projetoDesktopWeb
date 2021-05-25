<%-- 
    Document   : index
    Created on : 22/04/2021, 19:28:51
    Author     : BmnGamer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <head>
        <title>Menu</title>
        <link rel="stylesheet" type="text/css" href="css/Estilo.css" media="screen and (min-width:641px)" />
        <link rel="stylesheet" type="text/css" href="css/Estilo-celular.css" media="screen and (max-width:640px)" />
        <link rel="shortcut icon" href="Imagens/Chibi_zeref.png" type="image/x-icon">
    </head>
    <body>
        <h1>Menu</h1>
        <div aling="center">
        <ol aling="center">
            <li><a href="jsp/anime/inserirAnime.jsp">Insetir Anime</a></li>
            <li><a href="jsp/anime/alterarAnime.jsp">Alterar Anime</a></li>
            <li><a href="jsp/anime/buscarAnime.jsp">Buscar Anime</a></li>
            <li><a href="jsp/anime/listarAnime.jsp">Listar Anime</a></li>
            <li><a href="jsp/anime/excluirAnime.jsp">Deletar Anime</a></li>
            <br/>
            <li><a href="jsp/autor/inserirAutor.jsp">Insetir Autor</a></li>
            <li><a href="jsp/autor/alterarAutor.jsp">Alterar Autor</a></li>
            <li><a href="jsp/autor/buscarAutor.jsp">Buscar Autor</a></li>
            <li><a href="jsp/autor/listarAutor.jsp">Listar Autor</a></li>
            <li><a href="jsp/autor/excluirAutor.jsp">Deletar Autor</a></li>
            <br/>
            <li><a href="jsp/producao/inserirProducao.jsp">Insetir Produção</a></li>
            <li><a href="jsp/producao/buscarProducao.jsp">Buscar Produção</a></li>
            <li><a href="jsp/producao/validaListarProducoes.jsp">Listar Produção</a></li>
        </ol>
    </body>
</html>
