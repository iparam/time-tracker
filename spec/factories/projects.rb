# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    description "MyText"
    estimated_budget 1.5
    hourly_rate 1.5
    estimated_hour 1.5
    start_date "2011-11-25 19:14:26"
    end_date "2011-11-25 19:14:26"
    manager_id 1
  end
end
