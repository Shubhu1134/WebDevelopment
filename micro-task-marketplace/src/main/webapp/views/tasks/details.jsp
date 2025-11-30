<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.freelance.models.Task" %>
<%@ page import="com.freelance.models.User" %>
<%
    Task task = (Task) request.getAttribute("task");
    User user = (User) session.getAttribute("user");
%>
<html>
<head>
    <title><%= task.getTitle() %> - MicroTask</title>
    <link rel="stylesheet" href="css/style.css"> <!-- Path relative to servlet forward? No, usually relative to context root or absolute -->
    <!-- Since we forward from servlet /tasks, relative paths might be tricky. Let's use absolute context path or ../../ -->
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* Inline styles for simplicity in this prototype */
        body { font-family: sans-serif; background: #f3f4f6; padding: 2rem; }
        .container { max-width: 800px; margin: 0 auto; background: white; padding: 2rem; border-radius: 1rem; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        .header { border-bottom: 1px solid #eee; padding-bottom: 1rem; margin-bottom: 1rem; }
        .budget { font-size: 1.5rem; color: #4f46e5; font-weight: bold; }
        .meta { color: #6b7280; margin-bottom: 1rem; }
        .btn { background: #4f46e5; color: white; padding: 0.75rem 1.5rem; text-decoration: none; border-radius: 0.5rem; display: inline-block; }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1><%= task.getTitle() %></h1>
            <div class="meta">
                Posted by <%= task.getClientName() %> • Due <%= task.getDeadline() %>
            </div>
        </div>
        
        <div style="display: flex; justify-content: space-between; margin-bottom: 2rem;">
            <span class="budget">Budget: $<%= task.getBudget() %></span>
            <span style="background: #e0e7ff; color: #4f46e5; padding: 0.5rem 1rem; border-radius: 2rem;">
                <%= task.getStatus() %>
            </span>
        </div>

        <h3>Description</h3>
        <p style="line-height: 1.6; color: #374151;"><%= task.getDescription() %></p>

        <h3>Required Skills</h3>
        <p><%= task.getSkillsRequired() %></p>

        <div style="margin-top: 3rem; border-top: 1px solid #eee; padding-top: 2rem;">
            <% if(user != null && !user.getRole().equals("CLIENT")) { %>
                <a href="#" class="btn">Apply for this Task</a>
            <% } else if (user == null) { %>
                <a href="views/auth/login.jsp" class="btn">Login to Apply</a>
            <% } %>
            <a href="tasks?action=list" style="margin-left: 1rem; color: #6b7280; text-decoration: none;">Back to List</a>
        </div>
    </div>
</body>
</html>
