class User < ApplicationRecord
  has_many :user_routes
  has_many :routes, through: :user_routes
  has_many :runs
  validates_presence_of :name

  has_secure_password

  validates :password, presence: true, on: :create
end
