<%-- 
    Document   : erroEmpresa
    Created on : 12/11/2015, 03:43:32
    Author     : heito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erro de Cadastro</title>
        <style>
            html{
                background: url(../img/FundoErro.jpg) no-repeat fixed;
                background-size: cover; 
            }
            #error{
                display: block;
                border: 1px solid black;
                border-radius: 5px;
                box-shadow: 0px 0px 3px black;
                text-align: center;
                position: absolute;
                padding-top: 30px;
                padding-left: 50px;
                padding-right: 50px;
                padding-bottom: 10px;
                top: 5%;
                left: 25%;
                background: #C1CDCD;
            }
            #error div{
                display: block;
                position: absolute;
                top: 0px;
                left: 0px;
                right: 0px;
                height: 45px;
                background: blue;
            }
            
            #error button{
                width: 90px;
                height: 40px;
                border-radius: 5px;
                box-shadow: 0px 0px 1px;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <div id="error">
            <div></div>
            <h1>Desculpe ocorreu um erro no sistema!</h1>
            <img src="../img/Error404.png" width="70" height="70"/>
            <h3>Tente efetuar o cadastro novamente, caso o erro venha a persistir<br>
                entre em contato com o Suporte do site! </h3>
            <a href="../jsp/Cadastro_empresa.jsp"> <button>Voltar</button></a>
        </div>
    </body>
</html>

