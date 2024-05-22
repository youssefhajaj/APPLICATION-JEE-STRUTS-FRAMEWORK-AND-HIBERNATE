<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<html:html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add New Personne</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Add New Personne</h2>
        <html:form action="add_new_personne.do" method="post">
            <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Name:</label>
                <div class="col-sm-10">
                    <html:text name="form" property="name" style="width: 100%;" />
                    <div class="text-danger">
                        <html:errors property="nomvide" />
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="age" class="col-sm-2 col-form-label">Age:</label>
                <div class="col-sm-10">
                    <html:text name="form" property="age" style="width: 100%;" />
                    <div class="text-danger">
                        <html:errors property="agevide" />
                        <html:errors property="ageinvalide" />
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="ville" class="col-sm-2 col-form-label">Ville:</label>
                <div class="col-sm-10">
                    <html:text name="form" property="ville" style="width: 100%;" />
                    <div class="text-danger">
                        <html:errors property="villevidevillevide" />
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="dateNaissance" class="col-sm-2 col-form-label">Date de Naissance:</label>
                <div class="col-sm-10">
                    <html:text name="form" property="dateNaissance" style="width: 100%;" />
                    <div class="text-danger">
                        <html:errors property="datenaissancevide" />
                        <html:errors property="datenaissanceinvalide" />
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-12 text-center">
                    <html:submit value="Envoyer" styleClass="btn btn-primary" />
                </div>
            </div>
        </html:form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html:html>
