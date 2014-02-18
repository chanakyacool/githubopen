require 'spec_helper'

describe "casestudies/new" do
  before(:each) do
    assign(:casestudy, stub_model(Casestudy,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new casestudy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", casestudies_path, "post" do
      assert_select "input#casestudy_name[name=?]", "casestudy[name]"
      assert_select "textarea#casestudy_description[name=?]", "casestudy[description]"
    end
  end
end
