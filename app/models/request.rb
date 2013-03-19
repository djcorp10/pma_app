class Request < ActiveRecord::Base
  attr_accessible :date, :email, :phone

  has_many :requested_items, dependent: :destroy

  validates :date, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX }
  VALID_PHONE_REGEX = /[0-9]/i
  validates :phone, presence:   true,
                    format:     { with: VALID_PHONE_REGEX },
                    length: { is: 10 }
end
