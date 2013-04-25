class Item < ActiveRecord::Base
  attr_accessible :name, :qty

  belongs_to :quote
  accepts_nested_attributes_for :quote

  validates :name, presence: true
  validates :qty, presence: true
end
