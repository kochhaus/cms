<%@ page import="com.foodible.user.User" %>
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="authorized" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
<body>
    <section id="list-user" >

        <div class="navbar navbar-invers">
            <div class="navbar-inner">
                <form class="navbar-form pull-left">
                    <input type="text" class="span2" placeholder="${message(code: 'cms.userEmail')}">
                    <g:actionSubmit class="btn" action="search" value="${message(code: 'default.button.search.label')}" />
                </form>
                <div class="pull-right">
                    <g:link action="create" class="btn"><g:message code="default.button.create.label" /></g:link>
                </div>
            </div>
        </div>

        <br/><br/><br/>

        <cms:flashMessageHeader />

        <table class="table table-bordered">
            <thead>
                <tr>
                    <g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
                    <g:sortableColumn property="enabled" title="${message(code: 'user.enabled.label', default: 'Enabled')}" />
                    <th style="width: 40px"></th>
                </tr>
            </thead>
            <tbody>
            <g:each in="${userInstanceList}" status="i" var="userInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                    <td>${fieldValue(bean: userInstance, field: "email")}</td>
                    <td><g:formatBoolean boolean="${userInstance.accountExpired}" /></td>
                    <td>
                        <g:link action="edit" id="${userInstance.id}"><i class="icon-edit"></i></g:link>
                        &nbsp;
                        <g:link onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" action="delete" id="${userInstance.id}"><i class="icon-remove"></i></g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>

        <div class="paginate">
            <g:paginate next="Forward" prev="Back" max="1" maxsteps="0" action="list" total="${userInstanceTotal}" />
        </div>

    </section>

</body>
</html>
