<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.freelance.models.Task" %>
<%@ page import="com.freelance.models.User" %>
<%
    List<Task> tasks = (List<Task>) request.getAttribute("tasks");
    // If accessed directly, redirect to servlet to load data
    if (tasks == null) {
        response.sendRedirect("../../tasks?action=list");
        return;
    }
    User user = (User) session.getAttribute("user");
%>
<html>
<head>
    <title>Browse Tasks - MicroTask</title>
    <link rel="stylesheet" href="../../css/style.css">
    <style>
        .task-card {
            background: white;
            padding: 1.5rem;
            border-radius: 0.5rem;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
            margin-bottom: 1rem;
            transition: transform 0.2s;
        }
        .task-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .task-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }
        .task-budget {
            font-weight: bold;
            color: var(--primary);
            font-size: 1.25rem;
        }
        .tags span {
            background: #e0e7ff;
            color: var(--primary);
            padding: 0.25rem 0.5rem;
            border-radius: 1rem;
            font-size: 0.875rem;
            margin-right: 0.5rem;
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="logo"><h3>MicroTask</h3></div>
        <div class="nav-links">
            <a href="create.jsp">Post Task</a>
            <a href="../../index.jsp">Home</a>
            <% if(user != null) { %>
                <a href="../../auth?action=logout">Logout</a>
            <% } else { %>
                <a href="../auth/login.jsp">Login</a>
            <% } %>
        </div>
    </nav>

    <div class="container">
        <h1>Available Tasks</h1>
        <div class="task-list">
            <% if (tasks.isEmpty()) { %>
                <p>No tasks available at the moment.</p>
            <% } else { 
                for(Task task : tasks) { %>
                <div class="task-card">
                    <div class="task-header">
                        <h3><a href="../../tasks?action=view&id=<%= task.getTaskId() %>" style="text-decoration: none; color: inherit;"><%= task.getTitle() %></a></h3>
                        <span class="task-budget">$<%= task.getBudget() %></span>
                    </div>
                    <p style="color: var(--text-light); margin: 0.5rem 0;"><%= task.getDescription().length() > 100 ? task.getDescription().substring(0, 100) + "..." : task.getDescription() %></p>
                    <div class="tags">
                        <% for(String skill : task.getSkillsRequired().split(",")) { %>
                            <span><%= skill.trim() %></span>
                        <% } %>
                    </div>
                    <div style="margin-top: 1rem; font-size: 0.875rem; color: var(--text-light);">
                        Posted by <%= task.getClientName() %> • Due <%= task.getDeadline() %>
                    </div>
                </div>
            <% } } %>
        </div>
    </div>
</body>
</html>
