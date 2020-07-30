class Game < ApplicationRecord
  has_many :players
  attributes :title, :genre, :level, :competitive, :player_username
end
