package com.freelance.controllers;

import com.freelance.dao.TaskDAO;
import com.freelance.models.Task;
import com.freelance.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/tasks")
public class TaskServlet extends HttpServlet {
    private TaskDAO taskDAO;

    public void init() {
        taskDAO = new TaskDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("create".equals(action)) {
            createTask(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null || "list".equals(action)) {
            listTasks(request, response);
        } else if ("view".equals(action)) {
            viewTask(request, response);
        }
    }

    private void createTask(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (user == null) {
            response.sendRedirect("views/auth/login.jsp");
            return;
        }

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        double budget = Double.parseDouble(request.getParameter("budget"));
        String deadline = request.getParameter("deadline");
        String skills = request.getParameter("skills");

        Task task = new Task(user.getId(), title, description, budget, deadline, skills);
        if (taskDAO.createTask(task)) {
            response.sendRedirect("tasks?action=list");
        } else {
            response.sendRedirect("views/tasks/create.jsp?error=Failed to create task");
        }
    }

    private void listTasks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Task> tasks = taskDAO.getAllTasks();
        request.setAttribute("tasks", tasks);
        request.getRequestDispatcher("views/tasks/list.jsp").forward(request, response);
    }

    private void viewTask(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int taskId = Integer.parseInt(request.getParameter("id"));
        Task task = taskDAO.getTaskById(taskId);
        request.setAttribute("task", task);
        request.getRequestDispatcher("views/tasks/details.jsp").forward(request, response);
    }
}
