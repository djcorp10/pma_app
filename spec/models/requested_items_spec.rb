require 'spec_helper'

describe RequestedItems do
	before do
		@requesteditems = RequestedItem.new(item_id: 5, qty: 5, quote_id: 5)
	end

	subject { @requesteditems }

end
