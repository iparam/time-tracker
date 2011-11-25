# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    name "MyString"
    description "MyText"
    account_id 1
  end
end
