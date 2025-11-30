package com.freelance.models;

import java.sql.Timestamp;

public class Message {
    private int msgId;
    private int taskId;
    private int senderId;
    private int receiverId;
    private String message;
    private Timestamp timestamp;
    
    // Helper
    private String senderName;

    public Message() {}

    public Message(int taskId, int senderId, int receiverId, String message) {
        this.taskId = taskId;
        this.senderId = senderId;
        this.receiverId = receiverId;
        this.message = message;
    }

    // Getters and Setters
    public int getMsgId() { return msgId; }
    public void setMsgId(int msgId) { this.msgId = msgId; }

    public int getTaskId() { return taskId; }
    public void setTaskId(int taskId) { this.taskId = taskId; }

    public int getSenderId() { return senderId; }
    public void setSenderId(int senderId) { this.senderId = senderId; }

    public int getReceiverId() { return receiverId; }
    public void setReceiverId(int receiverId) { this.receiverId = receiverId; }

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }

    public Timestamp getTimestamp() { return timestamp; }
    public void setTimestamp(Timestamp timestamp) { this.timestamp = timestamp; }

    public String getSenderName() { return senderName; }
    public void setSenderName(String senderName) { this.senderName = senderName; }
}
