class Occupation < ApplicationRecord
  has_many :occupations_users
  has_many :users, through: :occupations_users
end
