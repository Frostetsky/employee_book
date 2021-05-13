<%@ taglib prefix="c" uri="http://java.sum.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<body>

<h2>All Employees</h2>
<br>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
    </tr>

    <c:forEach var="emp" items="${employees}">
        <tr>
            <th>${emp.name}</th>
            <th>${emp.surname}</th>
            <th>${emp.department}</th>
            <th>${emp.salary}</th>
        </tr>
    </c:forEach>
</table>

</body>
</html>