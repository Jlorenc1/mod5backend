class User < ApplicationRecord
    has_secure_password

    # validates :username, presence: true
    # validates :username, uniqueness: true
    # validates :password, presence: true

    has_many :games, dependent: :destroy

    has_many :follower_follows, class_name: "Friendship", foreign_key: :followed_id, dependent: :destroy
    has_many :followers, through: :follower_follows, source: :follower
    has_many :followee_followers, class_name: "Friendship", foreign_key: :follower_id, dependent: :destroy
    has_many :following, through: :followee_followers, source: :followed

end
