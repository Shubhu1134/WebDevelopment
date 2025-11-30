<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.freelance.models.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("../auth/login.jsp");
        return;
    }
%>
<html>
<head>
    <title>Post a Task - MicroTask</title>
    <link rel="stylesheet" href="../../css/style.css">
</head>
<body>
    <nav class="navbar">
        <div class="logo"><h3>MicroTask</h3></div>
        <div class="nav-links">
            <a href="list.jsp">Browse Tasks</a>
            <a href="../../index.jsp">Home</a>
        </div>
    </nav>

    <div class="container">
        <div class="auth-container" style="max-width: 600px;">
            <h2>Post a New Task</h2>
            <form action="../../tasks" method="post">
                <input type="hidden" name="action" value="create">
                <div class="form-group">
                    <label>Task Title</label>
                    <input type="text" name="title" required placeholder="e.g. Fix my Java bug">
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <textarea name="description" rows="5" required></textarea>
                </div>
                <div class="form-group">
                    <label>Budget ($)</label>
                    <input type="number" name="budget" step="0.01" required>
                </div>
                <div class="form-group">
                    <label>Deadline</label>
                    <input type="date" name="deadline" required>
                </div>
                <div class="form-group">
                    <label>Required Skills (comma separated)</label>
                    <input type="text" name="skills" placeholder="Java, SQL, HTML">
                </div>
                <button type="submit">Post Task</button>
            </form>
        </div>
    </div>
</body>
</html>
