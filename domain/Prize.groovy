package willyshmo

import groovy.sql.Sql

class Prize {
	
	String name
	String url
	String location
	byte[] image
	double latitude
	double longitude
	
	// static constraints = { }
	
	static mapping = {
		table 'tictacshmo_prizes'
		columns {
			id column:'prize_id'
		}
	}

}
	



