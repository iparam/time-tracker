require 'spec_helper'

describe "clients/show.html.haml" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
      :name => "Name",
      :description => "MyText",
      :account_id => 1
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
