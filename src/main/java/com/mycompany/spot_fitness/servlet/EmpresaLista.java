/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spot_fitness.servlet;

import com.mycompany.sport_fitness.doa.CadastroEmpresaDAO;
import com.mycompany.spot_fitness.entidade.CadastroEmpresaBean;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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
@WebServlet(name = "EmpresaLista", urlPatterns = {"/EmpresaLista"})
public class EmpresaLista extends HttpServlet {

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

        if (request.getParameter("acao").equals("listar")) {
            //Buscando os dados no banco e atribuindo a uma lista
            CadastroEmpresaDAO empresas = new CadastroEmpresaDAO();
            List<CadastroEmpresaBean> listaEmpresas = empresas.read();
            //Criando uma variaável para levar essa lista até o JSP
            request.setAttribute("lista", listaEmpresas);
            //enviando a lista para o JSP endereçado
            RequestDispatcher rq = request.getRequestDispatcher("jsp/ListarEmpresa.jsp");
            rq.forward(request, response);
        } else if (request.getParameter("acao").equals("exc")) {
            System.out.println("passei aqui");
            CadastroEmpresaDAO empresas = new CadastroEmpresaDAO();            
            empresas.delete(request.getParameter("cnpj"));
            //Buscando os dados no banco e atribuindo a uma lista
            List<CadastroEmpresaBean> listaEmpresas = empresas.read();
            //Criando uma variaável para levar essa lista até o JSP
            request.setAttribute("lista", listaEmpresas);
            //enviando a lista para o JSP endereçado
            RequestDispatcher rq = request.getRequestDispatcher("jsp/ListarEmpresa.jsp");
            rq.forward(request, response);
        }else if(request.getParameter("acao").equals("alt")){
            CadastroEmpresaDAO busca = new CadastroEmpresaDAO();
            String cnpj = request.getParameter("cnpj");
            List<CadastroEmpresaBean> empresas = new ArrayList<CadastroEmpresaBean>();
            CadastroEmpresaBean empresa = busca.search(cnpj);
            empresas.add(empresa);
            request.setAttribute("empresa", empresas);
            //enviando a lista para o JSP endereçado
            RequestDispatcher rq = request.getRequestDispatcher("jsp/Alteracao_empresa.jsp");
            rq.forward(request, response);
            
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
        CadastroEmpresaBean empresa = new CadastroEmpresaBean();

        empresa.setCnpj(request.getParameter("cnpj"));
        empresa.setNomeFantasia(request.getParameter("nomeFantasia"));
        empresa.setDono(request.getParameter("dono"));
        empresa.setTelefone(request.getParameter("telefone"));
        empresa.setCelular(request.getParameter("celular"));
        empresa.setEmail(request.getParameter("email"));
        try {
            CadastroEmpresaDAO emp = new CadastroEmpresaDAO();
            boolean verd = emp.update(empresa);
            if (verd) {
                response.sendRedirect("jsp/ListarEmpresa.jsp");
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
