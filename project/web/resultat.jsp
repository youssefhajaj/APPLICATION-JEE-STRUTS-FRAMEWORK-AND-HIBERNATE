<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<html:html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Person Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center mb-4">Person Details</h2>
        <div class="row">
            <div class="col-md-12">
                <h3>Nom & Prénom: <span class="font-weight-normal"><bean:write name="form" property="name" /></span></h3>
                <h3>Age: <span class="font-weight-normal"><bean:write name="form" property="age" /></span></h3>
                <h3>Ville de résidence: <span class="font-weight-normal"><bean:write name="form" property="ville" /></span></h3>
                <h3>Date de Naissance: <span class="font-weight-normal"><bean:write name="form" property="dateNaissance" /></span></h3>
                <div class="mt-3">
                    <html:link href="index.jsp">
                        <button class="btn btn-secondary">Back</button>
                    </html:link>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html:html>
