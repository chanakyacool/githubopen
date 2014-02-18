require 'spec_helper'

describe "portfolios/show" do
  before(:each) do
    @portfolio = assign(:portfolio, stub_model(Portfolio,
      :project_name => "Project Name",
      :description => "Description",
      :project_website => "Project Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Project Name/)
    rendered.should match(/Description/)
    rendered.should match(/Project Website/)
  end
end
