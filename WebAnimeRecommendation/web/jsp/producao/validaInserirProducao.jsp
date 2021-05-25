<%@page import="animerecommendation.Dao.ProducaoDao"%>
<%@page import="animerecommendation.model.Producao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int idAnime = Integer.parseInt(request.getParameter("ID_ANIME"));
    int idAutor = Integer.parseInt(request.getParameter("ID_AUTOR"));
    String data = request.getParameter("DATA");
    
    Producao producaoEntrada = new Producao(idAnime, idAutor, data);
    ProducaoDao producaoDao = new ProducaoDao();
    producaoDao.inserir(producaoEntrada);
    
    response.sendRedirect("validaListarProducoes.jsp");
%>