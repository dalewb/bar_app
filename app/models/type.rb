class Type < ApplicationRecord
  has_many :beers
  has_many :flights, through: :beers

  def type_list
      %w(light mild medium full)
  end

end
