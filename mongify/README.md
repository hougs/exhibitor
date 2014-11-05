Mongify
=======

This directory contains resources for doing ETL for football play data
from a SQL database to mongodb.

* football.sql.tar.gz is a dump of the sql db.
* plays_with_players.sql contains statments to join plays with player ids and
	create tables on a per play type basis. This is required for using
	mongify to move football data into a player keyed mongodb collection.
* database.config and football_translation.db are files required by mongify to
	correctly embedd json play records in player records.
* dump/ is a directory containing a dump of the mongo db that contains a players	collection as created by mongify using the associated config and
	translation file.

Configuring MongoDB and Loading the Data
========================================
[Install MongoDb](http://www.mongodb.org/).


There is a dump of the players collection that this application relies on in
the {$PROJECT_PATH}/exhibitor/mongify/dump/test/players.bson. Installing mongodb
allows you to use the `mongorestore` tool to load this data into your local
instance. If mongod is running, you can load data with the following command:
	
	mongorestore <path/to/players.bson dump> --db football --collection players

This will create a db named football with a collection of players.

 
