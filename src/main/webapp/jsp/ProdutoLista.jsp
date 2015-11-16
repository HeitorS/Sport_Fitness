<%-- 
    Document   : ProdutoLista
    Created on : 18/11/2015, 09:30:00
    Author     : Heitor Victor
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.spot_fitness.entidade.CadastroProdutoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Produtos</title>
        <c:url var="pathResources" value="/resources" /> <%-- CORRIGE URL DO SISTEMA PARA ACESSAR O DIRETÓRIO RESOURCES --%>
        <link href="${pathResources}/../css/ProdutoLista.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="${pathResources}/../ProdutoLista" method="get">
            <div id="busca">
                <input type="search" placeholder="Busque o seu produto aqui"/>
                <button>Buscar</button>
            </div>
            <div id="tabela">
                <table rules="rows">
                    <tr>
                        <th>ID</th>
                        <th>Código</th>
                        <th>Nome</th>
                        <th>Categoria</th>
                        <th>Descrição</th>
                        <th width="140">Fabricante</th>
                        <th>Fornecedor</th>
                        <th>Altura</th>
                        <th>Largura</th>
                        <th>Profundidade</th>
                        <th>Gastos</th>
                        <th>Venda</th>
                        <th>Lucro</th>
                        <th>Excluir</th>
                        <th>Alterar</th>
                    </tr>
                    <c:forEach items="${lista}" var="item" varStatus="stat">
                        <tr>
                            <td><c:out value="${item.id}" /></td>
                            <td><c:out value="${item.codigo}" /></td>
                            <td><c:out value="${item.nome}" /></td>
                            <td><c:out value="${item.categoria}" /></td>
                            <td><c:out value="${item.descricao}" /></td>
                            <td><c:out value="${item.fabricante}" /></td>
                            <td><c:out value="${item.fornecedor}" /></td>
                            <td><c:out value="${item.altura}" /></td>
                            <td><c:out value="${item.largura}" /></td>
                            <td><c:out value="${item.profundidade}" /></td>
                            <td><c:out value="${item.gasto}" /></td>
                            <td><c:out value="${item.valorVenda}" /></td>
                            <td><c:out value="${item.lucro}" /></td>
                            <td><a href="${pathResources}/../ProdutoLista?acao=exc"><img src="${pathResources}/../img/Remover.png" width="40"/></a></td>
                            <td><a href=""><img src="${pathResources}/../img/Editar.png" width="40"/></a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div id="adicionar">
                <a href="jsp/Cadastro_produto.jsp"><img src="${pathResources}/../img/Adicionar.png" width="40"/></a>
            </div>
        </form>
    </body>
</html>
