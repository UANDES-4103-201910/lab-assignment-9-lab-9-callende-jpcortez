class Place < ApplicationRecord
	has_many :events

	
	validates :name, length: {minimum: 20}, allow_blank: true
	validates :capacity, :numericality => { :greater_than_or_equal_to => 0 }


end
