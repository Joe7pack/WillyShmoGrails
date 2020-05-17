
<%@ page import="willyshmo.GamePlayer" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'gamePlayer.label', default: 'GamePlayer')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton">
            
            	<g:def var="accessAuthorizedVar" value="${params['accessAuthorized']}" />
            
            	<g:link class="create" 
            		
            		params="[accessAuthorized : accessAuthorizedVar ]"
            	
            		action="create"><g:message code="default.new.label" args="[entityName]" />
            	</g:link>
            </span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                            <g:sortableColumn 
                            	params="[accessAuthorized : accessAuthorizedVar ]"
                            	property="id" title="${message(code: 'gamePlayer.id.label', default: 'Id')}" />
                            
                            <g:sortableColumn
                            	params="[accessAuthorized : accessAuthorizedVar ]" 
                            	property="userName" title="${message(code: 'gamePlayer.userName.label', default: 'User Name')}" />
                            
                            <g:sortableColumn 
                            	params="[accessAuthorized : accessAuthorizedVar ]"
                            	property="highScore" title="${message(code: 'gamePlayer.highScore.label', default: 'High Score')}" />

                            <g:sortableColumn 
                            	params="[accessAuthorized : accessAuthorizedVar ]"
                            	property="highScoreOpponentId" title="${message(code: 'gamePlayer.highScore.label', default: 'High Score Opponent')}" />
                            
                            <g:sortableColumn 
                            	params="[accessAuthorized : accessAuthorizedVar ]"
                            	property="gamesPlayed" title="${message(code: 'gamePlayer.gamesPlayed.label', default: 'Games Played')}" />
                        
                            <g:sortableColumn 
                            	params="[accessAuthorized : accessAuthorizedVar ]"
                            	property="opponentName" title="${message(code: 'gamePlayer.opponentName.label', default: 'Opponent Name')}" />
                        
							<g:sortableColumn
								params="[accessAuthorized : accessAuthorizedVar ]" 
								property="onlineNow" title="${message(code: 'gamePlayer.onlineNow.label', default: 'Online Now')}" />                            
                        
                            <g:sortableColumn
                            	params="[accessAuthorized : accessAuthorizedVar ]" 
                            	property="playingNow" title="${message(code: 'gamePlayer.playingNow.label', default: 'Playing Now')}" />

                            <g:sortableColumn
                            	params="[accessAuthorized : accessAuthorizedVar ]" 
                            	property="lastUpdated" title="${message(code: 'gamePlayer.lastUpdated.label', default: 'Last Update Date')}" />
                            
                            <g:sortableColumn
                            	params="[accessAuthorized : accessAuthorizedVar ]" 
                            	property="dateCreated" title="${message(code: 'gamePlayer.dateCreated.label', default: 'Date Created')}" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${gamePlayerInstanceList}" status="i" var="gamePlayerInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td>
                            	<g:link action="show" 
	                            	params="[accessAuthorized : accessAuthorizedVar ]"
                                	id="${gamePlayerInstance.id}">${fieldValue(bean: gamePlayerInstance, field: "id")}
                            	</g:link>
                            </td>
                              
                            <td>${fieldValue(bean: gamePlayerInstance, field: "userName")}</td>
                            
                            <td>${fieldValue(bean: gamePlayerInstance, field: "highScore")}</td>
                            
                            <td>${fieldValue(bean: gamePlayerInstance, field: "highScoreOpponentName")}</td>
                            
                            <td>${fieldValue(bean: gamePlayerInstance, field: "gamesPlayed")}</td>
                            
                            <td>${fieldValue(bean: gamePlayerInstance, field: "opponentName")}</td>
                            
                            <td><g:formatBoolean boolean="${gamePlayerInstance.onlineNow}" /></td>
                            
                            <td><g:formatBoolean boolean="${gamePlayerInstance.playingNow}" /></td>
                            
                            <td><g:formatDate date="${gamePlayerInstance.lastUpdated}" /></td>
                        
                            <td><g:formatDate date="${gamePlayerInstance.dateCreated}" /></td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate 
                	params="[accessAuthorized : accessAuthorizedVar ]"
                	total="${gamePlayerInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
