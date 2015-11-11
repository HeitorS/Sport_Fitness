/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sport_fitness.doa;

import com.mycompany.spot_fitness.entidade.CadastroEmpresaBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author heito
 */
public class CadastroEmpresaDAO extends Conexao {

    private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement pst = null;

    public boolean create(CadastroEmpresaBean empresa) {
        String sql = "insert into empresa(cnpj,cei,razaoSocial,nomeFantasia,dono,endereco,numero,"
                + "complemento,bairro,cep,cidade,estado,telefone,celular,email,habilitada)"
                + " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            con = conexao();
            pst = con.prepareStatement(sql);

            pst.setString(1, empresa.getCnpj());
            pst.setString(2, empresa.getCei());
            pst.setString(3, empresa.getRazaoSocial());
            pst.setString(4, empresa.getNomeFantasia());
            pst.setString(5, empresa.getDono());
            pst.setString(6, empresa.getEndereco());
            pst.setInt(7, empresa.getNumero());
            pst.setString(8, empresa.getComplemento());
            pst.setString(9, empresa.getBairro());
            pst.setString(10, empresa.getCep());
            pst.setString(11, empresa.getCidade());
            pst.setString(12, empresa.getEstado());
            pst.setString(13, empresa.getTelefone());
            pst.setString(14, empresa.getCelular());
            pst.setString(15, empresa.getEmail());
            pst.setBoolean(16, true);

            pst.execute();
            con.close();
            return true;
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println("\n\n\n\n" + error + "\n\n\n\n");
        }
        return false;
    }

    public ArrayList read() {
        String sql = "select * from empresa";
        ArrayList<CadastroEmpresaBean> emp = new ArrayList<CadastroEmpresaBean>();

        try {
            con = conexao();
            pst = con.prepareStatement(sql);

            rs = pst.executeQuery();
            while (rs.next()) {
                CadastroEmpresaBean empresa = new CadastroEmpresaBean();
                empresa.setCnpj(rs.getString("cnpj"));
                empresa.setCei(rs.getString("cei"));
                empresa.setRazaoSocial(rs.getString("razaoSocial"));
                empresa.setNomeFantasia(rs.getString("nomeFantasia"));
                empresa.setDono(rs.getString("dono"));
                empresa.setEndereco(rs.getString("endereco"));
                empresa.setNumero(Integer.parseInt(rs.getString("numero")));
                empresa.setComplemento(rs.getString("complemento"));
                empresa.setBairro(rs.getString("bairro"));
                empresa.setCep(rs.getString("cep"));
                empresa.setCidade(rs.getString("cidade"));
                empresa.setEstado(rs.getString("estado"));
                empresa.setTelefone(rs.getString("telefone"));
                empresa.setCelular(rs.getString("celular"));
                empresa.setEmail(rs.getString("emial"));
                empresa.setHabilitada(rs.getBoolean("habilitada"));
                emp.add(empresa);
            }
            con.close();
            return emp;
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println("\n\n\n\n" + error + "\n\n\n\n");
        }
        return null;
    }

    public boolean update(CadastroEmpresaBean empresa) {
        String sql = "update from empresa set dono = ? telefone = ?, celular = ? and email = ?"
                + "where cnpj = ?";
        try {
            con = conexao();
            pst = con.prepareStatement(sql);

            pst.setString(1, empresa.getDono());
            pst.setString(2, empresa.getTelefone());
            pst.setString(3, empresa.getCelular());
            pst.setString(4, empresa.getEmail());
            pst.setString(5, empresa.getCnpj());

            pst.executeUpdate();
            con.close();
            return true;
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println("\n\n\n\n" + error + "\n\n\n\n");
        }
        return false;
    }

    public boolean delete(CadastroEmpresaBean empresa) {
        String sql = "update from empresa set habilitada = ? where cnpj = ?";
        
        try {
            con = conexao();
            pst = con.prepareStatement(sql);
            
            pst.setBoolean(1, false);
            pst.setString(2, empresa.getCnpj());
            pst.executeUpdate();
            con.close();
            return true;
        } catch (SQLException | ClassNotFoundException error) {
            System.out.println("\n\n\n\n" + error + "\n\n\n\n");
        }
        return false;
    }
}
