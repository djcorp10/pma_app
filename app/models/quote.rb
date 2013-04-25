class Quote < ActiveRecord::Base
  attr_accessible :date, :email, :phone, :cost

  has_many :requested_items, dependent: :destroy
  has_many :items

  validates :date, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX }
  VALID_PHONE_REGEX = /[0-9]/i
  validates :phone, presence:   true,
                    format:     { with: VALID_PHONE_REGEX },
                    length: { is: 10 }
  validates :cost, presence: true
end
