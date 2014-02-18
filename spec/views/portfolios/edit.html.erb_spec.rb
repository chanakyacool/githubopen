require 'spec_helper'

describe "portfolios/edit" do
  before(:each) do
    @portfolio = assign(:portfolio, stub_model(Portfolio,
      :project_name => "MyString",
      :description => "MyString",
      :project_website => "MyString"
    ))
  end

  it "renders the edit portfolio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", portfolio_path(@portfolio), "post" do
      assert_select "input#portfolio_project_name[name=?]", "portfolio[project_name]"
      assert_select "input#portfolio_description[name=?]", "portfolio[description]"
      assert_select "input#portfolio_project_website[name=?]", "portfolio[project_website]"
    end
  end
end
