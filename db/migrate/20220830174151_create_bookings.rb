class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :num_passengers
      t.integer :flight_id, foreign_key: { to_table: :flights }

      t.timestamps
    end
  end
end
