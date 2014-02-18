require 'spec_helper'

describe "partners/new" do
  before(:each) do
    assign(:partner, stub_model(Partner,
      :partner_name => "MyString",
      :website => "MyString"
    ).as_new_record)
  end

  it "renders new partner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", partners_path, "post" do
      assert_select "input#partner_partner_name[name=?]", "partner[partner_name]"
      assert_select "input#partner_website[name=?]", "partner[website]"
    end
  end
end
