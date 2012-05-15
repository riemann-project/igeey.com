# encoding: utf-8

FactoryGirl.define do
  factory :solution do 
    association :user
    association :problem
    title "我的解决方案是..."
    content "我也不知道行不行，说出来仅大家参考吧。"
  end
end
