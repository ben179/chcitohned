<%@ page import="com.chcitohned.domain.Subscription" %>



<div class="fieldcontain ${hasErrors(bean: subscriptionInstance, field: 'buyer', 'error')} required">
	<label for="buyer">
		<g:message code="subscription.buyer.label" default="Buyer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buyer" name="buyer.id" from="${com.chcitohned.domain.User.list()}" optionKey="id" required="" value="${subscriptionInstance?.buyer?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subscriptionInstance, field: 'seller', 'error')} required">
	<label for="seller">
		<g:message code="subscription.seller.label" default="Seller" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="seller" name="seller.id" from="${com.chcitohned.domain.User.list()}" optionKey="id" required="" value="${subscriptionInstance?.seller?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subscriptionInstance, field: 'items', 'error')} ">
	<label for="items">
		<g:message code="subscription.items.label" default="Items" />
		
	</label>
  	<g:select name="items" from="${com.chcitohned.domain.Item.list()}" multiple="multiple" optionKey="id" size="5" value="${subscriptionInstance?.items*.id}" class="one-to-many"/>
	
<ul class="one-to-many">
<g:each in="${subscriptionInstance?.items?}" var="i">
    <li><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<!--<li class="add">
<g:link controller="item" action="create" params="['subscription.id': subscriptionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'item.label', default: 'Item')])}</g:link>
</li>-->
</ul>

</div>

