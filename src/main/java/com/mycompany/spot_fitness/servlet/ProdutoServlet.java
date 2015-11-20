/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spot_fitness.servlet;

import com.mycompany.sport_fitness.doa.CadastroProdutoDAO;
import com.mycompany.spot_fitness.entidade.CadastroProdutoBean;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author felipe
 */
@WebServlet(name = "ProdutoServlet", urlPatterns = {"/ProdutoServlet"})
public class ProdutoServlet extends HttpServlet {

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
    /**
     * *
     *
     * private int codigo; private String nome; private String categoria;
     * private String descricao; private String fabricante; private String
     * fornecedor; private float altura; private float largura; private float
     * profundidade; private float valorCompra; private float valorVenda;
     * private float lucro;
     *
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        CadastroProdutoBean cadastroBean = new CadastroProdutoBean();
        cadastroBean.setImg(request.getParameter("imagens").getBytes());
        cadastroBean.setCodigo(request.getParameter("codigo"));
        cadastroBean.setNome(request.getParameter("nome"));
        cadastroBean.setCategoria(request.getParameter("categoria"));
        cadastroBean.setDescricao(request.getParameter("descricao"));
        cadastroBean.setFabricante(request.getParameter("fabricante"));
        cadastroBean.setFornecedor(request.getParameter("fornecedor"));
        cadastroBean.setAltura(Double.parseDouble(request.getParameter("altura")));
        cadastroBean.setLargura(Double.parseDouble(request.getParameter("largura")));
        cadastroBean.setProfundidade(Double.parseDouble(request.getParameter("profundidade")));
        cadastroBean.setGasto(Double.parseDouble(request.getParameter("gastos")));
        cadastroBean.setValorVenda(Double.parseDouble(request.getParameter("valorVenda")));
        cadastroBean.setLucro(Double.parseDouble(request.getParameter("lucro")));
        cadastroBean.setHabilitado(true);
        try {
            CadastroProdutoDAO cad = new CadastroProdutoDAO() ;
            boolean verd = cad.cadastro(cadastroBean);

            if (verd == true) {
//                
                response.sendRedirect("jsp/Cadastro_produto.jsp");
            } else {
                response.sendRedirect("erroJSP/erroProduto.jsp");
            }
        } catch (Exception error) {
            response.sendRedirect("erroJSP/erroProduto.jsp");
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
