<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${employees}">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empID" value="${emp.id}"/>
        </c:url>

        <tr>
            <th>${emp.name}</th>
            <th>${emp.surname}</th>
            <th>${emp.department}</th>
            <th>${emp.salary}</th>
            <td>
                <input type="button" value="Update" onclick = "window.location.href = '${updateButton}'"/>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<input type="button" value="Add" onclick="window.location.href = 'addNewEmployee'"/>

</body>
</html>
