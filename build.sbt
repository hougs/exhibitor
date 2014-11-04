name := """exhibitor"""

version := "0.0.1-SNAPSHOT"

//lazy val root = (project in file(".")).enablePlugins(PlayScala)

scalaVersion := "2.11.1"

libraryDependencies ++= Seq(
  jdbc,
  cache,
  "com.novus" %% "salat" % "1.9.5"
)

play.Project.playScalaSettings
