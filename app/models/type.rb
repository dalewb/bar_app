class Type < ApplicationRecord
  has_many :beers
  has_many :flights, through: :beers

  def type_list
    %w(Light Mild Medium Full)
  end

end
