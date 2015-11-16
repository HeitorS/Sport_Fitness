/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sport_fitness.doa;

import com.mycompany.spot_fitness.entidade.CadastroProdutoBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author heito
 */
public class CadastroProdutoDAO extends Conexao {

    private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement pst = null;

    public boolean cadastro(CadastroProdutoBean cadastro) {
        String sql = "insert into produto(codigo,img,nome,categoria,descricao,fabricante,fornecedor,"
                + "altura,largura,profundidade,gasto,valorVenda,lucro)"
                + " value(?,?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            con = conexao();
            pst = con.prepareStatement(sql);

            pst.setString(1, cadastro.getCodigo());
            pst.setBytes(2, cadastro.getImg());
            pst.setString(3, cadastro.getNome());
            pst.setString(4, cadastro.getCategoria());
            pst.setString(5, cadastro.getDescricao());
            pst.setString(6, cadastro.getFabricante());
            pst.setString(7, cadastro.getFornecedor());
            pst.setDouble(8, cadastro.getAltura());
            pst.setDouble(9, cadastro.getLargura());
            pst.setDouble(10, cadastro.getProfundidade());
            pst.setDouble(11, cadastro.getGasto());
            pst.setDouble(12, cadastro.getValorVenda());
            pst.setDouble(13, cadastro.getLucro());

            pst.execute();
            con.close();
            return true;
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println("\n\n\n\n\n" + error + "\n\n\n\n\n");
        }
        return false;
    }

    public List read() {
        String sql = "select * from produto";
        List<CadastroProdutoBean> produtos = new LinkedList<>();
        DecimalFormat arredondar = new DecimalFormat("0.00");
        try {
            con = conexao();
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();

            while (rs.next()) {
                if (rs.getBoolean("habilitado")) {
                    CadastroProdutoBean produto = new CadastroProdutoBean();
                    produto.setId(rs.getInt("idProd"));
                    produto.setCodigo(rs.getString("codigo"));
                    produto.setImg(rs.getBytes("img"));
                    produto.setNome(rs.getString("nome"));
                    produto.setCategoria(rs.getString("categoria"));
                    String dep = "";
                    int cont=0;
                    for (int i = 0; i < rs.getString("descricao").length(); i++) {
                        dep += rs.getString("descricao").charAt(i);
                        cont++;
                        if(cont == 50){
                            dep +="...";
                            break;
                        }
                    }
                    produto.setDescricao(dep);
                    produto.setFabricante(rs.getString("fabricante"));
                    produto.setFornecedor(rs.getString("fornecedor"));
                    produto.setAltura(Double.parseDouble(arredondar.format(rs.getFloat("altura")).replace(",", ".")));
                    produto.setLargura(Double.parseDouble(arredondar.format(rs.getFloat("largura")).replace(",", ".")));
                    produto.setProfundidade(Double.parseDouble(arredondar.format(rs.getFloat("profundidade")).replace(",", ".")));
                    produto.setGasto(Double.parseDouble(arredondar.format(rs.getFloat("gasto")).replace(",", ".")));
                    produto.setValorVenda(Double.parseDouble(arredondar.format(rs.getFloat("valorVenda")).replace(",", ".")));
                    produto.setLucro(Double.parseDouble(arredondar.format(rs.getFloat("lucro")).replace(",", ".")));

                    produtos.add(produto);
                }
            }
            return produtos;
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println("\n\n\n\n\n" + error + "\n\n\n\n");
        }
        return null;
    }

    public boolean update(CadastroProdutoBean prod) {
        String sql = "update produto set habilitado = ? where idProd = ?";

        try {
            con = conexao();

            con = conexao();
            pst = con.prepareStatement(sql);
            pst.setBoolean(1, false);
            pst.setInt(2, prod.getId());

            pst.executeUpdate();
            con.close();
            return true;
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println("\n\n\n" + error + "\n\n\n");
        }

        return false;
    }

    public boolean delete() {

        return false;
    }
}
