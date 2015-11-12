<%-- 
    Document   : Servicos
    Created on : 13/11/2015, 01:24:01
    Author     : heito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Software Coffe" />
        <title>Sport Fitness</title>
        <link href = "../css/Css_Servicos.css" rel = "stylesheet" type = "text/css"/>
        <link href = "../css/dropDown.css" rel = "stylesheet" type = "text/css"/>
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
                <a href="Login.jsp">Logoff</a>
            </div>
        </form>

        <div id="menu">
            <nav id="nav">
                <div id="nav-wrapper">
                    <ul>
                        <li><a href="Home.jsp">Home</a></li><li>
                            <a href="Acessorios.jsp">Acessórios</a></li><li>
                            <a href="Suportes.jsp">Suportes</a></li><li>
                            <a href="Produtos.jsp">Produtos</a></li><li>
                            <a href="Servicos.jsp">Serviços</a></li><li>
                            <a href="Roupas.jsp">Roupas</a></li><li>
                            <a href="" style="font-size: 18pt;"><b>+</b>
                                <img src="../img/arrow_dowm.png" height="20" width="20"/></a>
                            <ul>
                                <li><a href="Cadastro_empresa.jsp">Empresa</a></li>
                                <li><a href="Cadastro_produto.jsp">Produto</a></li>
                                <li><a href="Cadastro_funcionario.jsp">Funcionário</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </body>
</html>

