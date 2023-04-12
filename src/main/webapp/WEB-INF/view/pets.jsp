<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>PET-Service</title>
</head>
<body>
    <h1>Pet</h1><hr>
<table border="1">
    <tr>
        <th>Pets</th>
        <th>PetName</th>
        <th>View</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="pet" items="${pets}">
        <tr>
        <td>${pet.pets}</td>
        <td>${pet.petName}</td>
     <td><button onclick="window.location.href = '/${pet.id}'">View</button></td>
        <td>
            <button onclick="window.location.href = '/update/${pet.id}'">Update</button>
        </td>
        <td>
            <form action="/delete/${pet.id}">
                <button type="submit">Delete</button>
            </form>
        </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>