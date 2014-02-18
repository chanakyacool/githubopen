require 'spec_helper'

describe "clients/show" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
      :name => "Name",
      :email => "Email",
      :address1 => "Address1",
      :address2 => "Address2",
      :city => "City",
      :state => "State",
      :country => "Country",
      :zip => 1,
      :client_project => "Client Project",
      :project_description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Country/)
    rendered.should match(/1/)
    rendered.should match(/Client Project/)
    rendered.should match(/MyText/)
  end
end
