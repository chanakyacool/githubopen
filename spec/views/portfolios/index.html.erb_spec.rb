require 'spec_helper'

describe "portfolios/index" do
  before(:each) do
    assign(:portfolios, [
      stub_model(Portfolio,
        :project_name => "Project Name",
        :description => "Description",
        :project_website => "Project Website"
      ),
      stub_model(Portfolio,
        :project_name => "Project Name",
        :description => "Description",
        :project_website => "Project Website"
      )
    ])
  end

  it "renders a list of portfolios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Project Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Project Website".to_s, :count => 2
  end
end
