class Item < ActiveRecord::Base
  attr_accessible :name, :qty

  validates :name, presence: true
  validates :qty, presence: true
end
