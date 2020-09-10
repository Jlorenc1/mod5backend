class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :games
  
  # has_many :followers, foreign_key: :follower_id , class_name: "Friendship"
  # has_many :followed, through: :followers
  # has_many :followed, foreign_key: :followed_id, class_name: "Friendship"
  # has_many :followers, through: :followed

  # has_many :follower_follows, class_name: "Friendship", foreign_key: :followed_id, dependent: :destroy
  has_many :followers, through: :follower_follows, source: :follower
  # has_many :followee_followers, class_name: "Friendship", foreign_key: :follower_id, dependent: :destroy
  has_many :following, through: :followee_followers, source: :followed

end
 