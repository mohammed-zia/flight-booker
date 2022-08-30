class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :email
      t.integer :booking_id, foreign_key: { to_table: :bookings }

      t.timestamps
    end
  end
end