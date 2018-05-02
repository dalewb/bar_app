class Patron < ApplicationRecord
  has_many :purchases
  has_many :flights, through: :purchases
end
