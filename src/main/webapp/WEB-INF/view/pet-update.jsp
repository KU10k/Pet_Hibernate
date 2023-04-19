<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>PET-Service</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<div class="container mt-4">
    <h2>Pets</h2>
    <hr>

    <form:form method="post" action="/update" modelAttribute="pet">

        <form:hidden path="id"/>
        Pet: <form:input path="pets"/>
        <form:errors path="pets"/>
        <br><br>
        Name Pet: <form:input path="petName"/>
        <form:errors path="petName"/>
        <br><br>
        Age Pet: <form:input path="age"/>
        <form:errors path="age"/>
        <br><br>

        Sex of the Animal:
        <form:radiobutton path="sexOfTheAnimal" value="Male gender" label="M"/>
        <form:radiobutton path="sexOfTheAnimal" value="Female gender" label="W"/>
        <form:errors path="sexOfTheAnimal"/>
        <br><br>

        Email Of The Owner: <form:input path="emailOfTheOwner"/>
        <form:errors path="emailOfTheOwner"/>
        <br><br>

        Phone Number Of The Owner: <form:input path="phoneNumberOfTheOwner"/>
        <form:errors path="phoneNumberOfTheOwner"/>
        <br><br>

        <form:select path="city">
            <form:option value="Moskow" label="MSK"/>
            <form:option value="SPB" label="SPB"/>
        </form:select>
        <br><br>

        <button type="submit" class="btn btn-info">Submit</button>
        <br><br>
        <button type="button" class="btn btn-primary" onclick="window.location.href ='/'">Back to all Pet</button>

    </form:form>
</div>
</body>
</html>