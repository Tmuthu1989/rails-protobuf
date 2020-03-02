class Location < ApplicationRecord

	def self.from_message(message)
    Location.new.tap do |a|
      a.id = message.id
      a.country = message.country
      a.city = message.city
      a.place = message.place
    end
  end

  def to_message
    LocationMessage.new(
      :id => self.id,
      :country => self.country,
      :city => self.city,
      :place => self.placec
    )
  end

  def encode
    LocationMessage.encode(self.to_message)
  end
end
