<%-- 
    Document   : Produtos
    Created on : 13/11/2015, 01:17:18
    Author     : Heitor Victor
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.spot_fitness.entidade.CadastroProdutoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang = "pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Software Coffe" />
        <c:url var="pathResources" value="/resources" /> <%-- CORRIGE URL DO SISTEMA PARA ACESSAR O DIRETÓRIO RESOURCES --%>
        <title>Sport Fitness</title>
        <link href = "${pathResources}/../css/Css_Produtos.css" rel = "stylesheet" type = "text/css"/>
        <link href = "${pathResources}/../css/dropDown.css" rel = "stylesheet" type = "text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    </head>
    <body>
        <form id = "cabecalho" name="form" method="post">
            <div id = "logo"></div>
            <input id="buscar" type="submit" value="" name="submit">
            <input id="inputBusca" type="text" name="busca"/>
            <div id="bemvindo">
                Seja bem vindo Heitor!<br>  
                <hr>
            </div>

            <div id="logoff">
                <a href="${pathResources}/jsp/Login.jsp">Logoff</a>
            </div>
        </form>

        <div id="menu">
            <nav id="nav">
                <div id="nav-wrapper">
                    <ul>
                        <li><a href="jsp/Home.jsp">Home</a></li><li>
                            <a href="jsp/Acessorios.jsp">Acessórios</a></li><li>
                            <a href="jsp/Suportes.jsp">Suportes</a></li><li>
                            <a href="Produtos">Produtos</a></li><li>
                            <a href="jsp/Servicos.jsp">Serviços</a></li><li>
                            <a href="jsp/Roupas.jsp">Roupas</a></li><li>
                            <a href="" style="font-size: 18pt;"><b>+</b>
                                <img src="${pathResources}/../img/arrow_dowm.png" height="20" width="20"/></a>
                            <ul>
                                <li><a href="">Empresa<img src="${pathResources}/../img/arrow_dowm.png" height="20" width="20"/></a>
                                    <ul>
                                        <li><a href="jsp/Cadastro_empresa.jsp">Cadastrar Empresa</a></li>
                                        <li><a href="">Alterar Empresa</a></li>
                                        <li><a href="jsp/ListarEmpresa.jsp">Listar Empresa</a></li>
                                    </ul>
                                </li>
                                <li><a href="">Produto<img src="${pathResources}/../img/arrow_dowm.png" height="20" width="20"/></a>
                                    <ul>
                                        <li><a href="jsp/Cadastro_produto.jsp">Cadastrar Produto</a></li>
                                        <li><a href="">Alterar Produto</a></li>
                                        <li><a href="${pathResources}/../ProdutoLista">Listar Produto</a></li>
                                    </ul>
                                </li>
                                <li><a href="">Funcionário<img src="${pathResources}/../img/arrow_dowm.png" height="20" width="20"/></a>
                                    <ul>
                                        <li><a href="jsp/Cadastro_funcionario.jsp">Cadastrar Funcionário</a></li>
                                        <li><a href="">Alterar Funcionário</a></li>
                                        <li><a href="">Listar Funcionário</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>

        <div id="produto">
            <h1 id="marca"><span>MARCAS</span></h1>
            <ul>
                <li><input type="checkbox"/><img src="${pathResources}/../img/Reebok.png" width="120"/></li>
                <li><input type="checkbox"/><img src="${pathResources}/../img/Kikos.png" width="100"/></li>
                <li><input type="checkbox"/><img src="${pathResources}/../img/Fit4.png" width="100"/></li>
                <li><input type="checkbox"/><img src="${pathResources}/../img/Movement.png" width="120"/></li>
                <li><input type="checkbox"/><img src="${pathResources}/../img/Physicus.png" width="100"/></li>
            </ul>
        </div>
            <div id="ajuste">
                <c:forEach items="${lista}" var="item" varStatus="stat">
                    <div id="infoProd">
                        <div id="imagem">
                            <img src="${pathResources}/../img/imagem.png"/>
                        </div>
                        <div id="informacao">
                            <c:out value="${item.descricao}" />
                        </div>
                        <div id="botoes">
                            <button id="comprar"><b>Comprar</b></button>
                            <button id="descricoes"><b>Descrições</b></button>
                        </div>
                    </div>
                </c:forEach>
            </div>
    </body>
</html>
