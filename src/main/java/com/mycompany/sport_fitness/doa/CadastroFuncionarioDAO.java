/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sport_fitness.doa;

import com.mycompany.spot_fitness.entidade.CadastroFuncionarioBean;
import com.mycompany.spot_fitness.entidade.LoginBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
                + "complemento,telefone,celular,filial) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            con = conexao();
            pst = con.prepareStatement(sql);

            pst.setString(1, user.getNome());
            pst.setString(2, user.getNascimento());
            pst.setString(3, user.getSexo());
            pst.setString(4, user.getRg());
            pst.setString(5, user.getEmissor());
            pst.setString(6, user.getEmissao());
            pst.setString(7, user.getCpf());
            pst.setString(8, user.getPais());
            pst.setString(9, user.getCidade());
            pst.setString(10, user.getEstado());
            pst.setString(11, user.getCep());
            pst.setInt(12, user.getNumero());
            pst.setString(13, user.getComplemento());
            pst.setString(14, user.getTelefone());
            pst.setString(15, user.getCelular());
            pst.setInt(16, user.getFilial());

            pst.execute();
            System.out.println("\n\n\n\n\n Funcionário cadastrado com sucesso\n\n\n\n\n\n\n");
            int cont = 0;
            String userName = "";
            for (int i = 0; i < user.getNome().length(); i++) {
                if (user.getNome().charAt(i) == ' ') {
                    if (cont < 1) {
                        userName += user.getNome().charAt(i);
                    }
                    cont++;
                } else if (cont < 2) {
                    userName += user.getNome().charAt(i);
                } else {
                    break;
                }
            }
            System.out.println("\n\n\n\n\n\n\n Login do usuário criado com sucesso: " + userName + "\n\n\n\n\n\n\n\n");
            LoginBean login = new LoginBean();
            login.setNameUser(userName);
            login.setPasUser("1234");
            LoginDAO criar = new LoginDAO();
            criar.create(login);
            con.close();
            return true;
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println("\n\n\n\n" + error + "\n\n\n\n");
        }
        return false;
    }

    public ArrayList read() {
        String sql = "select * from funcionarios";
        ArrayList<CadastroFuncionarioBean> funcionarios = new ArrayList<CadastroFuncionarioBean>();
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
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println(error);
        }
        return null;
    }

    public boolean update(CadastroFuncionarioBean fun) {
        String sql = "update Funcionarios set cep = ?, numero = ? complemento = ?, telefone = ?,"
                + " celular = ? and filial = ? where nome = ?";
        try {
            con = conexao();
            pst = con.prepareStatement(sql);
            pst.setString(1, fun.getCep());
            pst.setInt(2, fun.getNumero());
            pst.setString(3, fun.getComplemento());
            pst.setString(4, fun.getTelefone());
            pst.setString(5, fun.getCelular());
            pst.setInt(6, fun.getFilial());
            pst.setString(7, fun.getNome());

            pst.executeUpdate();
            con.close();
            return true;
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println("\n\n\n" + error + "\n\n\n");
        }

        return false;
    }
    
    public int selectID(CadastroFuncionarioBean fun){
        String sql = "select codFun from funcionarios where nome = ?";
        
        try {
            con = conexao();
            pst = con.prepareStatement(sql);
            pst.setString(1, fun.getNome());
            rs = pst.executeQuery();
            while(rs.next()){
                int a = rs.getInt("codFun"); 
                return a;
            }
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println("\n\n\n\n"+error+"\n\n\n\n");
        }
        return 0;
    }
}
