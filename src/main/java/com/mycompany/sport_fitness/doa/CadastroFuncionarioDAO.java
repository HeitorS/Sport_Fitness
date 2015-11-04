/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sport_fitness.doa;

import com.mycompany.spot_fitness.entidade.CadastroFuncionarioBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author uriel
 */
public class CadastroFuncionarioDAO extends Conexao {

    private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement pst = null;

    public boolean create(CadastroFuncionarioBean user) {
        String sql = "insert into funcionarios(nome,nascimento,sexo,rg,emissor,emissao,cpf,pais,cidade,estado,cep,numero,"
                + "complemento,telefeone,celular,filial) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            con = conexao();
            pst = con.prepareStatement(sql);

            //dados pessoais
            pst.setString(1, user.getNome());
            pst.setString(2, user.getNascimento());
            pst.setString(3, user.getSexo());
            //documentos
            pst.setString(4, user.getRg());
            pst.setString(5, user.getEmissor());
            pst.setString(6, user.getEmissao());
            pst.setString(7, user.getCpf());

            //naturalização
            pst.setString(8, user.getPais());
            pst.setString(9, user.getCidade());
            pst.setString(10, user.getEstado());

            //endereço
            pst.setInt(11, user.getNumero());
            pst.setString(12, user.getCep());
            pst.setString(13, user.getComplemento());
            pst.setString(14, user.getTelefone());
            pst.setString(15, user.getCelular());

            //Dados Filial
            pst.setInt(16, user.getFilial());

            pst.execute();
            con.close();
            return true;
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println(error);
        }
        return false;
    }

    public List read() {
        String sql = "select * from funcionarios";
        List<CadastroFuncionarioBean> funcionarios = new LinkedList<CadastroFuncionarioBean>();
        try {
            con = conexao();
            pst = con.prepareStatement(sql);

            rs = pst.executeQuery();
            while (rs.next()) {
                CadastroFuncionarioBean fun = new CadastroFuncionarioBean();
                fun.setNome(rs.getString("nome"));
                fun.setNascimento(rs.getString("nascimento"));
                fun.setSexo(rs.getString("sexo"));
                fun.setRg(rs.getString("rg"));
                fun.setEmissor(rs.getString("emissor"));
                fun.setEmissao(rs.getString("emissao"));
                fun.setCpf(rs.getString("cpf"));
                fun.setPais(rs.getString("pais"));
                fun.setCidade(rs.getString("cidade"));
                fun.setEstado(rs.getString("estado"));
                fun.setCep(rs.getString("cep"));
                fun.setNumero(rs.getInt("numero"));
                fun.setComplemento(rs.getString("complemento"));
                fun.setTelefone(rs.getString("telefone"));
                fun.setCelular(rs.getString("celular"));
                fun.setFilial(rs.getInt("filial"));
                
                funcionarios.add(fun);
            }
            return funcionarios;
        } catch (Exception error) {
            System.out.println(error);
        }
        return null;
    }
}
