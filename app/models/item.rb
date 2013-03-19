class Item < ActiveRecord::Base
  attr_accessible :categorie_id, :name, :qty

  has_one :categorie

  validates :name, presence: true
  validates :categorie_id, :presence => { :message => "categorie_id is required" }
  validates :qty, presence: true
end
