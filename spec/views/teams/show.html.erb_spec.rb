require 'spec_helper'

describe "teams/show" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :name => "Name",
      :desgination => "Desgination",
      :email => "Email",
      :facebook_url => "Facebook Url",
      :github_id => "Github",
      :personal_website => "Personal Website",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Desgination/)
    rendered.should match(/Email/)
    rendered.should match(/Facebook Url/)
    rendered.should match(/Github/)
    rendered.should match(/Personal Website/)
    rendered.should match(/MyText/)
  end
end
