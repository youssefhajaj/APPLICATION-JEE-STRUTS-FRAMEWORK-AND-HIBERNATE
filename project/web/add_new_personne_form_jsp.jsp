<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<html:html>
    <html:form action="add_new_personne.do" method="post">
        
        <p>Name : <html:text name="form" property="name"></html:text></p>
        <html:errors property="nomvide" />
        
        <p>Age : <html:text name="form" property="age"></html:text></p>
        <html:errors property="agevide" />
        <html:errors property="ageinvalide" />
        
        <p>Ville : <html:text name="form" property="ville"></html:text></p>
        <html:errors property="villevidevillevide" />
        
        <p>Date de Naissance : <html:text name="form" property="dateNaissance"></html:text></p>
        <html:errors property="datenaissancevide" />
        <html:errors property="datenaissanceinvalide" />
        
        <html:submit value="Envoyer"></html:submit>
        
    </html:form>
</html:html>