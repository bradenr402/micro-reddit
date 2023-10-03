class User < ApplicationRecord
  validates :username, :email, :password, presence: true

  validates :username, :email, uniqueness: true

  validates :username, length: { in: 4..16 }
  validates :password, length: { in: 6..20 }

  has_many :posts
  has_many :comments
end
