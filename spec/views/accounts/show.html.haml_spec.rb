require 'spec_helper'

describe "accounts/show.html.haml" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :name => "Name",
      :description => "MyText",
      :owner_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
