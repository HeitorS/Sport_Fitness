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

/**
 *
 * @author heito
 */
public class CadastroProdutoDAO extends Conexao {
    private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement pst = null;

    public boolean cadastro(CadastroProdutoBean cadastro) {
        String sql = "insert into produtos(codigo,nome,categoria,descricao,fabricante,fornecedor,altura,largura,profundidade,valorcompra,valorvenda,lucro) value(?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            con = conexao();
            pst = con.prepareStatement(sql);
            pst.setInt(1, cadastro.getCodigo());
            pst.setString(2, cadastro.getNome());
            pst.setString(3, cadastro.getCategoria());
            pst.setString(4, cadastro.getDescricao());
            pst.setString(5, cadastro.getFabricante());
            pst.setString(6, cadastro.getFornecedor());
            pst.setDouble(7, cadastro.getAltura());
            pst.setDouble(8, cadastro.getLargura());
            pst.setDouble(9, cadastro.getProfundidade());
            pst.setDouble(10, cadastro.getValorCompra());
            pst.setDouble(11, cadastro.getValorVenda());
            pst.setDouble(12, cadastro.getLucro());
            
            pst.executeUpdate();
            con.close();
            return true;
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println(error);
        }
        return false;
    }
}


























































