<%@ page import="com.chcitohned.domain.Item" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>

   <table>
       <tr><th>name</th><th>${item.name}</th></tr>
       <tr><td>description</td><td>${item.description}</td></tr>
       <tr><td>category</td><td>${item.category}</td></tr>
   </table>
<g:form>
    <g:actionSubmit value="Koupit" controller="Buy" action="buy" id="${item.id}"></g:actionSubmit>
</g:form>
</body>
</html>