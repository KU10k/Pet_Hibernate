<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>PET-Service</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
<div class="container mt-4">
    <h1>Pet</h1>
    <hr>
    <table class="table table-striped table-dark" border="1">

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
                <td>
                    <button type="button" class="btn btn-primary" onclick="window.location.href = '/${pet.id}'">View
                    </button>
                </td>
                <td>
                    <button type="button" class="btn btn-primary" onclick="window.location.href = '/update/${pet.id}'">
                        Update
                    </button>
                </td>
                <td>
                    <form action="/delete/${pet.id}" method="post">
                        <button type="submit" type="button" class="btn btn-primary">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br><br>
    <button type="button" class="btn btn-primary" onclick="window.location.href = '/create'">Create Id Pet</button>
</div>
</body>
</html>