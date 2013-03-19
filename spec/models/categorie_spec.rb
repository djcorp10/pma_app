require 'spec_helper'

describe Categorie do
  before do
    @categorie = Categorie.new(name: "Example Categorie")
  end

  subject { @categorie }
  it { should respond_to(:name) }

  describe "when name is not present" do
    before { @categorie.name = " " }
    it { should_not be_valid }
  end
end
