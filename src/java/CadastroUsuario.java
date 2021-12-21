/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Aplicacao.Pessoa;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jvbor
 */
@WebServlet(urlPatterns = {"/CadastroUsuario"})
public class CadastroUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

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
        try (PrintWriter out = response.getWriter()) {
            response.sendRedirect("cadastro.jsp");     
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
            try (PrintWriter out = response.getWriter()) {
            String id  = request.getParameter("id");
            String id_usuario = request.getParameter("id_usuario");
            String nome_conta = request.getParameter("nome_conta");
            String banco = request.getParameter("banco");
            String agencia = request.getParameter("agencia");
            String conta_corrente = request.getParameter("conta_corrente");
            
            if (id.isEmpty() || id_usuario.isEmpty() || nome_conta.isEmpty() || banco.isEmpty()|| agencia.isEmpty()|| conta_corrente.isEmpty()){
                response.sendRedirect("contas.jsp");
             }else{
                Pessoa user = new Pessoa();
                user.setId(id);
                user.setSenha(id_usuario);
                user.setCpf(nome_conta);
                user.setEmail(banco);
                user.setEmail(agencia);
                user.setEmail(conta_corrente);
                
                request.setAttribute("pessoa", user);
                }
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
