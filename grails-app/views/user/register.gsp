<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <title>Registration Page</title>
    <meta name="layout" content="main" />
    <meta name="skipLoginLink" content="true" />
  </head>
  <body>
    <div class="content scaffold-create" role="main">
      <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
      </g:if>
       <g:hasErrors bean="${flash.user}">

        <div class="errors">
          <g:renderErrors bean="${flash.user}" />
        </div>
      </g:hasErrors>

      <div class="nav" role="navigation">
        <ul>
          <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        </ul>
      </div>

      <h1>Enter your details below to register new User.</h1>
      <form action="handleRegistration">
        <div class="fieldcontain required">
          <label for="login">Login:</label>
          <input type="text" name="login" />
        </div>
        <div class="fieldcontain required">
          <label for="password">Password:</label>
          <input type="password" name="password" />
        </div>
        <div class="fieldcontain required">
          <label for="confirm">Confirm Password:</label>
          <input type="password" name="confirm" />
        </div>
        <div class="fieldcontain required">
          <label for="firstName">First Name:</label>
          <input type="text" name="firstName" />
        </div>
        <div class="fieldcontain required">
          <label for="lastName">Last Name:</label>
          <input type="text" name="lastName" />
        </div>
        <div class="fieldcontain required">
          <label for="email">Email:</label>
          <input type="text" name="email" />
        </div>
        <br/>
        <div class="nav" role="navigation">
          <input type="submit" value="Register" />
        </div>

      </form>
    </div>
  </body>
</html>
