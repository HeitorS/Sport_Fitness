/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spot_fitness.servlet;

import com.mycompany.sport_fitness.doa.CadastroEmpresaDAO;
import com.mycompany.spot_fitness.entidade.CadastroEmpresaBean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author felipe
 */
@WebServlet(name = "EmpresaServlet", urlPatterns = {"/EmpresaServlet"})
public class EmpresaServlet extends HttpServlet {

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
        CadastroEmpresaBean empresa = new CadastroEmpresaBean();

        empresa.setCnpj(request.getParameter("cnpj"));
        empresa.setCei(request.getParameter("cei"));
        empresa.setRazaoSocial(request.getParameter("razaoSocial"));
        empresa.setNomeFantasia(request.getParameter("nomeFantasia"));
        empresa.setDono(request.getParameter("dono"));
        empresa.setEndereco(request.getParameter("endereco"));
        empresa.setNumero(Integer.parseInt(request.getParameter("numero")));
        empresa.setComplemento(request.getParameter("complemento"));
        empresa.setBairro(request.getParameter("bairro"));
        empresa.setCep(request.getParameter("cep"));
        empresa.setCidade(request.getParameter("cidade"));
        empresa.setEstado(request.getParameter("estado"));
        empresa.setTelefone(request.getParameter("telefone"));
        empresa.setCelular(request.getParameter("celular"));
        empresa.setEmail(request.getParameter("email"));
        String a = request.getParameter("habilitado");
        if (a=="H") {
            empresa.setHabilitada(true);
        } else {
            empresa.setHabilitada(false);
        }
        try {
            CadastroEmpresaDAO emp = new CadastroEmpresaDAO();
            boolean verd = emp.create(empresa);
            if (verd) {
                response.sendRedirect("jsp/Home.jsp");
            } else {
                response.sendRedirect("erroJSP/erroEmpresa.jsp");
            }
        } catch (Exception error) {
            System.out.println("\n\n\n\n" + error + "\n\n\n\n");
            response.sendRedirect("erroJSP/erroEmpresa.jsp");
        }
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
