<%-- 
    Document   : Alteracao_empresa
    Created on : 12/11/2015, 01:53:23
    Author     : heito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Cadastro de empresa</title>
        <c:url var="pathResources" value="/resources" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="${pathResources}/../css/style_cadastro_empresas.css" type="text/css" rel="stylesheet"/>
        <link href="${pathResources}/../css/dropDowmCadastro.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <div id="menu">
            <nav id="nav">
                <div id="nav-wrapper">
                    <ul>
                        <li><a href="Home.jsp">Home</a></li><li>
                            <a href="Cadastro_empresa.jsp">Cadastrar</a></li><li>
                            <a href="#">Alterar</a></li><li>
                            <a href="../ListarEmpresa">Listar</a></li><li>
                    </ul>
                </div>
            </nav>
        </div>
        
        <form action="${pathResources}/../EmpresaLista" method="post" accept-charset="ISO-8859-1,UTF-8">
            <div id="form" class="painel">

                <fieldset class="principais">
                    <header>
                        <h1>DADOS PARA ALTERAÇÃO DA <span>EMPRESA</span></h1>
                    </header>
                    <c:forEach items="${empresa}" var="item" varStatus="stat">
                    <div id="form">
                        <label for="cnpj">CNPJ:</label>
                        <input type="text" id="cnpj" name="cnpj" value="${item.cnpj}" Use readonly="true" />
                        
                    </div>
                    <div id="form">
                        <label for="fantasia">Nome fantasia:</label>
                        <input type="text" id="fantasia" name="nomeFantasia" value="${item.nomeFantasia}"/>
                    </div>
                        
                    <div id="form">
                        <label for="gerente">Gerente/Responsavel da empresa:</label>
                        <input type="text"  id="gerente"  name="dono" size="50" value="${item.dono}"/>

                    </div>
                    <hr/>
                    <p class="financeiro"><b>Contatos</b></p>
                    <div id="form">
                        <label for="telefone">Telefone:</label>
                        <input type="text" value="${item.telefone}"  id="telefone" name="telefone" size="16"/>
                        <label for="celular">&nbsp;Celular:</label>
                        <input type="text" value="${item.celular}"  id="celular" name="celular" size="16"/>
                    </div>
                    <div id="form">
                        <label for="email">Email:</label>
                        <input type="text" value="${item.email}"  id="email" name="email" size="50"/>
                    </div>
                    </c:forEach>
                    
                    <div class="botao_centro">
                        <button class="botao" type="submit">Alterar</button>
                    </div>
                </fieldset>
            </div>
        </form>
    </body>
</html>