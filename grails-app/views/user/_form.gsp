<%@ page import="com.chcitohned.domain.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'login', 'error')} ">
	<label for="login">
		<g:message code="user.login.label" default="Login" />
		
	</label>
	<g:textField name="login" value="${userInstance?.login}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="user.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${userInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${userInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'soldSubscriptions', 'error')} ">
	<label for="soldSubscriptions">
		<g:message code="user.soldSubscriptions.label" default="Sold Subscriptions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.soldSubscriptions?}" var="s">
    <li><g:link controller="subscription" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<!--<li class="add">
<g:link controller="subscription" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'subscription.label', default: 'Subscription')])}</g:link>
</li>-->
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'boughtSubscriptions', 'error')} ">
	<label for="boughtSubscriptions">
		<g:message code="user.boughtSubscriptions.label" default="Bought Subscriptions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.boughtSubscriptions?}" var="b">
    <li><g:link controller="subscription" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<!--<li class="add">
<g:link controller="subscription" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'subscription.label', default: 'Subscription')])}</g:link>
</li>-->
</ul>

</div>

