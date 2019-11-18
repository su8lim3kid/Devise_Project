class User < ApplicationRecord

has_many :managers

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
