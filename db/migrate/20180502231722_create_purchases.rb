class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :patron_id
      t.integer :flight_id

      t.timestamps
    end
  end
end
