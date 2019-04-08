class RoomMessage < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :message, presence: true
  
  delegate :username, to: :user
  
  def as_json(options)
    super(options).merge(username: username)
  end
end
