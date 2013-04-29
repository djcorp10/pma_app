class Item < ActiveRecord::Base
  attr_accessible :name, :qty, :cost

  belongs_to :quote
  accepts_nested_attributes_for :quote

  validates :name, presence: true
  validates :qty, presence: true
  validates :cost, presence: true
end
