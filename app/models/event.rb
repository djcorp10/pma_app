class Event < ActiveRecord::Base
  attr_accessible :date, :location, :name, :user_id

  validates :date, presence: true
  validates :name, presence: true
  validates :location, presence: true
  validates :user_id, :presence => { :message => "user_id is required" }
end
