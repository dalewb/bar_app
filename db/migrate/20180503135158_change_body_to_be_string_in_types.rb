class ChangeBodyToBeStringInTypes < ActiveRecord::Migration[5.2]
  def change
    change_column :types, :body, :string
  end
end
