class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_airport_id"
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_airport_id"
  has_many :bookings
  has_many :passengers, through: :bookings

  def departure_date_formatted
    departure_datetime.strftime("%m/%d/%Y at %H:%M")
  end

  def arrival_date_formatted
    arrival_datetime.strftime("%m/%d/%Y at %H:%M")
  end

  def formatted_duration(total_minute)
    hours = total_minute / 60
    minutes = (total_minute) % 60
    "#{ hours }h #{ minutes }min"
  end
  
end
