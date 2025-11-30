# Freelance Micro-Task Marketplace

A complete freelance marketplace built with Java Servlets, JSP, and MySQL.

## 🚀 Quick Start

### 1. Database Setup
1. Make sure you have MySQL installed and running.
2. Create the database and tables:
   ```bash
   mysql -u root -p < ../schema.sql
   ```
   *(Note: The schema.sql file is in the parent directory, or you can find it in the project root if you moved it)*

3. **IMPORTANT**: Update the database password in the code!
   - Open `src/main/java/com/freelance/utils/DBConnection.java`
   - Change the `PASSWORD` field to your actual MySQL root password.

### 2. Run the Application
You don't need to install Tomcat manually! We have integrated the Jetty server.

Simply run this command in the project folder:
```bash
mvn jetty:run
```

### 3. Access the App
Open your browser and go to:
[http://localhost:8080/micro-task-marketplace](http://localhost:8080/micro-task-marketplace)

## ✨ Features
- **Login/Register**: Create Client or Freelancer accounts.
- **Post Tasks**: Clients can post jobs with budgets.
- **Apply**: Freelancers can apply for jobs.
- **Chat**: Real-time messaging between users.

## 🛠️ Troubleshooting
- **Database Error?** Check `DBConnection.java` password and ensure MySQL is running.
- **Port 8080 busy?** Edit `pom.xml` and change `<port>8080</port>` to something else (e.g., 8081).
