<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register - MicroTask</title>
    <link rel="stylesheet" href="../../css/style.css">
</head>
<body>
    <div class="auth-container">
        <h2>Create Account</h2>
        
        <% if(request.getAttribute("error") != null) { %>
            <div class="alert alert-error"><%= request.getAttribute("error") %></div>
        <% } %>

        <form action="../../auth" method="post">
            <input type="hidden" name="action" value="register">
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="name" required>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" required>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" required>
            </div>
            <div class="form-group">
                <label>I want to</label>
                <select name="role">
                    <option value="BOTH">Both (Hire & Work)</option>
                    <option value="CLIENT">Hire Freelancers</option>
                    <option value="FREELANCER">Work as Freelancer</option>
                </select>
            </div>
            <button type="submit">Sign Up</button>
        </form>
        <p style="margin-top: 1rem; text-align: center;">
            Already have an account? <a href="login.jsp">Login</a>
        </p>
    </div>
</body>
</html>
