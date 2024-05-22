<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<html:html>
    <h3>Nom & Prénom     : <bean:write name="form" property="name" /></h3>
    <h3>Age   : <bean:write name="form" property="age" /></h3>
    <h3>Ville résidance  : <bean:write name="form" property="ville" /></h3>
    <h3>Date Naissance     : <bean:write name="form" property="dateNaissance" /></h3>
    <h3> <html:link href="index.jsp" >Back</html:link></h3>

</html:html>