/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spot_fitness.servlet;

import com.mycompany.sport_fitness.doa.CadastroFuncionarioDAO;
import com.mycompany.sport_fitness.doa.LoginDAO;
import com.mycompany.spot_fitness.entidade.CadastroFuncionarioBean;
import com.mycompany.spot_fitness.entidade.LoginBean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author heito
 */
@WebServlet(name = "FuncionarioServlet", urlPatterns = {"/FuncionarioServlet"})
public class FuncionarioServlet extends HttpServlet {

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
        CadastroFuncionarioBean fun = new CadastroFuncionarioBean();

        fun.setNome(request.getParameter("nome"));
        fun.setNascimento(request.getParameter("nascimento"));
        fun.setSexo(request.getParameter("sexo"));
        fun.setRg(request.getParameter("rg"));
        fun.setEmissor(request.getParameter("emissor"));
        fun.setEmissao(request.getParameter("emissao"));
        fun.setCpf(request.getParameter("cpf"));
        fun.setPais(request.getParameter("pais"));
        fun.setCidade(request.getParameter("cidade"));
        fun.setEstado(request.getParameter("estado"));
        fun.setCep(request.getParameter("cep"));
        fun.setNumero(Integer.parseInt(request.getParameter("numero")));
        fun.setComplemento(request.getParameter("complemento"));
        fun.setTelefone(request.getParameter("telefone"));
        fun.setCelular(request.getParameter("celular"));
        fun.setFilial(Integer.parseInt(request.getParameter("filial")));

        try {
            CadastroFuncionarioDAO funcionario = new CadastroFuncionarioDAO();
            boolean verd = funcionario.create(fun);
            if (verd) {
                int cont = 0;
                String userName = "";
                for (int i = 0; i < fun.getNome().length(); i++) {
                    if (fun.getNome().charAt(i) == ' ') {
                        if (cont < 1) {
                            userName += fun.getNome().charAt(i);
                        }
                        cont++;
                    } else if (cont < 2) {
                        userName += fun.getNome().charAt(i);
                    } else {
                        break;
                    }
                }
                System.out.println("\n\n\n\n\n\n\n Login do usuário criado com sucesso: " + userName + "\n\n\n\n\n\n\n\n");
                LoginBean login = new LoginBean();
                login.setNameUser(userName);
                login.setPasUser("1234");
                System.out.println("{{{{"+funcionario.selectID(fun)+"}}}}}}}");
                login.setCodFun(funcionario.selectID(fun));
                LoginDAO criar = new LoginDAO();
                criar.create(login);
                response.sendRedirect("html/Home.html");
            }
        } catch (Exception e) {
            response.sendRedirect("jsp/erroFuncionario.jsp");
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
