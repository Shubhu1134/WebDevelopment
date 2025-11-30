package com.freelance.dao;

import com.freelance.models.Task;
import com.freelance.utils.DBConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TaskDAO {

    public boolean createTask(Task task) {
        String sql = "INSERT INTO tasks (client_id, title, description, budget, deadline, skills_required) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setInt(1, task.getClientId());
            pstmt.setString(2, task.getTitle());
            pstmt.setString(3, task.getDescription());
            pstmt.setDouble(4, task.getBudget());
            pstmt.setDate(5, Date.valueOf(task.getDeadline())); // Assuming YYYY-MM-DD format
            pstmt.setString(6, task.getSkillsRequired());
            
            int rows = pstmt.executeUpdate();
            return rows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Task> getAllTasks() {
        List<Task> tasks = new ArrayList<>();
        String sql = "SELECT t.*, u.name as client_name FROM tasks t JOIN users u ON t.client_id = u.id ORDER BY t.created_at DESC";
        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            
            while (rs.next()) {
                Task task = new Task();
                task.setTaskId(rs.getInt("task_id"));
                task.setClientId(rs.getInt("client_id"));
                task.setTitle(rs.getString("title"));
                task.setDescription(rs.getString("description"));
                task.setBudget(rs.getDouble("budget"));
                task.setDeadline(rs.getString("deadline"));
                task.setSkillsRequired(rs.getString("skills_required"));
                task.setStatus(rs.getString("status"));
                task.setClientName(rs.getString("client_name"));
                tasks.add(task);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tasks;
    }

    public Task getTaskById(int taskId) {
        String sql = "SELECT t.*, u.name as client_name FROM tasks t JOIN users u ON t.client_id = u.id WHERE t.task_id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setInt(1, taskId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                Task task = new Task();
                task.setTaskId(rs.getInt("task_id"));
                task.setClientId(rs.getInt("client_id"));
                task.setTitle(rs.getString("title"));
                task.setDescription(rs.getString("description"));
                task.setBudget(rs.getDouble("budget"));
                task.setDeadline(rs.getString("deadline"));
                task.setSkillsRequired(rs.getString("skills_required"));
                task.setStatus(rs.getString("status"));
                task.setClientName(rs.getString("client_name"));
                return task;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
