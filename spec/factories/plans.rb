# encoding: utf-8

FactoryGirl.define do

  factory :plan do 
    association :user
    association :task
    content "你idea很有意思，我来告诉你吧。"
  end

end
