class Purchase < ApplicationRecord
  belongs_to :flight
  belongs_to :patron
end
