<%-- 
    Document   : Cadastro_empresa
    Created on : 12/11/2015, 01:53:23
    Author     : heito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Cadastro de empresa</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/style_cadastro_empresas.css" type="text/css" rel="stylesheet"/>
        <link href="../css/dropDowmCadastro.css" type="text/css" rel="stylesheet">
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
        
        <form action="../EmpresaServlet" method="post">
            <div id="form" class="painel">

                <fieldset class="principais">
                    <header>
                        <h1>CADASTRO DE <span>EMPRESA</span></h1>
                    </header>
                    <p class="financeiro"><b>Dados principais</b></p>
                    <div id="form">
                        <label for="cnpj">CNPJ:</label>
                        <input type="text" placeholder="00.000.000/0001-00"  id="id" name="cnpj" size="25" maxlength="19"/>
                        <label for="cei">CEI:</label>
                        <input type="text" name="cei" size="25" maxlength="19"/>
                    </div>
                    <div id="form">
                        <label for="social">Razão social:</label>
                        <input type="text" placeholder="Sport Fitness LTDA."  id="social" name="razaoSocial"  size="53"/>

                    </div>
                    <div id="form">
                        <label for="fantasia">Nome Fantasia:</label>
                        <input type="text" placeholder="Sport Fitness"  id="fantasia" name="nomeFantasia" size="50"/>

                    </div>
                    <div id="form">
                        <label for="gerente">Gerente/Responsavel da empresa:</label>
                        <input type="text" placeholder="Bill Gates"  id="gerente"  name="dono" size="50"/>

                    </div>
                    <hr/>
                    <p class="financeiro"><b>Endereço</b></p>
                    <div id="form">
                        <label for="logadouro">Endereço: </label>
                        <input type="text" placeholder="Rua Arthur Alvino" id="endereco" name="endereco" size="30"/>
                        <label for="numero">&nbsp;Número:</label>
                        <input type="text" placeholder="147" id="numero" name="numero" size="7"/>
                    </div>
                    <div id="form">
                        <label for="complemento">Complemento:</label>
                        <input type="text" placeholder="Bloco B, 5° Andar" id="complemento" name="complemento" size="59"/>
                    </div>
                    <div id="form">
                        <label for="bairro">Bairro:</label>
                        <input type="text" placeholder="Vila Mariana"  id="bairro" name="bairro" size="45"/>
                        <label for="bairro">&nbsp;CEP:</label>
                        <input type="text" placeholder="04198-065"  id="bairro" name="cep" size="11" maxlength="9"/>
                    </div>
                    <div id="form">
                        <label for="Cidade">Cidade:</label>
                        <input type="text" placeholder="São Paulo"  id="cidade" name="cidade" size="44"/>
                        <label for="Cidade">&nbsp;Estado:</label>
                        <select name="estado">
                            <option>SP</option>
                            <option>RJ</option>
                            <option>BA</option>
                            <option>BH</option>
                        </select>
                    </div>

                    <hr/>
                    <p class="financeiro"><b>Contatos</b></p>
                    <div id="form">
                        <label for="telefone">Telefone:</label>
                        <input type="text" placeholder="(11) 3344-5566"  id="telefone" name="telefone" size="16"/>
                        <label for="celular">&nbsp;Celular:</label>
                        <input type="text" placeholder="(11) 98751-6354"  id="celular" name="celular" size="16"/>
                    </div>
                    <div id="form">
                        <label for="email">Email:</label>
                        <input type="text" placeholder="sport-fitness@dominio.com"  id="email" name="email" size="50"/>
                    </div>
                    <div id="form">
                        <label for="habilitada">Estado da empresa: </label>
                        <input type="radio" name="habilitada" value="H"/>Habilitado
                        <input type="radio" name="habilitada" value="D"/>Desabilitado
                    </div>
                    <div class="botao_centro">
                        <button class="botao" type="submit">Salvar</button>
                        <button class="botao" type="button">Limpar</button>
                    </div>
                </fieldset>
            </div>
        </form>
    </body>
</html>