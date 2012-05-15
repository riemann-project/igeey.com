# encoding: utf-8

FactoryGirl.define do

  factory :saying do 
    association :user
    association :venue
    content "你的问题很有意思，我来告诉你吧。"
  end

end
