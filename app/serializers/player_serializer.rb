class PlayerSerializer < ActiveModel::Serializer
  belongs_to :game
  attributes :username, :city, :state, :game_id
end
