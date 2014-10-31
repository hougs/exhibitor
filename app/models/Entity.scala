package models

import play.api.db.DB

case class Entity(id: Long, results:)

object Entity {
  implicit def Writes[Entity] =
  def getById(id: Long) = DB.withConnection { implicit conn =>
      conn.
  }


}