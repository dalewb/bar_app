class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :cost
      t.string :color
      t.string :origin
      t.integer :flight_id
      t.integer :type_id

      t.timestamps
    end
  end
end
