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
 
