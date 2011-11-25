require 'spec_helper'

describe "accounts/new.html.haml" do
  before(:each) do
    assign(:account, stub_model(Account,
      :name => "MyString",
      :description => "MyText",
      :owner_id => 1
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path, :method => "post" do
      assert_select "input#account_name", :name => "account[name]"
      assert_select "textarea#account_description", :name => "account[description]"
      assert_select "input#account_owner_id", :name => "account[owner_id]"
    end
  end
end
