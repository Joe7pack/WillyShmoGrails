
<%@ page import="willyshmo.GamePlayer" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'gamePlayer.label', default: 'GamePlayer')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="gamePlayer.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: gamePlayerInstance, field: "id")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="gamePlayer.userName.label" default="User Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: gamePlayerInstance, field: "userName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="gamePlayer.dateCreated.label" default="Date Created" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${gamePlayerInstance?.dateCreated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="gamePlayer.gamesPlayed.label" default="Games Played" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: gamePlayerInstance, field: "gamesPlayed")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="gamePlayer.highScore.label" default="High Score" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: gamePlayerInstance, field: "highScore")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="gamePlayer.lastUpdated.label" default="Last Updated" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${gamePlayerInstance?.lastUpdated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="gamePlayer.onlineNow.label" default="Online Now" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${gamePlayerInstance?.onlineNow}" /></td>
                            
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="gamePlayer.playingNow.label" default="Playing Now" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${gamePlayerInstance?.playingNow}" /></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${gamePlayerInstance?.id}" />
                    
                    <g:hiddenField name="accessAuthorized" value="${params['accessAuthorized']}" />
                    
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
