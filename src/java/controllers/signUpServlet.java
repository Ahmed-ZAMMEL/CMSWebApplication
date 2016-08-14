package controllers;

import beans.userBean;
import forms.signUpForm;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "signUpServlet", urlPatterns = {"/signUp"})
public class signUpServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher("/WEB-INF/views/signUp.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* Préparation de l'objet formulaire */
        signUpForm form = new signUpForm();
        /* Appel au traitement et à la validation de la requête, et récupération du bean en résultant */
        userBean user = form.signUpUser(request);
        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute("form", form);
        request.setAttribute("user", user);
        this.getServletContext().getRequestDispatcher("/WEB-INF/views/signUp.jsp").forward(request, response);
    }

}
