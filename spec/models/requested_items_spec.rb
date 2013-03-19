require 'spec_helper'

describe RequestedItems do
	before do
		@requesteditems = RequestedItem.new(item_id: 5, qty: 5, quote_id: 5)
	end

	subject { @requesteditems }
	
	subject { @requesteditems }
	it { should respond_to(:item_id) }
	it { should respond_to(:qty) }
	it { should respond_to(:quote_id) }

	describe "when item_id is not present" do
		before { @requesteditems.item_id = " " }
		it { should_not be_valid }
	end

	describe "when quote_id is not present" do
		before { @requesteditems.quote_id = " " }
		it { should_not be_valid }
	end

	describe "when qty is not present" do
		before { @requesteditems.qty = " " }
		it { should_not be_valid }
	end

end
