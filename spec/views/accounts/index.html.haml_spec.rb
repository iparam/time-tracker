require 'spec_helper'

describe "accounts/index.html.haml" do
  before(:each) do
    assign(:accounts, [
      stub_model(Account,
        :name => "Name",
        :description => "MyText",
        :owner_id => 1
      ),
      stub_model(Account,
        :name => "Name",
        :description => "MyText",
        :owner_id => 1
      )
    ])
  end

  it "renders a list of accounts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
