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
            System.out.println("\n\n\n\n\n"+error+"\n\n\n\n\n");
        }
        return false;
    }
}


























































