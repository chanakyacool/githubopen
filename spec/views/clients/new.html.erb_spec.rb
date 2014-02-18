require 'spec_helper'

describe "clients/new" do
  before(:each) do
    assign(:client, stub_model(Client,
      :name => "MyString",
      :email => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :zip => 1,
      :client_project => "MyString",
      :project_description => "MyText"
    ).as_new_record)
  end

  it "renders new client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clients_path, "post" do
      assert_select "input#client_name[name=?]", "client[name]"
      assert_select "input#client_email[name=?]", "client[email]"
      assert_select "input#client_address1[name=?]", "client[address1]"
      assert_select "input#client_address2[name=?]", "client[address2]"
      assert_select "input#client_city[name=?]", "client[city]"
      assert_select "input#client_state[name=?]", "client[state]"
      assert_select "input#client_country[name=?]", "client[country]"
      assert_select "input#client_zip[name=?]", "client[zip]"
      assert_select "input#client_client_project[name=?]", "client[client_project]"
      assert_select "textarea#client_project_description[name=?]", "client[project_description]"
    end
  end
end
