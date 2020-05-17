
/*
dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}
*/


dataSource {
    pooled = true
    //autoReconnect = true
    dbCreate = "update"
    //url = "jdbc:mysql://parktower.us:3306/WillyShmo"
    //url = "jdbc:mysql://parktower.us:3306/WillyShmo?autoReconnect=true"
    //url = "jdbc:mysql://parktower.us:3306/WillyShmo"

    driverClassName = "com.mysql.jdbc.Driver"
    dialect = org.hibernate.dialect.MySQL5InnoDBDialect
    username = "JoeShmo"
    password = "pushkey6699"
    properties {
            //jmxEnabled = true
        maxActive = 50
        maxIdle = 25
        minIdle = 5
        initialSize = 5
        //minEvictableIdleTimeMillis = 60000
        //timeBetweenEvictionRunsMillis = 60000
        //maxWait = 10000

                 //maxAge = 10 * 60000

                //testOnBorrow = true
                //testWhileIdle = true
                //testOnReturn = false


        //validationQuery = "select 1"
        //validationInterval = 5000
               //validationQueryTimeout = 3
    }
}

hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}

// environment specific settings
environments {
    development {
        dataSource {
//            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
//            url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000"

			driverClassName = "com.mysql.jdbc.Driver"
			username = "AWSUser"
			password = "bamboo"
			dbCreate = "update"
                        url = "jdbc:mysql://parktower.us:3306/WillyShmo"
        }
    }
    test {
        dataSource {
            //dbCreate = "update"
            //url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    production {
        dataSource {
//            dbCreate = "update"
//            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
            pooled = true
//            properties {
//               maxActive = -1
//               minEvictableIdleTimeMillis=1800000
//               timeBetweenEvictionRunsMillis=1800000
//               numTestsPerEvictionRun=3
//               testOnBorrow=true
//               testWhileIdle=true
//               testOnReturn=true
//               validationQuery="SELECT 1"

/*

			driverClassName = "com.mysql.jdbc.Driver"
			username = "root"
			password = "IEFbr609"
			dbCreate = "update"
			//url = "jdbc:mysql://localhost:3306/ebdb"
			url = "jdbc:mysql://aaf4zgho9mszkl.cajwibjlesce.us-west-2.rds.amazonaws.com:3306/willyshmo"
			dialect = org.hibernate.dialect.MySQL5InnoDBDialect
			properties {
			 validationQuery = "SELECT 1"
			 testOnBorrow = true
			 testOnReturn = true
			 testWhileIdle = true
			 timeBetweenEvictionRunsMillis = 1800000
			 numTestsPerEvictionRun = 3
			 minEvictableIdleTimeMillis = 1800000

*/
			 }
        }
    }
}
