class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :departure_datetime
      t.datetime :arrival_datetime
      t.integer :duration
      t.decimal :price
      t.references :departure_airport, foreign_key: {to_table: :airports}
      t.references :arrival_airport, foreign_key: {to_table: :airports}

      t.timestamps
    end
  end
end
