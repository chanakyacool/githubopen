require 'spec_helper'

describe "casestudies/edit" do
  before(:each) do
    @casestudy = assign(:casestudy, stub_model(Casestudy,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit casestudy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", casestudy_path(@casestudy), "post" do
      assert_select "input#casestudy_name[name=?]", "casestudy[name]"
      assert_select "textarea#casestudy_description[name=?]", "casestudy[description]"
    end
  end
end
