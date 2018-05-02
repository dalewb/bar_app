class Flight < ApplicationRecord
  has_many :beers
  has_many :types, through: :beer
  has_many :purchases
  has_many :patrons, through: :patrons 
end
