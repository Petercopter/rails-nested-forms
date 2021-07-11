class Occupation < ApplicationRecord
  has_many :occupations_users
  has_many :users, through: :occupations_users

  accepts_nested_attributes_for :occupations_users,
                                allow_destroy: true,
                                reject_if: :all_blank
end
