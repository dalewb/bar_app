class CreatePatrons < ActiveRecord::Migration[5.2]
  def change
    create_table :patrons do |t|
      t.string :name
      t.string :favorite_type

      t.timestamps
    end
  end
end
