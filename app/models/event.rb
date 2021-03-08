class Event < ApplicationRecord
    scope :previous, -> { where("date < ?", Date.today) }
    scope :upcoming, -> { where("date >= ?", Date.today) }
    belongs_to :creator, class_name: 'User'
    has_many :invitations
    has_many :attendees, through: :invitations
end
