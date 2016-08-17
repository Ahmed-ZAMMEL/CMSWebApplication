/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.Product;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zammel
 */
@WebServlet(name = "productCreation", urlPatterns = {"/productCreation"})
public class productCreation extends HttpServlet {

    public static final String view = "/WEB-INF/views/createProduct.jsp";
    public static final String destinationView = "/WEB-INF/views/showProduct.jsp";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(view).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String designation = request.getParameter("designation");
        String descripion = request.getParameter("description");

        double price;
        // recover the price of the product
        try {
            price = Double.parseDouble(request.getParameter("price"));
        } catch (NumberFormatException e) {
            price = -1;
        }

        // recover the quantity
        int quantity;
        try {
            quantity = Integer.parseInt(request.getParameter("quantity"));
        } catch (NumberFormatException e) {
            quantity = -1;
        }

        String message;
        if (designation.trim().isEmpty() || price == -1 || quantity == -1) {
            message = "Error : you did not filfull all the required field <br> "
                    + "<a href=\"productCreation.jsp\">click here</a> to go to the create a product page";
        } else {
            message = "A new product has been successfully created";
        }

        Product product = new Product();
        product.setDescription(descripion);
        product.setDesignation(designation);
        product.setPrice(price);
        product.setQuantity(quantity);

        request.setAttribute("product", product);
        request.setAttribute("message", message);

        this.getServletContext().getRequestDispatcher(destinationView).forward(request, response);

    }

}
