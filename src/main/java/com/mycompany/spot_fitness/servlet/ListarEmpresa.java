/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spot_fitness.servlet;

import com.mycompany.sport_fitness.doa.CadastroEmpresaDAO;
import com.mycompany.spot_fitness.entidade.CadastroEmpresaBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author heito
 */
@WebServlet(name = "ListarEmpresa", urlPatterns = {"/ListarEmpresa"})
public class ListarEmpresa extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ArrayList<CadastroEmpresaBean> empresas = new ArrayList<CadastroEmpresaBean>();
        CadastroEmpresaDAO lista = new CadastroEmpresaDAO();
        empresas = lista.read();
        PrintWriter saida = response.getWriter();
        for (int i = 0; i < empresas.size(); i++) {

            saida.println("\nCNPJ: " + empresas.get(i).getCnpj());
            saida.println("\nCEI: " + empresas.get(i).getCei());
            saida.println("\nRazão Social: " + empresas.get(i).getRazaoSocial());
            saida.println("\nNome Fantasia: " + empresas.get(i).getNomeFantasia());
            saida.println("\nDono/Gerente Filial: " + empresas.get(i).getDono());
            saida.println("\nEndereço: " + empresas.get(i).getEndereco());
            saida.println("\nNúmero: " + empresas.get(i).getNumero());
            saida.println("\nComplemento: " + empresas.get(i).getComplemento());
            saida.println("\nBairro: " + empresas.get(i).getBairro());
            saida.println("\nCEP: " + empresas.get(i).getCep());
            saida.println("\nCidade: " + empresas.get(i).getCidade());
            saida.println("\nEstado: " + empresas.get(i).getEstado());
            saida.println("\nTelefone: " + empresas.get(i).getTelefone());
            saida.println("\nCelular: " + empresas.get(i).getCelular());
            saida.println("\nEmail: " + empresas.get(i).getEmail());
            saida.println("\n====================================================================\n\n\n");

        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
