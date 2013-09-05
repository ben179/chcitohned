<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="layout" content="main">
  <g:javascript library="jquery" />


</head>
<body>
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    </ul>
  </div>
  <div style="width: 100%; height:90%">
  <div style="width:300px; height:30px; margin: auto; margin-top: 100px; ">
    <span style="text-align: right"><b>Já chci&nbsp;</b></span>
    <span><g:remoteField action="findItems" update="itemContainer" name="title" /></span>
  </div>
  <div style="width:300px; height:100px; position:relative; margin: auto; margin-top: 50px ">  
    <g:render template="foundItems" />
  </div>
  </div>
</body>
</html>
