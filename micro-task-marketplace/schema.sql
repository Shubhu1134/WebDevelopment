CREATE DATABASE IF NOT EXISTS freelance_marketplace;
USE freelance_marketplace;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('CLIENT', 'FREELANCER', 'BOTH') DEFAULT 'BOTH',
    bio TEXT,
    skills TEXT,
    profile_pic VARCHAR(255),
    rating DECIMAL(3,2) DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    budget DECIMAL(10,2),
    deadline DATE,
    skills_required TEXT,
    status ENUM('OPEN', 'ASSIGNED', 'COMPLETED', 'CLOSED') DEFAULT 'OPEN',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (client_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS applications (
    application_id INT AUTO_INCREMENT PRIMARY KEY,
    task_id INT,
    freelancer_id INT,
    proposal_text TEXT,
    bid_amount DECIMAL(10,2),
    status ENUM('APPLIED', 'SHORTLISTED', 'REJECTED', 'ASSIGNED') DEFAULT 'APPLIED',
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (task_id) REFERENCES tasks(task_id),
    FOREIGN KEY (freelancer_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS messages (
    msg_id INT AUTO_INCREMENT PRIMARY KEY,
    task_id INT,
    sender_id INT,
    receiver_id INT,
    message TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (task_id) REFERENCES tasks(task_id),
    FOREIGN KEY (sender_id) REFERENCES users(id),
    FOREIGN KEY (receiver_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    task_id INT,
    reviewer_id INT,
    reviewed_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (task_id) REFERENCES tasks(task_id),
    FOREIGN KEY (reviewer_id) REFERENCES users(id),
    FOREIGN KEY (reviewed_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS wallet (
    wallet_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNIQUE,
    balance DECIMAL(10,2) DEFAULT 0.00,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS transactions (
    txn_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2),
    type ENUM('CREDIT', 'DEBIT'),
    reason VARCHAR(255),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
