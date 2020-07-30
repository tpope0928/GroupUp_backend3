# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
Game.destroy_all


dota = Game.create(title: 'Dota2', genre: 'MOBA', level: '3', competitive: 'false', player_username: 'medesely')
val = Game.create(title: 'Valorant', genre: 'FPS', level: '3', competitive: 'true', player_username: 'medesely')
cod = Game.create(title: 'Call of Duty: Warzone', genre: 'BR', level: '4', competitive: 'false', player_username: 'backwardhatkid')

Player.create(username: 'drewP', city: 'Gaithersburg', state: 'Maryland', game_id: val.id)
Player.create(username: 'alecT', city: 'Houston', state: 'Texas', game_id: dota.id)
Player.create(username: 'robbyM', city: 'Nashville', state: 'Tennessee', game_id: cod.id)