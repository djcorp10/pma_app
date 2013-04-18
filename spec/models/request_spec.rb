# require 'spec_helper'

# describe Request do
# 	before do
# 		@request = Request.new(date: 2012-10-10, email: "user@example.com", phone: 5074587654)
# 	end

# 	subject { @request }
# 	it { should respond_to(:date) }
# 	it { should respond_to(:email) }
# 	it { should respond_to(:phone) }


# 	it 'should delete requested items when request deleted' do
# 		requested_items = @request.requested_items
# 		@request.destroy
# 		requested_items.each do |requested_item|
# 			Requested_Item.find_by_id(requested_item.id).should be_nil
# 		end
# 	end
	
# 	describe "when date is not present" do
# 		before { @request.date = " " }
# 		it { should_not be_valid }
# 	end

# 	describe "when email is not present" do
# 		before { @request.email = " " }
# 		it { should_not be_valid }
# 	end

# 	describe "when email format is invalid" do
# 		it "should be_invalid" do
# 			addresses = %w[user@foo,com user_at_foo.org example.user@foo.foo@bar_baz.com foo@bar+baz.com]
# 			addresses.each do |invalid_address|
# 				@request.email = invalid_address
# 				@request.should_not be_valid
# 			end
# 		end
# 	end

# 	describe "when phone is not present" do
# 		before { @request.phone = " " }
# 		it { should_not be_valid }
# 	end

# 	describe "when phone format is invalid" do
# 		it "should be_invalid" do
# 			numbers = /[0-9]/i
# 			numbers.each do |invalid_number|
# 				@request.phone = invalid_number
# 				@request.should_not be_valid
# 			end
# 		end
# 	end

# 	describe "when phone is too long" do
# 		before { @request.phone = "5" * 11 }
# 		it { should_not be_valid }
# 	end

# 	describe "when phone is too short" do
# 		before { @request.phone = "5" * 9 }
# 		it { should_not be_valid }
# 	end

# end
