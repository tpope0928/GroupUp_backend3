class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :game
  attributes :username, :city, :state, :game_id, :game
end
