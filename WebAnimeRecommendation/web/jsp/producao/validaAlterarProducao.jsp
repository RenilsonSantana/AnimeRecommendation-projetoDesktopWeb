<%@page import="animerecommendation.Dao.ProducaoDao"%>
<%@page import="animerecommendation.model.Producao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    int idAnime = Integer.parseInt(request.getParameter("ID_ANIME"));
    int idAutor = Integer.parseInt(request.getParameter("ID_AUTOR"));
    String dataLancamento = request.getParameter("DATA");
    Producao producao = new Producao(id, idAnime, idAutor, dataLancamento);
    ProducaoDao producaoDao = new ProducaoDao();
    producao = producaoDao.alterar(producao);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    response.sendRedirect("validaListarProducoes.jsp");
%>    
    
    