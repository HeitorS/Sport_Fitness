<%-- 
    Document   : Acessorios
    Created on : 12/11/2015, 01:50:14
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
        <link href = "../css/Css_Acessorios.css" rel = "stylesheet" type = "text/css"/>
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
                            <a href="../Produtos">Produtos</a></li><li>
                            <a href="Servicos.jsp">Serviços</a></li><li>
                            <a href="Roupas.jsp">Roupas</a></li><li>
                            <a href="" style="font-size: 18pt;"><b>+</b>
                                <img src="../img/arrow_dowm.png" height="20" width="20"/></a>
                            <ul>
                                <li><a href="">Empresa<img src="../img/arrow_dowm.png" height="20" width="20"/></a>
                                    <ul>
                                        <li><a href="Cadastro_empresa.jsp">Cadastrar Empresa</a></li>
                                        <li><a href="">Alterar Empresa</a></li>
                                        <li><a href="ListarEmpresa.jsp">Listar Empresa</a></li>
                                    </ul>
                                </li>
                                <li><a href="">Produto<img src="../img/arrow_dowm.png" height="20" width="20"/></a>
                                    <ul>
                                        <li><a href="Cadastro_produto.jsp">Cadastrar Produto</a></li>
                                        <li><a href="">Alterar Produto</a></li>
                                        <li><a href="../ProdutoLista">Listar Produto</a></li>
                                    </ul>
                                </li>
                                <li><a href="">Funcionário<img src="../img/arrow_dowm.png" height="20" width="20"/></a>
                                    <ul>
                                        <li><a href="Cadastro_funcionario.jsp">Cadastrar Funcionário</a></li>
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

        <section id="choices">
            <ul>
                <a href=""><li id="choice1"><p>Acessórios</p></li></a>
                <a href=""><li id="choice2"><p>Protetores</p></li></a>
                <a href=""><li id="choice3"><p>Tapetes</p></li></a>
            </ul>
        </section>

    </body>
</html>

