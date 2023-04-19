
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
<h1>Pet</h1><hr>

Pet: ${pet.pets}<br><br>
Name Pet ${pet.petName}<br><br>
Age Pet ${pet.age}<br><br>
Sex of the Animal: ${pet.sexOfTheAnimal}<br><br>
Email Of The Owner:${pet.emailOfTheOwner}<br><br>
Phone Number Of The Owner:${pet.phoneNumberOfTheOwner}<br><br>
City: ${pet.city}<br><br>

<button type="button" class="btn btn-primary" onclick="window.location.href ='/'">Back to all Pet</button>
</div>
</body>
</html>