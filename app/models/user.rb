class User < ApplicationRecord
  has_many :occupations_users
  has_many :occupations, through: :occupations_users
end
