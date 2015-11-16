<%-- 
    Document   : ListarEmpresa
    Created on : 13/11/2015, 02:13:40
    Author     : heito
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.spot_fitness.entidade.CadastroEmpresaBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Dados</title>
        <link href="../css/Listas.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <table rules="rows">
            <tr>
                <th id="first">ID</th>
                <th>Razão Social</th>
                <th>Nome Fantasia</th>
                <th>Dono</th>
                <th>CEP</th>
                <th>Cidade</th>
                <th>Estado</th>
                <th>Telefone</th>
                <th>Celular</th>
                <th>E-mail</th>
                <th id="last">Ativo</th>
            </tr>
            
        </table>
    </body>
</html>
