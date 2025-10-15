<%@ page import="com.tap.model.Employee" %>
<%
Employee e = (Employee) request.getAttribute("emp");
if (e == null) {
%>
<h3 style="color:red;">No employee found!</h3>
<%
return;
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Edit Employee</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<h2>Edit Employee</h2>
<form action="updateEmployee" method="post">
  <input type="hidden" name="id" value="<%= e.getId() %>">
  Name: <input type="text" name="name" value="<%= e.getName() %>"><br><br>
  Email: <input type="email" name="email" value="<%= e.getEmail() %>"><br><br>
  Department: <input type="text" name="department" value="<%= e.getDepartment() %>"><br><br>
  Salary: <input type="number" name="salary" value="<%= e.getSalary() %>"><br><br>
  <button type="submit">Update</button>
</form>
</body>
</html>
