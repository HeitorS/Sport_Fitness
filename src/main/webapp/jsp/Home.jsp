<%-- 
    Document   : Home
    Created on : 12/11/2015, 03:52:52
    Author     : heito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Software Coffe" />
        <title>Sport Fitness</title>
        <link href = "../css/Css_Home.css" rel = "stylesheet" type = "text/css"/>
        <link href = "../css/dropDown.css" rel = "stylesheet" type = "text/css"/>
        <script src="../js/Home.js" type="text/javascript"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

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
                <a href="Login.html">Logoff</a>
            </div>
        </form>


        <div id="menu">
            <nav id="nav">
                <div id="nav-wrapper">
                    <ul>
                        <li><a href="Home.html">Home</a></li><li>
                            <a href="Acessorios.html">Acessorios</a></li><li>
                            <a href="Suportes.html">Suportes</a></li><li>
                            <a href="Produtos.html">Produtos</a></li><li>
                            <a href="Servicos.html">Servicos</a></li><li>
                            <a href="Roupas.html">Roupas</a></li><li>
                            <a href="" style="font-size: 18pt;"><b>+</b>
                                <img src="../img/arrow_dowm.png" height="20" width="20"/></a>
                            <ul>
                                <li><a href="Cadastro_empresa.html">Empresa</a></li>
                                <li><a href="Cadastro_produto.html">Produto</a></li>
                                <li><a href="Cadastro_funcionario.html">Funcionario</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>

        <div id="noticia">
            <h1 id="noticias"><span id="title" >Notícias</span></h1>
            <a href="#">
                <div>

                    <div id="img">
                        <img src="../img/Site_06.png" width="170" height="100"/>
                    </div>

                    <div id="notificacao">
                        Sua notificaçao vem aqui!
                    </div>
                </div>
            </a>
            <a href="#">
                <div>

                    <div id="img">
                        <img src="../img/Site_06.png" width="170" height="100"/>
                    </div>

                    <div id="notificacao">
                        Sua notificaçao vem aqui!
                    </div>
                </div>
            </a>
            <a href="#">
                <div>

                    <div id="img">
                        <img src="../img/Site_06.png" width="170" height="100"/>
                    </div>

                    <div id="notificacao">
                        Sua notificaçao vem aqui!
                    </div>
                </div>
            </a>
            <a href="#">
                <div>

                    <div id="img">
                        <img src="../img/Site_06.png" width="170" height="100"/>
                    </div>

                    <div id="notificacao">
                        Sua notificaçao vem aqui!
                    </div>
                </div>
            </a>
        </div>

        <div id="slideShow">
            <input id="anterior" type="submit" value="<" name="Anterior"/>
            <input id="proximo" type="submit" value=">" name="roximo"/>
            <div id="info"><label>Infromações vem aqui</label></div>
        </div>
    </body>
</html>
