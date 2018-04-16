class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets


  validate :is_same_place
  validate :date_cannot_be_in_the_past


  def date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "Can't be in the past")
    end
  end

  def is_same_place
    ev = Event.where(place: place, start_date: start_date).count()
    if ev > 1
      errors.add(:place, "Can't have 2 events at the same place and time")
    end
  end

end
