require 'spec_helper'

describe "accounts/edit.html.haml" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :name => "MyString",
      :description => "MyText",
      :owner_id => 1
    ))
  end

  it "renders the edit account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path(@account), :method => "post" do
      assert_select "input#account_name", :name => "account[name]"
      assert_select "textarea#account_description", :name => "account[description]"
      assert_select "input#account_owner_id", :name => "account[owner_id]"
    end
  end
end
