<%-- 
    Document   : ListarEmpresa
    Created on : 13/11/2015, 02:13:40
    Author     : heito
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.spot_fitness.entidade.CadastroEmpresaBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Dados</title>
        <c:url var="pathResources" value="/resources" /> <%-- CORRIGE URL DO SISTEMA PARA ACESSAR O DIRETÓRIO RESOURCES --%>
        <link href="${pathResources}/../css/Listas.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="busca">
            <input type="search" placeholder="Busque o seu produto aqui"/>
            <a href="${pathResources}/../EmpresaLista?acao=listar"><button>Buscar</button></a>
        </div>
        <table rules="rows">
            <tr>
                <th>Código</th>
                <th>Cnpj</th>
                <th>CEI</th>
                <th>Razao Social</th>
                <th>Nome fantasia</th>
                <th>Gerente</th>
                <th>Endereço</th>
                <th>Numero</th>
                <th>Complemento</th>
                <th>Bairro</th>
                <th>CEP</th>
                <th>Cidade</th>
                <th>Estado</th>
                <th>Telefone</th>
                <th>Celular</th>
                <th>E-mail</th>
                <th>Habilitada</th>
                <th>Desabilitar</th>
                <th>Alterar</th>
            </tr>
            <c:forEach items="${lista}" var="item" varStatus="stat">
                <tr>
                    <td><c:out value="${item.id}" /></td>
                    <td><c:out value="${item.cnpj}" /></td>
                    <td><c:out value="${item.cei}" /></td>
                    <td><c:out value="${item.razaoSocial}" /></td>
                    <td><c:out value="${item.nomeFantasia}" /></td>
                    <td><c:out value="${item.dono}" /></td>
                    <td><c:out value="${item.endereco}" /></td>
                    <td><c:out value="${item.numero}" /></td>
                    <td><c:out value="${item.complemento}" /></td>
                    <td><c:out value="${item.bairro}" /></td>
                    <td><c:out value="${item.cep}" /></td>
                    <td><c:out value="${item.cidade}" /></td>
                    <td><c:out value="${item.estado}" /></td>
                    <td><c:out value="${item.telefone}" /></td>
                    <td><c:out value="${item.celular}" /></td>
                    <td><c:out value="${item.email}" /></td>
                    <td><c:out value="${item.habilitada}" /></td>
                    <td><a href="${pathResources}/../EmpresaLista?acao=exc&cnpj=${item.cnpj}"><img src="${pathResources}/../img/Remover.png" width="40"/></a></td>
                    <td><a href="${pathResources}/../EmpresaLista?acao=alt&cnpj=${item.cnpj}"><img src="${pathResources}/../img/Editar.png" width="40"/></a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
