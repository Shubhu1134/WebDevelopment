package com.freelance.models;

import java.sql.Timestamp;

public class Application {
    private int applicationId;
    private int taskId;
    private int freelancerId;
    private String proposalText;
    private double bidAmount;
    private String status;
    private Timestamp timestamp;

    public Application() {}

    public Application(int taskId, int freelancerId, String proposalText, double bidAmount) {
        this.taskId = taskId;
        this.freelancerId = freelancerId;
        this.proposalText = proposalText;
        this.bidAmount = bidAmount;
    }

    // Getters and Setters
    public int getApplicationId() { return applicationId; }
    public void setApplicationId(int applicationId) { this.applicationId = applicationId; }

    public int getTaskId() { return taskId; }
    public void setTaskId(int taskId) { this.taskId = taskId; }

    public int getFreelancerId() { return freelancerId; }
    public void setFreelancerId(int freelancerId) { this.freelancerId = freelancerId; }

    public String getProposalText() { return proposalText; }
    public void setProposalText(String proposalText) { this.proposalText = proposalText; }

    public double getBidAmount() { return bidAmount; }
    public void setBidAmount(double bidAmount) { this.bidAmount = bidAmount; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public Timestamp getTimestamp() { return timestamp; }
    public void setTimestamp(Timestamp timestamp) { this.timestamp = timestamp; }
}
