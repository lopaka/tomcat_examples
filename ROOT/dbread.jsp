<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/ConnDB">
select id,name,value from app_test
</sql:query>

<html>
  <head>
    <title>DB Connection</title>
  </head>
  <body>

  <h2>Results</h2>

Tomcat server info:<br/>
provider  : ec2 <br/>
public_ip : 174.129.52.204 <br/>
private_ip: 10.202.163.127 <br/>

<c:forEach var="row" items="${rs.rows}">
    
    ${row.name} = ${row.value}<br/>

</c:forEach>

  </body>
</html>
