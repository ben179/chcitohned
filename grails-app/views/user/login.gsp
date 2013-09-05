<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <title>Login Page</title>
    <meta name="layout" content="main" />
    <meta name="skipLoginLink" content="true" />
  </head>
  <body>
    <g:set var="hideLogin" value="${true}" />
    <div class="content scaffold-create" role="main">
      <div class="message">${flash.message}</div>

      <div class="nav" role="navigation">
        <ul>
          <li><g:link class="create" action="register">Register here</g:link></li>
          <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        </ul>
      </div>
      <h1>
        Log In
      </h1>
      <form action="handleLogin">
        <div  class="fieldcontain required">
          <label for="login">Login:</label>
          <input type="text" name="login" />
        </div>
        <div class="fieldcontain required">
          <label for="password">Password:</label>
          <input type="password" name="password" />
        </div>
        <br/>

        <input type="hidden" name="originalUrl" value="${params.originalUrl}"/>
        <div class="nav" role="navigation">
          <input type="submit" value="Log In" />
        </div>

      </form>
    </div>
  </body>
</html>
