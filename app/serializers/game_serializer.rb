class GameSerializer < ActiveModel::Serializer
  has_many :players
  attributes :title, :genre, :level, :competitive, :player_username
end
