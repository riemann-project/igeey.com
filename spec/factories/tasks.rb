# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do 
    association :user
    venue_id 1
    title 'Test Title, La La la la la la laa la la alal al al la '
  end
end
