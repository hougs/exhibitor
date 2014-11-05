Exhibitor
=========

Exhibitor is a simple play application for viewing data related to entities
that have a **supernova schema**. 

Viewing Football Exhibitor
==========================
In order to view this app, you must have a local mongodb instance with the
requiste data. A data dump is located in the mongify directory and directions
for loading are in the README.md in the dir. That directory also contains
resources used to ETL the csv sample files we are grabbing data from. When
you have a mongo instance loaded with data, you can view the app by typing
`sbt run` and navigating to [here](0.0.0.0:9000/players/all). Clicking on
a player's name will direct you to their profile page.

