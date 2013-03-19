require 'spec_helper'

describe Event do
  before do
    @event = Event.new(date: (2012, 10, 10), location: "Toner Center", name: "Example Event", :user_id 0)
  end

  subject { @event }
  it { should respond_to(:name) }
  it { should respond_to(:date) }
  it { should respond_to(:location) }
  it { should respond_to(:user_id) }

  describe "when name is not present" do
    before { @event.name = " " }
    it { should_not be_valid }
  end

  describe "when date is not present" do
    before { @event.date = " " }
    it { should_not be_valid }
  end

  describe "when location is not present" do
    before { @event.location = " " }
    it { should_not be_valid }
  end

  describe "when user_id is not present" do
    before { @event.user_id = " " }
    it { should_not be_valid }
  end

end
