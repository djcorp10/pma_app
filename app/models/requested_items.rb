class RequestedItems < ActiveRecord::Base
  attr_accessible :item_id, :qty, :quote_id
  belongs_to :item
  belongs_to :request


end
