require 'spec_helper'

describe "careers/show" do
  before(:each) do
    @career = assign(:career, stub_model(Career,
      :job_name => "Job Name",
      :description => "MyText",
      :how_to_apply => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Job Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
