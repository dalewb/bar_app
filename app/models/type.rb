class Type < ApplicationRecord
  has_many :beers
  has_many :flights, through: :beers
end
