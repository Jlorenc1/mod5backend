# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Friendship.destroy_all
Game.destroy_all

user1 = User.create(username: "user1", password:"123")
user2 = User.create(username: "user2", password:"123")
user3 = User.create(username: "user3", password:"123")
user4 = User.create(username: "user4", password:"123")
user5 = User.create(username: "user5", password:"123")
user6 = User.create(username: "user6", password:"123")
user7 = User.create(username: "user7", password:"123")
user8 = User.create(username: "user8", password:"123")
user9 = User.create(username: "user9", password:"123")
user10 = User.create(username: "user10", password:"123")

friendship1 =Friendship.create(follower: user1, followed: user2)
friendship2 =Friendship.create(follower: user1, followed: user3)
friendship3 =Friendship.create(follower: user1, followed: user4)
friendship4 =Friendship.create(follower: user1, followed: user5)
friendship5 =Friendship.create(follower: user1, followed: user6)
friendship1 =Friendship.create(follower: user2, followed: user1)
friendship1 =Friendship.create(follower: user2, followed: user7)
friendship1 =Friendship.create(follower: user2, followed: user8)
friendship1 =Friendship.create(follower: user2, followed: user9)
friendship1 =Friendship.create(follower: user2, followed: user10)

game1 = Game.create(user_id: 1, score:500)
game2 = Game.create(user_id: 1, score:400)
game3 = Game.create(user_id: 1, score:300)
game4 = Game.create(user_id: 1, score:200)
game5 = Game.create(user_id: 1, score:100)

game6 = Game.create(user_id: 2, score:500)
game7 = Game.create(user_id: 2, score:400)
game8 = Game.create(user_id: 2, score:300)
game9 = Game.create(user_id: 2, score:200)
game10 = Game.create(user_id: 2, score:100)
