package com.freelance.controllers;

import com.freelance.dao.ApplicationDAO;
import com.freelance.models.Application;
import com.freelance.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/apply")
public class ApplyTaskServlet extends HttpServlet {
    private ApplicationDAO applicationDAO;

    public void init() {
        applicationDAO = new ApplicationDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect("views/auth/login.jsp");
            return;
        }

        int taskId = Integer.parseInt(request.getParameter("taskId"));
        String proposal = request.getParameter("proposal");
        double bidAmount = Double.parseDouble(request.getParameter("bidAmount"));

        Application app = new Application(taskId, user.getId(), proposal, bidAmount);
        
        if (applicationDAO.applyForTask(app)) {
            response.sendRedirect("tasks?action=view&id=" + taskId + "&success=Applied successfully");
        } else {
            response.sendRedirect("tasks?action=view&id=" + taskId + "&error=Failed to apply");
        }
    }
}
