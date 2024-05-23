<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Person List</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2>Person List</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Ville</th>
                    <th>Date of Birth</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="personne" items="${personneList}">
                    <tr>
                        <td>${personne.id}</td>
                        <td>${personne.name}</td>
                        <td>${personne.age}</td>
                        <td>${personne.ville}</td>
                        <td>${personne.dateNaissance}</td>
                        <td>
                            <form id="deleteForm_${personne.id}" action="deletePersonne" method="post">
                                <input type="hidden" name="id" value="${personne.id}">
                                <button type="button" class="btn btn-danger btn-sm" onclick="confirmDelete(${personne.id})">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="index.jsp" class="btn btn-secondary mt-3">Back</a>
    </div>
    <script>
        function confirmDelete(id) {
            var confirmation = confirm("Are you sure you want to delete this person?");
            if (confirmation) {
                document.getElementById("deleteForm_" + id).submit();
            }
        }
    </script>
</body>
</html>
