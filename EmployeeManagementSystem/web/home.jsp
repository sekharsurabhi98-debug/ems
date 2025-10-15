<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
if (request.getSession(false) == null || request.getSession(false).getAttribute("admin") == null) {
    response.sendRedirect("index.html");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>
<style>
body {
    background: #f3f6ff;
    font-family: 'Segoe UI', sans-serif;
    text-align: center;
    padding-top: 100px;
}
h1 {
    color: #333;
}
a {
    text-decoration: none;
    background: #5563DE;
    color: white;
    padding: 10px 20px;
    border-radius: 8px;
    margin: 10px;
    display: inline-block;
}
a:hover {
    background: #3a49b6;
}
.logout {
    background: #e74c3c;
}
.logout:hover {
    background: #c0392b;
}
</style>
</head>
<body>
<h1>Welcome, <%= session.getAttribute("admin") %></h1>
<h3>Employee Management Dashboard</h3>
<a href="addEmployee.html">Add Employee</a>
<a href="viewEmployees">View Employees</a>
<a class="logout" href="logout">Logout</a>
</body>
</html>
