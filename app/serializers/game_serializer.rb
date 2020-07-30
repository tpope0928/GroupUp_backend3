class GameSerializer
  include FastJsonapi::ObjectSerializer
  has_many :players
  attributes :title, :genre, :level, :competitive, :player_username
end
