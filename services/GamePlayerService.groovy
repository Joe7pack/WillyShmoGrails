package willyshmo

import groovy.sql.Sql

class GamePlayerService {

    static transactional = true
	
	def dataSource

    def serviceMethod() {
		println "Joe was here"
    }
		
	def updateGamesPlayed2(String gamePlayerId, String score) { }
	
	def updateGamesPlayed(String gamePlayerId, String score) {
		
//		println("updateGamesPlayed called with player Id: "+gamePlayerId+" score: "+score)
		def sql = new groovy.sql.Sql(dataSource)
		def gp = sql.dataSet("GamePlayer")
		def gameCountRow = (ArrayList)gp.rows("select games_played, high_score, opponent_id from tictacshmo_players where player_id = ?", gamePlayerId)
		def rowsReturned = gameCountRow.size();
//		println("gameCountRow is: "+gameCountRow.getClass().getName())
//		println("and i got: "+gameCountRow.get(0))
//		println("and i got: "+gameCountRow.get(0).getClass().getName())
//		println("updated count: "+Integer.toString(gameCountInt))
//		println(obj.getClass().getName())
//		String stringValue = Integer(gameCount.toString()
//		println("sringValue: ");
		if (rowsReturned == 1) {
			Integer gameCount = (Integer)gameCountRow.get(0).get("games_played")
			Integer highScore = (Integer)gameCountRow.get(0).get("high_score")
			
			Integer opponentId = (Integer)gameCountRow.get(0).get("opponent_id")
			String stringOpponentId = opponentId.intValue()
			
			int gameCountInt = gameCount.intValue()
			gameCountInt++
			String stringGameCount = Integer.toString(gameCountInt)
			
			int lastScore = Integer.parseInt(score)
			int highScoreInt = highScore.intValue();
//			println("heres the row: "+gameCountRow)
			if (lastScore > highScoreInt)
				gp.executeUpdate("update tictacshmo_players set games_played = ?, high_score = ?, high_score_opponent_id = ? where player_id = ?", stringGameCount, score, stringOpponentId, gamePlayerId)
			else
				gp.executeUpdate("update tictacshmo_players set games_played = ? where player_id = ?", stringGameCount, gamePlayerId)
		}
	}
}
