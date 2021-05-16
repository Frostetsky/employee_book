<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<body>

<head>
    <style>
        h2 {
            border: none; /* Убираем границу */
            background-color: red; /* Цвет линии */
            color: red; /* Цвет линии для IE6-7 */
            height: 2px; /* Толщина линии */
        }
    </style>
<h2 align="center" style="color:#069">All Employees</h2>
</head>
<br>

<style type="text/css">
    TABLE {
        border-collapse: collapse; /* Убираем двойные границы между ячейками */
        background: #dc0; /* Цвет фона таблицы */
        border: 4px solid #000; /* Рамка вокруг таблицы */
    }
    TD, TH {
        padding: 5px; /* Поля вокруг текста */
        border: 2px solid green; /* Рамка вокруг ячеек */
    }
</style>
<table align="center">
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary (RUB)</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${employees}">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empID" value="${emp.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empID" value="${emp.id}"/>
        </c:url>

        <tr>
            <th>${emp.name}</th>
            <th>${emp.surname}</th>
            <th>${emp.department}</th>
            <th>${emp.salary}</th>
            <td>
                <input type="button" style="color:#049" value="Update" onclick = "window.location.href = '${updateButton}'"/>
                <input type="button" style="color:firebrick" value="Delete" onclick = "window.location.href = '${deleteButton}'"/>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<p align="center">
<input type="button" style="color:#6B5" value="Add new Employee" onclick="window.location.href = 'addNewEmployee'"/>
</p>

</body>
</html>
