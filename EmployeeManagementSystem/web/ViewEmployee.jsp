<%@ page import="java.util.*,com.tap.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<title>Employee List</title>
<style>
body { font-family: Arial; background: #eef2ff; text-align: center; }
table {
  width: 85%;
  margin: 20px auto;
  border-collapse: collapse;
  box-shadow: 0 2px 8px rgba(0,0,0,0.2);
  background: white;
}
th, td { padding: 10px; border: 1px solid #ddd; }
th { background-color: #5563DE; color: white; }
a { color: #007BFF; text-decoration: none; }
a:hover { text-decoration: underline; }
button, .logout { background: #e74c3c; color: white; padding: 8px 12px; border: none; border-radius: 5px; }
</style>
</head>
<body>
<h2>All Employees</h2>
<table>
<tr><th>ID</th><th>Name</th><th>Email</th><th>Department</th><th>Salary</th><th>Actions</th></tr>
<%
List<Employee> list = (List<Employee>) request.getAttribute("employees");
if(list != null){
    for(Employee e : list){
%>
<tr>
<td><%= e.getId() %></td>
<td><%= e.getName() %></td>
<td><%= e.getEmail() %></td>
<td><%= e.getDepartment() %></td>
<td><%= e.getSalary() %></td>
<td>
    <a href="editEmployee?id=<%= e.getId() %>">Edit</a> |
    <a href="deleteEmployee?id=<%= e.getId() %>">Delete</a>
</td>
</tr>
<%
    }
}
%>
</table>
<a href="addEmployee.html">Add New Employee</a> |
<a class="logout" href="logout">Logout</a>
</body>
</html>
