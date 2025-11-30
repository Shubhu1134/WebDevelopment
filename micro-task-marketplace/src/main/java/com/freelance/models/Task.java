package com.freelance.models;

import java.sql.Timestamp;

public class Task {
    private int taskId;
    private int clientId;
    private String title;
    private String description;
    private double budget;
    private String deadline; // Stored as String for simplicity in this prototype
    private String skillsRequired;
    private String status;
    private Timestamp createdAt;
    
    // Helper for display
    private String clientName;

    public Task() {}

    public Task(int clientId, String title, String description, double budget, String deadline, String skillsRequired) {
        this.clientId = clientId;
        this.title = title;
        this.description = description;
        this.budget = budget;
        this.deadline = deadline;
        this.skillsRequired = skillsRequired;
    }

    // Getters and Setters
    public int getTaskId() { return taskId; }
    public void setTaskId(int taskId) { this.taskId = taskId; }

    public int getClientId() { return clientId; }
    public void setClientId(int clientId) { this.clientId = clientId; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public double getBudget() { return budget; }
    public void setBudget(double budget) { this.budget = budget; }

    public String getDeadline() { return deadline; }
    public void setDeadline(String deadline) { this.deadline = deadline; }

    public String getSkillsRequired() { return skillsRequired; }
    public void setSkillsRequired(String skillsRequired) { this.skillsRequired = skillsRequired; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public Timestamp getCreatedAt() { return createdAt; }
    public void setCreatedAt(Timestamp createdAt) { this.createdAt = createdAt; }

    public String getClientName() { return clientName; }
    public void setClientName(String clientName) { this.clientName = clientName; }
}
