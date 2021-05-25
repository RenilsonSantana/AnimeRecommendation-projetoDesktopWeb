<%@page import="animerecommendation.Dao.ProducaoDao"%>
<%@page import="animerecommendation.model.Producao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Producao producaoEntrada = new Producao(id);
    ProducaoDao producaoDao = new ProducaoDao();
    Producao producaoSaida = producaoDao.excluir(producaoEntrada);
    
    response.sendRedirect("validaListarProducoes.jsp");
%>

