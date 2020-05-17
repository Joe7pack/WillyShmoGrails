
<%@ page import="willyshmo.GamePlayer" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'gamePlayer.label', default: 'GamePlayer')}" />
        <title>Willy Shmo High Scores</title>
    </head>
    <body>
        
        <div class="body">
            <h1>Willy Shmo High Scores</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                             <th>${message(code: 'gamePlayer.userName.label', default: 'Player Name')}</th>
                            
                             <th>${message(code: 'gamePlayer.highScore.label', default: 'High Score')}</th>
                             
                             <th>${message(code: 'gamePlayer.highScore.label', default: 'High Score Against')}</th>
                             
                             <th>${message(code: 'gamePlayer.gamesPlayed.label', default: 'Games Played')}</th>
                             
                             <th>${message(code: 'gamePlayer.gamesPlayed.label', default: 'Now Playing Against')}</th>
                        
                             <th>${message(code: 'gamePlayer.lastUpdated.label', default: 'Last Update Date')}</th>
                            
                             <th>${message(code: 'gamePlayer.dateCreated.label', default: 'Date Created')}</th>
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${gamePlayerInstanceList}" status="i" var="gamePlayerInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td>${fieldValue(bean: gamePlayerInstance, field: "userName")}</td>
                            
                            <td>${fieldValue(bean: gamePlayerInstance, field: "highScore")}</td>
                            
                            <td>${fieldValue(bean: gamePlayerInstance, field: "highScoreOpponentName")}</td>
                            
                            <td>${fieldValue(bean: gamePlayerInstance, field: "gamesPlayed")}</td>
                            
                            <td>${fieldValue(bean: gamePlayerInstance, field: "opponentName")}</td>
                            
                            <td><g:formatDate date="${gamePlayerInstance.lastUpdated}" /></td>
                        
                            <td><g:formatDate date="${gamePlayerInstance.dateCreated}" /></td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            
            <div class="paginateButtons">
                <g:paginate total="${gamePlayerInstanceTotal}" />
            </div>
            
        </div>
    </body>
</html>
