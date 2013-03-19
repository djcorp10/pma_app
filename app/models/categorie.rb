class Categorie < ActiveRecord::Base
  attr_accessible :name

  belongs_to :item

  validates :name, presence: true
end
