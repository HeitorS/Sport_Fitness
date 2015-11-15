<%-- 
    Document   : Cadastro_funcionario
    Created on : 12/11/2015, 02:11:11
    Author     : heito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Cadastro de funcionários</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/style_cadastro_funcionarios.css" type="text/css" rel="stylesheet"/>
        <link href="../css/dropDowmCadastro.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <div id="menu">
            <nav id="nav">
                <div id="nav-wrapper">
                    <ul>
                        <li><a href="Home.jsp">Home</a></li><li>
                            <a href="Cadastro_funcionario.jsp">Cadastrar</a></li><li>
                            <a href="#">Alterar</a></li><li>
                            <a href="#">Listar</a></li><li>
                    </ul>
                </div>
            </nav>
        </div>
        <form action="../FuncionarioServlet" method="post">
            <div id="form" class="painel">
                <fieldset class="principais">
                    <header>
                    <h1>CADASTRO DE <span>FUNCIONÁRIOS</span></h1>
                </header>
                    <p class="financeiro"><b>Dados pessoais</b></p>
                    <div id="form">
                        <label for="filial">Filial:</label>
                        <input type="text" id="filial" name="filial" size="10"/>
                    </div>
                    <div id="form">
                        <label for="nome">Nome completo:</label>
                        <input type="text" placeholder="Mike Tyson" id="nome" name="nome" size="70"/>
                    </div>
                    <div id="form">
                        <label for="nascimento">Data de nascimento:</label>
                        <input type="date" name="nascimento" placeholder="01/01/1990"/>
                    </div>
                    <div id="form">
                        <label for="Sexo:">Sexo:</label>
                        <input type="radio" name="sexo" value="Masculino"/>Masculino
                        <input type="radio" name="sexo" value="Feminino"/>Feminino
                    </div id="form">
                    <hr/>
                    <p class="financeiro"><b>Documentos de identificação</b></p>
                    <div id="form">
                        <label for="rg">RG:</label>
                        <input type="text" id="rg" placeholder="99.959.933-3"   name="rg" size="16" maxlength="12"/>
                        <label for="rg">&nbsp;Orgão emissor:</label>
                        <input type="text"  name="emissor" size="4" maxlength="3" placeholder="SP" />
                        <label for="rg">&nbsp;Data de emissão:</label>
                        <input type="text"  name="emissao" size="13" placeholder="01/01/1990"/>
                    </div>
                    <div id="form">
                        <label for="cpf">CPF:</label>
                        <input type="text" id="cpf" placeholder="359.478.140-40" name="cpf" size="15" maxlength="14"/>
                    </div>
                    <hr/>
                    <p class="financeiro"><b>Naturalização</b></p>
                    <div id="form">
                        <label for="pais">Pais:</label>
                        <input type="text" id="pais" name="pais" size="57" placeholder="Brasil"/>
                    </div>
                    <div id="form">
                        <label for="cidade">Cidade: </label>
                        <input type="text" id="cidade" name="cidade" size="20" placeholder="São Paulo"/>
                        <label for="cidade">&nbsp;Estado: </label>
                        <input type="text" id="estado" name="estado" size="20" placeholder="SP"/>
                    </div>
                    <hr/>
                    <p class="financeiro"><b>Informações para contato</b></p>
                    <div id="form">
                        
                        <label for="cep">&nbsp;CEP:</label>
                        <input type="text" id="cep" name="cep" size="17" placeholder="04167-050" maxlength="9"/>
                        <label for="numero">Numero:</label>
                        <input type="text" id="bairro" name="numero" size="33" placeholder="147" />
                    </div>
                    <div id="form">
                        <label for="complemento">Complemento:</label>
                        <input type="text" id="complemento" name="complemento" size="54" placeholder="bloco B, 5° Andar"/>
                    </div>
                    <div id="form">
                        <label for="telefone">Telefone:</label>
                        <input type="text" id="telefone" name="telefone" size="22" placeholder="(xx) xxxx-xxxx" maxlength="14"/>
                        <label for="celular">&nbsp;Celular:</label>
                        <input type="text" id="celular" name="celular" size="22" placeholder="(xx) xxxxx-xxxx" maxlength="15"/>
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
