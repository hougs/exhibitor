package models

import com.mongodb.casbah.Imports._
import com.novus.salat.annotations.{Salat, Key}
import com.novus.salat.dao.ModelCompanion
import com.novus.salat.dao.SalatDAO
import com.mongodb.casbah.{Imports, MongoConnection}
import com.mongodb.casbah.Imports.ObjectId
import com.novus.salat.Context
import mongoContext._
import org.bson.types.ObjectId



case class Player(@Key("_id") id: ObjectId = new ObjectId,
                   @Key("FNAME") firstName: String,
                   @Key("LNAME") lastName: String,
                   @Key("PNAME") playByPlayName: String,
                   @Key("POS1") primaryPosition: String,
                   @Key("POS2") alternatePosition: String,
                   @Key("HEIGHT") height: Int,
                   @Key("YOB") yearOfBirth: BigInt,
                   @Key("START") startYear: BigInt,
                   @Key("rushplays") rushPlays: Option[List[RushPlays]],
                   @Key("plassplays") passPlays: Option[List[PassPlays]],
                   @Key("kickoffplays") kickoffPlays: Option[List[KickOffPlays]],
                   @Key("puntplays") puntPlays: Option[List[PuntPlays]]
                   )

case class RushPlays(yds: Int, dir: String)
case class PassPlays(passTarget: String, location: String, yards: Int)
case class KickOffPlays(gross: Int, net: Int, touchBack: String, returner: String, returnYardage: Int)
case class PuntPlays(returnYardage: Int, gross: Int, net: Int)

object PlayerDAO extends ModelCompanion[Player, ObjectId]{
  val players_collection = MongoConnection()("test")("players")
  val dao = new SalatDAO[Player, ObjectId](collection = players_collection) {}
}

object Player {
  def all(): List[Player] = PlayerDAO.find(DBObject("FNAME" -> DBObject("$exists" -> true))).limit(50).toList
  def findById(id: String): Option[Player] = PlayerDAO.findOne(MongoDBObject("_id" -> new ObjectId(id)))
}
