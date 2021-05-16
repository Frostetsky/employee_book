<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>

<html>

<body>

<h2 align="center" style="color:blue"> Employee Info </h2>
<br>


<form:form action="saveEmployee" modelAttribute="employee">
    <p align="center">
    <form:hidden path="id"/>

    <b>Name: <form:input path="name"/><b>
    <br>
    <br>
    Surname: <form:input path="surname"/>
    <br>
    <br>
    Department: <form:input path="department"/>
    <br>
    <br>
    Salary: <form:input path="salary"/>
    <br>
    <br>
        <p align="center">
    <input type="submit" value="OK">
        </p>
    </p>
</form:form>

</body>

</html>
