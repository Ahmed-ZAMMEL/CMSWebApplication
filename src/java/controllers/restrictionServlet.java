package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "restrictionServlet", urlPatterns = {"/restrictionServlet"})
public class restrictionServlet extends HttpServlet {

    public static final String connectionView = "http://localhost:8080/CMSWebApplication/signIn";
    public static final String homeView = "/narrow/home.jsp";
    public static final String userSession = "userSession";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute(userSession) == null) {
            response.sendRedirect(connectionView);
        } else {
            this.getServletContext().getRequestDispatcher(homeView).forward(request, response);
        }
    }
}
