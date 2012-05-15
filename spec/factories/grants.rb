# encoding: utf-8

FactoryGirl.define do

  factory :grant do 
    unread false
    association :badge
    association :user
  end

end
