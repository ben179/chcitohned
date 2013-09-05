<%@ page import="com.chcitohned.domain.Item" %>
<%@ page import="com.chcitohned.domain.Category" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <title></title>
  </head>

  <body>
  <table>
    <g:form name="finder">
      <tr><td>Zboží, služba</td><td><g:textField name="item"/></td></tr>
      <tr><td>Město</td><td><g:textField name="city"/></td></tr>
      <g:if test="${categories != null && categories.size() > 1}">
        <tr><td>Kategorie</td><td><g:select name="category" from="categories"/></td></tr>
      </g:if>
      <tr><td><g:actionSubmit value="Najít" action="findItems"/></td>
      </tr>
    </g:form>
  </table>

  <table>
    <g:each in="${foudedItems}" var="item">
      <tr><td><g:link controller="itemDetail" action="show" id="${item.id}">${item.name}</g:link></td></tr>
    </g:each>
  </table>
</body>
</html>