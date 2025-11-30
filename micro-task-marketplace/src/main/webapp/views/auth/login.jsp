<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login - MicroTask</title>
    <link rel="stylesheet" href="../../css/style.css">
</head>
<body>
    <div class="auth-container">
        <h2>Welcome Back</h2>
        
        <% if(request.getAttribute("error") != null) { %>
            <div class="alert alert-error"><%= request.getAttribute("error") %></div>
        <% } %>
        <% if(request.getParameter("success") != null) { %>
            <div class="alert alert-success"><%= request.getParameter("success") %></div>
        <% } %>

        <form action="../../auth" method="post">
            <input type="hidden" name="action" value="login">
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" required>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" required>
            </div>
            <button type="submit">Login</button>
        </form>
        <p style="margin-top: 1rem; text-align: center;">
            Don't have an account? <a href="register.jsp">Sign up</a>
        </p>
    </div>
</body>
</html>
