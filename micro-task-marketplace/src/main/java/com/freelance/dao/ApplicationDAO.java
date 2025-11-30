package com.freelance.dao;

import com.freelance.models.Application;
import com.freelance.utils.DBConnection;
import java.sql.*;

public class ApplicationDAO {
    public boolean applyForTask(Application app) {
        String sql = "INSERT INTO applications (task_id, freelancer_id, proposal_text, bid_amount) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setInt(1, app.getTaskId());
            pstmt.setInt(2, app.getFreelancerId());
            pstmt.setString(3, app.getProposalText());
            pstmt.setDouble(4, app.getBidAmount());
            
            int rows = pstmt.executeUpdate();
            return rows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
