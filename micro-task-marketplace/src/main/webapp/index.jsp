<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.freelance.models.User" %>
<%
    User user = (User) session.getAttribute("user");
%>
<html>
<head>
    <title>MicroTask Marketplace</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <nav class="navbar">
        <div class="logo">
            <h3>MicroTask</h3>
        </div>
        <div class="nav-links">
            <% if(user != null) { %>
                <a href="views/tasks/list.jsp">Browse Tasks</a>
                <a href="views/tasks/create.jsp">Post Task</a>
                <a href="views/dashboard/index.jsp">Dashboard</a>
                <span style="color: var(--text-main); font-weight: 600;">Hi, <%= user.getName() %></span>
                <a href="auth?action=logout" class="btn btn-secondary" style="padding: 0.5rem 1rem; font-size: 0.9rem;">Logout</a>
            <% } else { %>
                <a href="views/auth/login.jsp">Login</a>
                <a href="views/auth/register.jsp" class="btn" style="padding: 0.5rem 1rem; font-size: 0.9rem;">Get Started</a>
            <% } %>
        </div>
    </nav>

    <div class="hero">
        <h1>Get Tasks Done.<br>Earn Money Fast.</h1>
        <p>
            The most flexible marketplace to find micro-jobs or hire top talent for quick tasks. 
            Secure, fast, and reliable.
        </p>
        <div style="display: flex; gap: 1rem; justify-content: center;">
            <% if(user == null) { %>
                <a href="views/auth/register.jsp" class="btn" style="padding: 1rem 2rem; font-size: 1.1rem;">Start Freelancing</a>
                <a href="views/auth/login.jsp" class="btn btn-secondary" style="padding: 1rem 2rem; font-size: 1.1rem;">Hire Talent</a>
            <% } else { %>
                <a href="views/tasks/list.jsp" class="btn" style="padding: 1rem 2rem; font-size: 1.1rem;">Find Work</a>
                <a href="views/tasks/create.jsp" class="btn btn-secondary" style="padding: 1rem 2rem; font-size: 1.1rem;">Post a Task</a>
            <% } %>
        </div>
    </div>

    <div class="container">
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem; margin-top: 4rem;">
            <div class="card" style="padding: 2rem; text-align: center;">
                <div style="font-size: 2rem; margin-bottom: 1rem;">🚀</div>
                <h3>Post a Task</h3>
                <p style="color: var(--text-muted);">Describe what you need done, set your budget, and get proposals in minutes.</p>
            </div>
            <div class="card" style="padding: 2rem; text-align: center;">
                <div style="font-size: 2rem; margin-bottom: 1rem;">💎</div>
                <h3>Secure Payments</h3>
                <p style="color: var(--text-muted);">Funds are held securely until the task is completed to your satisfaction.</p>
            </div>
            <div class="card" style="padding: 2rem; text-align: center;">
                <div style="font-size: 2rem; margin-bottom: 1rem;">🌟</div>
                <h3>Build Reputation</h3>
                <p style="color: var(--text-muted);">Earn ratings and reviews to climb the leaderboard and earn more.</p>
            </div>
        </div>
    </div>
</body>
</html>
