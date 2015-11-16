<%-- 
    Document   : Testando
    Created on : 19/11/2015, 13:47:51
    Author     : heito
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
<form id="form1" name="form1" method="post" action="">  
  <div align="center"><span class="style1">Registro de Clientes no sistema</span>  
  </div>  
  <div>  
        <div align="center"><a href="CadCliente.jsp" class="style2">Cadastrar Cliente</a> </div>  
  </div>  
  <p> </p>  
  <table width="1117" border="1" align="center">  
    <tr>  
      <td width="53">Código</td>  
      <td width="207">Cliente</td>  
      <td width="171">Endereço</td>  
      <td width="52">Nº</td>  
      <td width="183">Bairro</td>  
      <td width="163">Cidade</td>  
      <td width="125">Telefone Comercial</td>  
      <td width="125">Foto</td>  
      <td width="52">Alterar</td>  
      <td width="53">Excluir</td>  
    </tr>  
    <tr>  
        <td><img src="C:/Users/heito/Pictures/SAO/Kirito4.png" width="100" height="100" /></td>  
      <td> </td>  
      <td> </td>  
    </tr>   
  </table>  
</form> 
    </body>
</html>
