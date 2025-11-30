package com.freelance.controllers;

import com.freelance.dao.MessageDAO;
import com.freelance.models.Message;
import com.freelance.models.User;
import com.google.gson.Gson;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/chat")
public class ChatServlet extends HttpServlet {
    private MessageDAO messageDAO;
    private Gson gson;

    public void init() {
        messageDAO = new MessageDAO();
        gson = new Gson();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int taskId = Integer.parseInt(request.getParameter("taskId"));
        List<Message> messages = messageDAO.getMessages(taskId);
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.print(gson.toJson(messages));
        out.flush();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            return;
        }

        int taskId = Integer.parseInt(request.getParameter("taskId"));
        int receiverId = Integer.parseInt(request.getParameter("receiverId"));
        String text = request.getParameter("message");

        Message msg = new Message(taskId, user.getId(), receiverId, text);
        boolean success = messageDAO.sendMessage(msg);
        
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.print("{\"success\": " + success + "}");
        out.flush();
    }
}
