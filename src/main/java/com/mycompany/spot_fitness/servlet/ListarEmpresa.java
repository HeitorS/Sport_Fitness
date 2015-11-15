/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spot_fitness.servlet;

import com.mycompany.sport_fitness.doa.CadastroEmpresaDAO;
import com.mycompany.spot_fitness.entidade.CadastroEmpresaBean;
import java.io.IOException;
import java.io.PrintWriter;import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
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
        //Listando os dados cadastrados na tabela empresa
        CadastroEmpresaDAO lista = new CadastroEmpresaDAO();
        ArrayList<CadastroEmpresaBean> empresas = lista.read();
        
        //Gerando uma caixa com os arquivos
        request.setAttribute("lista", empresas);
        
        //Endereçando a caixa com os arquivos e enviando para o jsp
        RequestDispatcher arquivos = request.getRequestDispatcher("jsp/ListarEmpresa.jsp");
        arquivos.forward(request, response);
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
