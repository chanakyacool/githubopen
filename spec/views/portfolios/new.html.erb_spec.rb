require 'spec_helper'

describe "portfolios/new" do
  before(:each) do
    assign(:portfolio, stub_model(Portfolio,
      :project_name => "MyString",
      :description => "MyString",
      :project_website => "MyString"
    ).as_new_record)
  end

  it "renders new portfolio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", portfolios_path, "post" do
      assert_select "input#portfolio_project_name[name=?]", "portfolio[project_name]"
      assert_select "input#portfolio_description[name=?]", "portfolio[description]"
      assert_select "input#portfolio_project_website[name=?]", "portfolio[project_website]"
    end
  end
end
