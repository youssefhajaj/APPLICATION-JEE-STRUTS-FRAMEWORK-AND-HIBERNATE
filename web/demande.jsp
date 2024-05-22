<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>

<html:html>
    <html:form action="add_demande.do" method="POST">
        <p>Nom :            <html:text name="form" property="nom"></html:text></p>
        <p>date Naissance : <html:text name="form" property="dn"></html:text></p>
        <p>ville :          <html:text name="form" property="ville"></html:text></p>
        <p>date Diplome :   <html:text name="form" property="dd"></html:text></p>
        <p><html:submit value="submit" /></p>
    </html:form>
</html:html>
        
        
        