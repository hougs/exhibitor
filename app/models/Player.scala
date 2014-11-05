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


/**
 * In a more perfect world, the Lists of plays would be options, Salat does not currently support this.
 * @param id
 * @param firstName
 * @param lastName
 * @param playByPlayName
 * @param primaryPosition
 * @param alternatePosition
 * @param height
 * @param yearOfBirth
 * @param startYear
 * @param rushPlays
 * @param passPlays
 * @param kickoffPlays
 * @param puntPlays
 */
case class Player(@Key("_id") id: ObjectId = new ObjectId,
                   @Key("FNAME") firstName: String,
                   @Key("LNAME") lastName: String,
                   @Key("PNAME") playByPlayName: String,
                   @Key("POS1") primaryPosition: String,
                   @Key("POS2") alternatePosition: String,
                   @Key("HEIGHT") height: Int,
                   @Key("YOB") yearOfBirth: BigInt,
                   @Key("START") startYear: BigInt,
                   @Key("rushplays") rushPlays: List[RushPlay] = List[RushPlay](),
                   @Key("passplays") passPlays: List[PassPlay] = List[PassPlay](),
                   @Key("kickoffplays") kickoffPlays: List[KickOffPlay] = List[KickOffPlay](),
                   @Key("puntplays") puntPlays: List[PuntPlay] = List[PuntPlay]()
                   )

case class RushPlay(@Key("yds") yards: Int,
                    @Key("dir") direction: String)

case class PassPlay(@Key("trg") passTarget: String,
                    @Key("loc") location: String,
                    @Key("yds") yards: Int)

case class KickOffPlay(@Key("kgro") gross: Int,
                       @Key("knet") net: Int,
                       @Key("ktb") touchBack: String,
                       @Key("kr") returner: String,
                       returnYardage: Int)

case class PuntPlay(@Key("pry") returnYardage: Int,
                    @Key("pgro") gross: Int,
                    @Key("pnet") net: Int)

object PlayerDAO extends ModelCompanion[Player, ObjectId]{
  val players_collection = MongoConnection()("test")("players")
  val dao = new SalatDAO[Player, ObjectId](collection = players_collection) {}
}

object Player {
  def all(): List[Player] = PlayerDAO.find(DBObject("FNAME" -> DBObject("$exists" -> true))).limit(50).toList
  def findById(id: String): Option[Player] = PlayerDAO.findOne(MongoDBObject("_id" -> new ObjectId(id)))
}
