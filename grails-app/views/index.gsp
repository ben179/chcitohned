<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
    <style type="text/css" media="screen">
#status {
  background-color: #eee;
  border: .2em solid #fff;
  margin: 2em 2em 1em;
  padding: 1em;
  width: 12em;
  float: left;
  -moz-box-shadow: 0px 0px 1.25em #ccc;
  -webkit-box-shadow: 0px 0px 1.25em #ccc;
  box-shadow: 0px 0px 1.25em #ccc;
  -moz-border-radius: 0.6em;
  -webkit-border-radius: 0.6em;
  border-radius: 0.6em;
}

.ie6 #status {
  display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
}

#status ul {
  font-size: 0.9em;
  list-style-type: none;
  margin-bottom: 0.6em;
  padding: 0;
}

#status li {
  line-height: 1.3;
}

#status h1 {
  text-transform: uppercase;
  font-size: 1.1em;
  margin: 0 0 0.3em;
}

#page-body {
  margin: 2em 1em 1.25em 18em;
}

h2 {
  margin-top: 1em;
  margin-bottom: 0.3em;
  font-size: 1em;
}

p {
  line-height: 1.5;
  margin: 0.25em 0;
}

#controller-list ul {
  list-style-position: inside;
}

#controller-list li {
  line-height: 1.3;
  list-style-position: inside;
  margin: 0.25em 0;
}

    </style>
  </head>
  <body>
    <a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div id="status" role="complementary">
      <h2>Busines objects:</h2> 

      <ul>
        <g:each var="c" in="${grailsApplication.domainClasses.sort { it.name } }">
          <li class="controller">${c.name}</li>
        </g:each>
      </ul>

      <h2>Controllers:</h2> 

      <ul>
        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name } }">
          <li class="controller">${c.name}</li>
        </g:each>
      </ul>
      <h2>Application Status</h2>
      <ul>
        <li>App version: <g:meta name="app.version"/></li>
        <li>Grails version: <g:meta name="app.grails.version"/></li>
        <li>JVM version: ${System.getProperty('java.version')}</li>
        <li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
        <li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
        <li>Domains: ${grailsApplication.domainClasses.size()}</li>
        <li>Services: ${grailsApplication.serviceClasses.size()}</li>
        <li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
      </ul>

    </div>
    <div id="page-body" role="main">
    
    
      <h1>Chci to hned! - verze <g:meta name="app.version"/></h1>
      <p>
        Implementovany domenove tridy User, Category, Item a Subscription.<br/>
        Kazdy Item musi nalezet do jedne Category.<br/>
        Subscription (objednavka) musi obsahovat 1 Buyera, 1 Sellera a 1+ Itemu<br/>
        Statickym scaffoldingem vygenerovane controllery a views pro domenove tridy<br/>
        Vytvorena abstraktni nadtrida LoginController od ktere dedi vsechny ostatni Controllery<br/>
        V UserControlleru vytvoreny akce pro login, logout, register + view pages <br/>
      </p>


      <div id="controller-list" role="navigation">

        <h2>AJAX Magic:</h2>
        <ul>  
          <li class="controller"><g:link controller="search">Find Items</g:link></li>
          <li class="controller"><g:link controller="search" action="findByLocation" rel="external">Find Items By Location(Google Maps)</g:link></li>
        </ul>

        <h2>User Actions:</h2>
        <ul>  
          <li class="controller"><g:link controller="user">List, Edit and Delete Users</g:link></li>
          <li class="controller"><g:link controller="user" action="create">Create New User</g:link></li>
        </ul>

        <h2>Items & Categories Actions:</h2>
        <ul>  
          <li class="controller"><g:link controller="category">List, Edit and Delete Categories</g:link></li>
          <li class="controller"><g:link controller="category" action="create">Create New Item Category</g:link></li>
          <li class="controller"><g:link controller="item">List,Edit and Delete Items</g:link></li>
          <li class="controller"><g:link controller="item" action="create">Create New Item</g:link></li>

        </ul>

        <h2>Shopping Actions:</h2>
        <ul>  
          <li class="controller"><g:link controller="subscription">List, Edit and Delete Orders</g:link></li>
          <li class="controller"><g:link controller="subscription" action="create">Create New Order</g:link></li>
        </ul>

        <h2>Geo points:</h2>
        <ul>  
          <li class="controller"><g:link controller="geopoint">Geopoints</g:link></li>
        </ul>
    
        <h2>Main page</h2>
          <ul>
              <li class="controller"><g:link controller="Main">Main page</g:link></li>
          </ul>

        <p>
          <br/>
          TODOS:<br/> 
          pridat customizovane constrainty do business domenovych objektu <br/>
          (buyer se nesmi rovnat seller u Item, heslo nesmi byt stejne jako login u User atd.) <br/>
          Item, ktery uz je v objednavce se nesmi dat pridat k dalsi objednavce ...<br/>
          pridat moznost uploadovat fotografie k User a Item (MultipartFile interface) <br/>

        </p>

      </div>
    </div>
  </body>
</html>
