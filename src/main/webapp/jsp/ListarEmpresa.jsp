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
        <h1>Lista dos Dados cadastrados</h1>
        <form>
            <a href="Acessorios.jsp"><button>Voltar</button></a>
        </form>
        
        <table border="1" style="margin-top: 10px;">
            <tr>
                <th>ID</th>
                <th>CNPJ</th>
                <th>CEI</th>
                <th>Razão Social</th>
                <th>Nome Fantasia</th>
                <th>Dono</th>
                <th>Endereço</th>
                <th>Numero</th>
                <th>Complemento</th>
                <th>Bairro</th>
                <th>CEP</th>
                <th>Cidade</th>
                <th>Estado</th>
                <th>Telefone</th>
                <th>Celular</th>
                <th>Email</th>
                <th>Habilitado</th>
            </tr>
            <%
                ArrayList<CadastroEmpresaBean> empresas = (ArrayList<CadastroEmpresaBean>) request.getAttribute("lista");

                for (CadastroEmpresaBean empresa : empresas) {
            %>
            <tr>
                <td><%= empresa.getId()%></td>
                <td><%= empresa.getCnpj()%></td>
                <td><%= empresa.getCei()%></td>
                <td><%= empresa.getRazaoSocial()%></td>
                <td><%= empresa.getNomeFantasia()%></td>
                <td><%= empresa.getDono()%></td>
                <td><%= empresa.getEndereco()%></td>
                <td><%= empresa.getNumero()%></td>
                <td><%= empresa.getComplemento()%></td>
                <td><%= empresa.getBairro()%></td>
                <td><%= empresa.getCep()%></td>
                <td><%= empresa.getCidade()%></td>
                <td><%= empresa.getEstado()%></td>
                <td><%= empresa.getTelefone()%></td>
                <td><%= empresa.getCelular()%></td>
                <td><%= empresa.getEmail()%></td>
                <td><%= empresa.isHabilitada()%></td>
            </tr>

            <%}%>
        </table>
        
    </body>
</html>
