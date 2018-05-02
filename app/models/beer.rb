class Beer < ApplicationRecord
  belongs_to :type
  belongs_to :flight 
end
