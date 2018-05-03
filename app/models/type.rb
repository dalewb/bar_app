class Type < ApplicationRecord
  has_many :beers
  has_many :flights, through: :beers

  def body
    %w(Light Mild Medium Full)
  end

end
