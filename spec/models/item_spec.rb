require 'spec_helper'

describe Item do
	before do
		@item = Item.new(name: "Example Item", qty: 5)
	end

	subject { @item }

	it { should respond_to(:categorie_id) }
	it { should respond_to(:name) }
	it { should respond_to(:qty) }

	describe "when name is not present" do
		before { @item.name = " " }
		it { should_not be_valid }
	end

	describe "when qty is not present" do
		before { @item.qty = " " }
		it { should_not be_valid }
	end

end
