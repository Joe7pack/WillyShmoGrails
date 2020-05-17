package willyshmo

import java.util.Date;

import groovy.sql.Sql

class LogFile {
	
	String logMessage
	Date dateCreated
	
    // static constraints = { }
	
	static mapping = {
		table 'tictacshmo_log'
		columns {
			id column:'logMessage_id'
			logMessage column:'log_message'
		}
	}

}
	


