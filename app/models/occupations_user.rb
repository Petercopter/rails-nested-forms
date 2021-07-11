class OccupationsUser < ApplicationRecord
  belongs_to :occupation
  belongs_to :user
end
