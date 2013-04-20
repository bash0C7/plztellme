require 'spec_helper'

describe "telephones/show" do
  before(:each) do
    @telephone = assign(:telephone, stub_model(Telephone,
      :number => "Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Number/)
  end
end
