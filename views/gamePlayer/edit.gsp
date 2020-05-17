

<%@ page import="willyshmo.GamePlayer" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'gamePlayer.label', default: 'GamePlayer')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${gamePlayerInstance}">
            <div class="errors">
                <g:renderErrors bean="${gamePlayerInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${gamePlayerInstance?.id}" />
                <g:hiddenField name="version" value="${gamePlayerInstance?.version}" />
                <g:hiddenField name="accessAuthorized" value="${params['accessAuthorized']}" />
                
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="gamesPlayed"><g:message code="gamePlayer.gamesPlayed.label" default="Games Played" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: gamePlayerInstance, field: 'gamesPlayed', 'errors')}">
                                    <g:textField name="gamesPlayed" value="${fieldValue(bean: gamePlayerInstance, field: 'gamesPlayed')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="highScore"><g:message code="gamePlayer.highScore.label" default="High Score" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: gamePlayerInstance, field: 'highScore', 'errors')}">
                                    <g:textField name="highScore" value="${fieldValue(bean: gamePlayerInstance, field: 'highScore')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="onlineNow"><g:message code="gamePlayer.onlineNow.label" default="Hosting Now" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: gamePlayerInstance, field: 'onlineNow', 'errors')}">
                                    <g:checkBox name="onlineNow" value="${gamePlayerInstance?.onlineNow}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="playingNow"><g:message code="gamePlayer.playingNow.label" default="Playing Now" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: gamePlayerInstance, field: 'playingNow', 'errors')}">
                                    <g:checkBox name="playingNow" value="${gamePlayerInstance?.playingNow}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userName"><g:message code="gamePlayer.userName.label" default="User Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: gamePlayerInstance, field: 'userName', 'errors')}">
                                    <g:textField name="userName" value="${gamePlayerInstance?.userName}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
