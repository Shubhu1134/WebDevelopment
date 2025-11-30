package com.freelance.dao;

import com.freelance.models.Message;
import com.freelance.utils.DBConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MessageDAO {
    public boolean sendMessage(Message msg) {
        String sql = "INSERT INTO messages (task_id, sender_id, receiver_id, message) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setInt(1, msg.getTaskId());
            pstmt.setInt(2, msg.getSenderId());
            pstmt.setInt(3, msg.getReceiverId());
            pstmt.setString(4, msg.getMessage());
            
            int rows = pstmt.executeUpdate();
            return rows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Message> getMessages(int taskId) {
        List<Message> messages = new ArrayList<>();
        String sql = "SELECT m.*, u.name as sender_name FROM messages m JOIN users u ON m.sender_id = u.id WHERE m.task_id = ? ORDER BY m.timestamp ASC";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setInt(1, taskId);
            ResultSet rs = pstmt.executeQuery();
            
            while (rs.next()) {
                Message msg = new Message();
                msg.setMsgId(rs.getInt("msg_id"));
                msg.setTaskId(rs.getInt("task_id"));
                msg.setSenderId(rs.getInt("sender_id"));
                msg.setReceiverId(rs.getInt("receiver_id"));
                msg.setMessage(rs.getString("message"));
                msg.setTimestamp(rs.getTimestamp("timestamp"));
                msg.setSenderName(rs.getString("sender_name"));
                messages.add(msg);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return messages;
    }
}
