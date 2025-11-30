<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.freelance.models.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("../auth/login.jsp");
        return;
    }
    String taskId = request.getParameter("taskId");
    String receiverId = request.getParameter("receiverId");
%>
<html>
<head>
    <title>Chat - MicroTask</title>
    <link rel="stylesheet" href="../../css/style.css">
    <style>
        .chat-container { display: flex; flex-direction: column; height: 80vh; max-width: 800px; margin: 2rem auto; background: white; border-radius: 1rem; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        .chat-header { padding: 1rem; border-bottom: 1px solid #eee; font-weight: bold; }
        .chat-messages { flex: 1; overflow-y: auto; padding: 1rem; background: #f9fafb; }
        .chat-input { padding: 1rem; border-top: 1px solid #eee; display: flex; }
        .message { margin-bottom: 1rem; max-width: 70%; padding: 0.75rem; border-radius: 0.5rem; }
        .message.sent { background: var(--primary); color: white; margin-left: auto; }
        .message.received { background: #e5e7eb; color: var(--text); }
        .meta { font-size: 0.75rem; opacity: 0.8; margin-top: 0.25rem; }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="logo"><h3>MicroTask</h3></div>
        <div class="nav-links">
            <a href="../../tasks?action=list">Back to Tasks</a>
        </div>
    </nav>

    <div class="chat-container">
        <div class="chat-header">Chat Room (Task #<%= taskId %>)</div>
        <div class="chat-messages" id="chat-box">
            <!-- Messages will load here -->
        </div>
        <div class="chat-input">
            <input type="text" id="msg-input" placeholder="Type a message..." style="flex: 1; margin-right: 1rem;">
            <button onclick="sendMessage()" style="width: auto;">Send</button>
        </div>
    </div>

    <script>
        const taskId = <%= taskId %>;
        const receiverId = <%= receiverId %>;
        const currentUserId = <%= user.getId() %>;

        function loadMessages() {
            fetch('../../chat?taskId=' + taskId)
                .then(response => response.json())
                .then(data => {
                    const chatBox = document.getElementById('chat-box');
                    chatBox.innerHTML = '';
                    data.forEach(msg => {
                        const div = document.createElement('div');
                        div.className = 'message ' + (msg.senderId === currentUserId ? 'sent' : 'received');
                        div.innerHTML = '<div>' + msg.message + '</div><div class="meta">' + msg.senderName + '</div>';
                        chatBox.appendChild(div);
                    });
                    chatBox.scrollTop = chatBox.scrollHeight;
                });
        }

        function sendMessage() {
            const input = document.getElementById('msg-input');
            const text = input.value;
            if (!text.trim()) return;

            fetch('../../chat', {
                method: 'POST',
                headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
                body: 'taskId=' + taskId + '&receiverId=' + receiverId + '&message=' + encodeURIComponent(text)
            }).then(() => {
                input.value = '';
                loadMessages();
            });
        }

        // Poll every 3 seconds
        setInterval(loadMessages, 3000);
        loadMessages();
    </script>
</body>
</html>
