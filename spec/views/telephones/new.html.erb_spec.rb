require 'spec_helper'

describe "telephones/new" do
  before(:each) do
    assign(:telephone, stub_model(Telephone,
      :number => "MyString"
    ).as_new_record)
  end

  it "renders new telephone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", telephones_path, "post" do
      assert_select "input#telephone_number[name=?]", "telephone[number]"
    end
  end
end
