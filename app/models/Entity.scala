package models

import java.sql.ResultSet

import play.api.db.DB
import play.api.
import play.api.libs.json.Json
import play.api.libs.json.JsValue
import play.api.libs.json.Writes

case class Entity(id: Long)

object Entity {
  implicit val entityWrites = new Writes[Entity] {
    def writes(ent: Entity): JsValue = {
      Json.obj(
        "id" -> ent.id
      )
    }
  }

  def getById(id: Long) = DB.withConnection { implicit conn =>
      val statement = conn.prepareStatement("SELECT something FROM user_table")
      val results: ResultSet = statement.executeQuery()
  }


}