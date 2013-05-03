class Quote < ActiveRecord::Base
  attr_accessible :date, :email, :phone, :item_ids

  has_many :items
  accepts_nested_attributes_for :items, :reject_if => lambda { |a| a[:id].blank? }

  validates :date, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX }
  VALID_PHONE_REGEX = /[0-9]/i
  validates :phone, presence:   true,
                    format:     { with: VALID_PHONE_REGEX },
                    length: { is: 10 }
  # validates :cost, presence: true
end
