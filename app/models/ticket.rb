class Ticket < ApplicationRecord
  belongs_to :event
  has_many :user_tickets
  has_many :users, through: :user_tickets

  validates :price, numericality: {greater_than_or_equal_to: 0}
  validate :ticket_on_time_event



  def ticket_on_time_event
    ev = Event.find(event.id)
    if ev.start_date < Date.today()
      errors.add(:base, "Can't sell a ticket for a past event")
    end
  end

end
