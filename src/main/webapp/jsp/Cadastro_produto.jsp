<%-- 
    Document   : Cadastro_produto
    Created on : 12/11/2015, 05:31:51
    Author     : heito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Cadastro de produtos</title>
        <meta charset="UTF-8" >
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/style_cadastro_produtos.css" type="text/css" rel="stylesheet"/>
    </head>
    <body >
        <form action="../ProdutoServlet" method="post">
            <div class="painel">

                <fieldset class="principais">
                    <header>
                        <h1>CADASTRO DE <span>PRODUTOS</span></h1>
                    </header>
                    <p class="financeiro"><b>Dados principais do produtos</b></p>
                    <div id="img">
                        <img src="../img/imagem.png"/>
                    </div>
                    <div>
                        <input type="file" name="imagens" accept="image/gif, image/jpeg, image/png"/>
                    </div>
                    <div>
                        <label for="id">Código de barra:</label>
                        <input type="text" placeholder="7671283871267365121312" id="codigo" name="codigo" size="30" style="text-align: center;"/>
                    </div>
                    <div>
                        <label for="nome">Nome:</label>
                        <input type="text" placeholder="Suporte de Barra de parede"  id="nome" name="nome" size="70"/>
                    </div>
                    <div>
                        <label for="categoria">Categoria:</label>
                        <select name="categoria">
                            <option>Acessórios</option>
                            <option>Suportes</option>
                            <option>Produtos</option>
                            <option>Serviços</option>
                            <option>Roupas</option>
                        </select>
                    </div>
                    <div>
                        <label for="descricao">Descrição:</label>
                        <input type="text" placeholder="Suporte para pendurar todos os tipos de barras" id="descricao" name="descricao" size="66"/>
                    </div>
                    <div>
                        <label for="fabricante">Fabricante:</label>
                        <input type="text" placeholder="Fundição"  id="fabricante" name="fabricante" size="65"/>
                    </div>
                    <div>
                        <label for="fabricante">Fornecedor:</label>
                        <input type="text" placeholder="Fassa Fit"  id="fornecedor" name="fornecedor" size="64"/>
                    </div>
                    <hr/>
                    <p class="financeiro"><b>Dados complementares</b></p>
                    <div>
                        <label for="altura">Altura:</label>
                        <input type="text" placeholder=" 250 cm"  id="altura" name="altura" size="10"/>
                        <label for="largura">Largura:</label>
                        <input type="text" placeholder=" 100 cm"  id="largura" name="largura" size="10"/>
                    </div>
                    <div>
                        <label for="altura">Profundidade:</label>
                        <input type="text"  placeholder=" 50 cm" id="profundidade" name="profundidade" size="10"/>
                    </div>
                    <hr/>
                    <p class="financeiro"><b>Financeiro</b></p>
                    <div>
                        <label for="Gastos">Gastos: (R$)</label>
                        <input type="text" placeholder=" 50,00" id="gastos" name="gastos" size="8"/>
                        <label for="valorVenda">Valor da venda: (R$)</label>
                        <input type="text" placeholder=" 75,00" id="valorCompra" name="valorVenda" size="8"/>
                        <label for="lucro">% Lucro:</label>
                        <input type="text" placeholder=" 25,00" id="lucro" name="lucro" size="5"/>
                    </div>
                    <div class="botao_centro">
                        <button class="botao" type="submit">Salvar</button>
                        <button class="botao" type="button">Limpar</button>
                        <a href="Home.jsp"><button class="botao" type="button">Voltar</button></a>
                    </div>
                </fieldset>
            </div>
        </form>
    </body>
</html>
