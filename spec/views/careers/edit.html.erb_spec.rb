require 'spec_helper'

describe "careers/edit" do
  before(:each) do
    @career = assign(:career, stub_model(Career,
      :job_name => "MyString",
      :description => "MyText",
      :how_to_apply => "MyText"
    ))
  end

  it "renders the edit career form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", career_path(@career), "post" do
      assert_select "input#career_job_name[name=?]", "career[job_name]"
      assert_select "textarea#career_description[name=?]", "career[description]"
      assert_select "textarea#career_how_to_apply[name=?]", "career[how_to_apply]"
    end
  end
end
