<%@ page import="com.chcitohned.domain.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="item.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${itemInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="item.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${itemInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="item.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${com.chcitohned.domain.Category.list()}" optionKey="id" required="" value="${itemInstance?.category?.id}" class="many-to-one"/>
</div>

<!--<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'order', 'error')} ">
	<label for="order">
		<g:message code="item.order.label" default="Order" />
		
	</label>
	<g:select id="order" name="order.id" from="${com.chcitohned.domain.Subscription.list()}" optionKey="id" value="${itemInstance?.order?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>-->
