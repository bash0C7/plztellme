require 'spec_helper'

describe "telephones/edit" do
  before(:each) do
    @telephone = assign(:telephone, stub_model(Telephone,
      :number => "MyString"
    ))
  end

  it "renders the edit telephone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", telephone_path(@telephone), "post" do
      assert_select "input#telephone_number[name=?]", "telephone[number]"
    end
  end
end
